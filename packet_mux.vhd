library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity packet_mux is
    port(read_clk          : in  std_logic;
         read_en           : out std_logic;
         read_data         : in  std_logic_vector(7 downto 0);
         read_available    : in  std_logic;
         
         packet_ready      : out std_logic;
         packet_address    : out std_logic_vector(7 downto 0);
         packet_data       : out std_logic_vector(7 downto 0));
end entity;

architecture rtl of packet_mux is

type read_state_t is (WAIT_FOR_READ, MAC_DESTINATION, MAC_SOURCE, PAYLOAD_LENGTH, PACKET_ADDR, PACKET_BYTES);
signal read_state : read_state_t := WAIT_FOR_READ;

signal counter : integer range 0 to 4096 - 1 := 0;
signal payload_len : integer range 0 to 2**16 - 1 := 0;
signal previous_payload_byte : std_logic_vector(7 downto 0) := (others => '0');

begin
    read_en <= '1' when read_available = '1' else '0';
    packet_data <= read_data;

    reader: process(read_clk)
    begin
        if rising_edge(read_clk) then
            packet_ready <= '0';

            if read_available = '0' then
                read_state <= WAIT_FOR_READ;
            else
                case read_state is
                when WAIT_FOR_READ =>
                    if read_available = '1' then
                        read_state <= MAC_DESTINATION;
                    end if;
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
                    counter <= 1;
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
                    packet_ready <= '1';
                when PACKET_BYTES =>
                    packet_ready <= '1';
                    if payload_len = 1 then
                        packet_ready <= '0';
                        packet_address <= (others => '0');
                        read_state <= MAC_DESTINATION;
                    else
                        payload_len <= payload_len - 1;
                    end if;
                end case;
            end if;
        end if;
    end process;
end architecture;