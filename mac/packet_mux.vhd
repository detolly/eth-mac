library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity packet_mux is
    port(n_reset           : in  std_logic;

         read_clk          : in  std_logic;
         read_en           : out std_logic;
         read_data         : in  std_logic_vector(7 downto 0);
         read_available    : in  std_logic;

         packet_ready      : out std_logic;
         packet_address    : out std_logic_vector(7 downto 0);
         packet_data       : out std_logic_vector(7 downto 0));
end entity;

architecture rtl of packet_mux is

type read_state_t is (IDLE, WAIT_FOR_READ, MAC_DESTINATION, MAC_SOURCE, PAYLOAD_LENGTH, PACKET_ADDR, PACKET_BYTES);
signal read_state : read_state_t := IDLE;

signal counter : integer range 0 to 2**11 - 1 := 0;
signal payload_len : integer range 0 to 2**11 - 1 := 0;
signal previous_payload_byte : std_logic_vector(7 downto 0) := (others => '0');

begin
    reader: process(read_clk)
        procedure reset is
        begin
            packet_ready <= '0';
            counter <= 0;
            packet_data <= (others => '0');
            packet_address <= (others => '0');
            payload_len <= 0;
            previous_payload_byte <= (others => '0');
            read_state <= IDLE;
            read_en <= '0';
        end procedure;
    begin
        if rising_edge(read_clk) then
            if n_reset = '0' then
                reset;
            else
                packet_ready <= '0';

                case read_state is
                when IDLE =>
                    reset;
                    if read_available = '1' then
                        read_state <= WAIT_FOR_READ;
                        read_en <= '1';
                    end if;
                when WAIT_FOR_READ =>
                    read_state <= MAC_DESTINATION;
                when MAC_DESTINATION =>
                    counter <= counter + 1;
                    if counter = 5 then
                        counter <= 0;
                        read_state <= MAC_SOURCE;
                    end if;
                when MAC_SOURCE =>
                    counter <= counter + 1;
                    if counter = 5 then
                        counter <= 0;
                        read_state <= PAYLOAD_LENGTH;
                    end if;
                when PAYLOAD_LENGTH =>
                    counter <= counter + 1;
                    if counter = 0 then
                        previous_payload_byte <= read_data;
                    else
                        counter <= 0;
                        payload_len <= to_integer(unsigned(previous_payload_byte & read_data)) - 1;
                        read_state <= PACKET_ADDR;
                    end if;
                when PACKET_ADDR =>
                    packet_address <= read_data;
                    read_state <= PACKET_BYTES;
                    payload_len <= payload_len - 1;
                when PACKET_BYTES =>
                    packet_ready <= '1';
                    packet_data <= read_data;
                    if payload_len = 0 then
                        read_state <= IDLE;
                        read_en <= '0';
                    else
                        payload_len <= payload_len - 1;
                    end if;
                end case;
            end if;
        end if;
    end process;
end architecture;