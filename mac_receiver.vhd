library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_receiver is
    port(n_reset : in std_logic;

         -- RX_COL  : in  std_logic;
         -- RX_CRS  : in  std_logic;
         RX_CLK  : in  std_logic;
         RX_DATA : in  std_logic_vector(3 downto 0);
         RX_DV   : in  std_logic;
         RX_ER   : in  std_logic;

         buffer_read_clk          : in  std_logic;
         buffer_read_data         : out std_logic_vector(7 downto 0);
         buffer_read_en           : in  std_logic;
         buffer_read_available    : out std_logic;

         mac_address            : in  std_logic_vector(47 downto 0);
         connected_mac_address  : out std_logic_vector(47 downto 0));
end entity;

architecture rtl of mac_receiver is
    -- mac / frame state
    type receive_state is (PREAMBLE_SFD, FIRST, SECOND);
    type frame_state is (MAC_DESTINATION, MAC_SOURCE, LEN, PAYLOAD, CRC);
    signal current_receive_state : receive_state := PREAMBLE_SFD;
    signal current_frame_state : frame_state := MAC_DESTINATION;

    signal counter : integer range 0 to 2**11-1 := 0;
    signal payload_length : integer range 0 to 2**11-1 := 0;
    signal payload_length_first_byte : std_logic_vector(7 downto 0) := (others => '0');

    -- ram related
    signal byte_ready   : std_logic := '0';
    signal current_byte : std_logic_vector(7 downto 0) := (others => '0');

    signal write_enable      : std_logic := '0';
    signal write_discard     : std_logic := '0';
    signal write_transaction : std_logic := '0';

    signal frame_corrupt     : std_logic := '0';
    signal drop_frame        : std_logic := '0';
begin
    write_enable <= byte_ready;
    write_discard <= '1' when drop_frame = '1' or frame_corrupt = '1' else '0';
    write_transaction  <= '0' when current_receive_state = PREAMBLE_SFD or current_frame_state = CRC or RX_DV = '0' else '1';

    rx_ram: entity work.async_read_write_ring_buffer
        generic map(DATA_WIDTH => 8,
                    NUM_DATA   => 2**12)
        port map (n_reset        => n_reset,

                  read_clk          => buffer_read_clk,
                  read_en           => buffer_read_en,
                  read_data         => buffer_read_data,
                  read_available    => buffer_read_available,

                  write_clk         => RX_CLK,
                  write_transaction => write_transaction,
                  write_en          => write_enable,
                  write_data        => current_byte,
                  write_discard     => write_discard);

    receiver: process(RX_CLK)
        procedure soft_reset is
        begin
            frame_corrupt <= '0';
            drop_frame <= '0';
            current_receive_state <= PREAMBLE_SFD;
            current_frame_state <= MAC_DESTINATION;
            payload_length <= 0;
            payload_length_first_byte <= (others => '0');
            current_byte <= (others => '0');
            counter <= 0;
            byte_ready <= '0';
        end procedure;

        procedure hard_reset is
        begin
            connected_mac_address <= (others => '0');
            soft_reset;
        end procedure;
    begin
        if rising_edge(RX_CLK) then
            if n_reset = '0' then
                hard_reset;
            else                
                if RX_DV = '0' then
                    soft_reset;
                else
                    byte_ready <= '0';

                    if payload_length > 1500 then drop_frame <= '1'; else drop_frame <= '0'; end if;
                    frame_corrupt <= RX_ER;

                    case current_receive_state is
                    when PREAMBLE_SFD =>
                        if RX_DATA = "1011" then
                            current_receive_state <= FIRST;
                        end if;
                    when FIRST =>
                        byte_ready <= '0';

                        current_byte(7 downto 4) <= RX_DATA;
                        current_receive_state <= SECOND;
                    when SECOND =>
                        current_byte(3 downto 0) <= RX_DATA;
                        current_receive_state <= FIRST;

                        byte_ready <= '1';
                    end case;

                    if byte_ready = '1' then
                        case current_frame_state is
                        when MAC_DESTINATION =>
                            if counter = 5 then
                                counter <= 0;
                                current_frame_state <= MAC_SOURCE;
                            else
                                counter <= counter + 1;
                            end if;
                        when MAC_SOURCE =>
                            if counter = 5 then
                                counter <= 0;
                                current_frame_state <= LEN;
                            else
                                counter <= counter + 1;
                            end if;
                        when LEN =>
                            if counter = 0 then
                                payload_length_first_byte <= current_byte;
                                counter <= counter + 1;
                            else
                                payload_length <= to_integer(unsigned(payload_length_first_byte & current_byte));
                                counter <= 0;
                                current_frame_state <= PAYLOAD;
                            end if;
                        when PAYLOAD =>
                            if counter = payload_length - 1 then
                                counter <= 0;
                                current_frame_state <= CRC;
                            else
                                counter <= counter + 1;
                            end if;
                        when CRC =>
                            if counter = 3 then
                                counter <= 0;
                            else
                                counter <= counter + 1;
                            end if;
                        end case;
                    end if;
                end if;
            end if;
        end if;
    end process;
end architecture;
