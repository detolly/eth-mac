library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_transmitter is
    port(n_reset : in std_logic;
         clk     : in std_logic;

         TX_CLK  : in  std_logic;
         TX_DATA : out std_logic_vector(3 downto 0);
         TX_EN   : out std_logic;
         TX_ER   : out std_logic;

         write_en          : in  std_logic;
         write_data        : in  std_logic_vector(7 downto 0);
         write_transaction : in  std_logic;
         write_discard     : in  std_logic);
end entity;

architecture rtl of mac_transmitter is
    signal read_data      : std_logic_vector(7 downto 0) := (others => '0');
    signal read_enable    : std_logic := '0';
    signal read_available : std_logic;
    
    signal counter : integer range 0 to 31 := 0;
    
    signal frame_counter : integer range 0 to 2**16-1;
    
    signal byte : std_logic_vector(7 downto 0);
    
    type tx_byte_state is (WAIT_FOR_READ, FIRST, SECOND, REST, CRC, IFG);
    type tx_frame_state is (MAC_DEST, MAC_SOURCE, PAYLOAD_LEN, PAYLOAD);
    
    signal byte_state : tx_byte_state := WAIT_FOR_READ;
    signal frame_state : tx_frame_state := MAC_DEST;
    
    signal inferred_payload_length : std_logic_vector(15 downto 0);
begin
    TX_ER <= '0';

    tx_ram: entity work.async_read_write_ring_buffer
        generic map(DATA_WIDTH => 8,
                    NUM_DATA   => 2**12)
        port map(n_reset           => n_reset,

                 read_clk          => TX_CLK,
                 read_en           => read_enable,
                 read_data         => read_data,
                 read_available    => read_available,

                 write_clk         => clk,
                 write_en          => write_en,
                 write_transaction => write_transaction,
                 write_data        => write_data,
                 write_discard     => write_discard);

    read_enable <= '1' when byte_state = WAIT_FOR_READ or byte_state = SECOND else '0';

    writer: process(TX_CLK)
        variable payload_length : integer range 0 to 2**16-1 := 0;
        variable has_rest : std_logic := '0';
    begin
        if rising_edge(TX_CLK) then
            if n_reset = '0' then
                byte_state <= WAIT_FOR_READ;
                frame_state <= MAC_DEST;
                counter <= 0;
                byte <= (others => '0');
                frame_counter <= 0;
                inferred_payload_length <= (others => '0');
                has_rest := '0';
                payload_length := 0;
                TX_DATA <= (others => '0');
                TX_EN <= '0';
            else
                case byte_state is
                when WAIT_FOR_READ =>
                    if read_available = '1' then
                        byte_state <= FIRST;
                        frame_counter <= 0;
                    end if;
                when FIRST =>
                    TX_EN <= '1';

                    byte <= read_data;
                    TX_DATA <= read_data(3 downto 0);
                    byte_state <= SECOND;
                when SECOND =>
                    TX_EN <= '1';

                    TX_DATA <= byte(7 downto 4);
                    byte_state <= FIRST;
                    case frame_state is
                    when MAC_DEST =>
                        frame_counter <= frame_counter + 1;
                        if frame_counter = 5 then
                            frame_state <= MAC_SOURCE;
                            frame_counter <= 0;
                        end if;
                    when MAC_SOURCE =>
                        frame_counter <= frame_counter + 1;
                        if frame_counter = 5 then
                            frame_state <= PAYLOAD_LEN;
                            frame_counter <= 0;
                        end if;
                    when PAYLOAD_LEN =>
                        frame_counter <= frame_counter + 1;
                        if frame_counter = 0 then inferred_payload_length(15 downto 8) <= byte;
                        elsif frame_counter = 1 then 
                            inferred_payload_length(7 downto 0) <= byte;
                            frame_state <= PAYLOAD;
                            payload_length := to_integer(unsigned(inferred_payload_length(15 downto 8) & byte));
                            frame_counter <= payload_length - 1;
                            if payload_length < 46 then
                                has_rest := '1';
                            end if;
                        end if;
                    when PAYLOAD =>
                        if frame_counter = 0 then
                            if has_rest = '1' then
                                frame_counter <= (45 - payload_length) + (45 - payload_length);
                                byte_state <= REST;
                            else
                                byte_state <= CRC;
                            end if;
                        else
                            frame_counter <= frame_counter - 1;
                        end if;
                    end case;
                when REST =>
                    TX_DATA <= (others => '0');
                    if frame_counter = 0 then
                        byte_state <= CRC;
                        counter <= 0;
                    else
                        frame_counter <= frame_counter - 1;
                    end if;
                when CRC =>
                    counter <= counter + 1;
                    if counter = 7 then
                        byte_state <= IFG;
                        counter <= 23;
                    end if;
                when IFG =>
                    TX_EN <= '0';
                    if counter = 0 then
                        byte_state <= WAIT_FOR_READ;
                    else
                        counter <= counter - 1;
                    end if;
                end case;
            end if;
        end if;
    end process;

end architecture;