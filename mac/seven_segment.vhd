library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_segment is
    generic (ADDRESS    : std_logic_vector(3 downto 0));
    
    port(n_reset        : in  std_logic;

         read_clock     : in  std_logic;

         packet_address : in  std_logic_vector(3 downto 0);
         packet_ready   : in  std_logic;
         packet_data    : in  std_logic_vector(7 downto 0);
         packet_source  : in  std_logic_vector(47 downto 0);
         packet_dest    : in  std_logic_vector(47 downto 0);
         
         request_write   : out std_logic;
         address_writing : in  std_logic_vector(3 downto 0);
         payload_byte    : out std_logic_vector(7 downto 0);
         payload_ready   : in  std_logic;
         payload_done    : out std_logic;
         destination_mac : out std_logic_vector(47 downto 0);

         hex            : out std_logic_vector(6 downto 0));
end entity;

architecture rtl of seven_segment is

type sending_state is (NOTHING_TO_SEND, REQUESTING, WAIT_FOR_PAYLOAD_READY, PAYLOAD);
signal state : sending_state := NOTHING_TO_SEND;

signal stored_packet_source : std_logic_vector(47 downto 0) := (others => '0');
signal counter : integer range 0 to 31 := 0;

begin
    updater: process(read_clock)
    begin
        if rising_edge(read_clock) then
            if n_reset = '0' then
                hex <= (others => '0');
                stored_packet_source <= (others => '0');
            elsif packet_address = ADDRESS and packet_ready = '1' then
                stored_packet_source <= packet_source;
                hex <= packet_data(6 downto 0);
                state <= REQUESTING;
            end if;
            
            case state is
            when NOTHING_TO_SEND =>
                destination_mac <= (others => 'Z');
                payload_done <= 'Z';
                payload_byte <= (others => 'Z');
                request_write <= '0';
            when REQUESTING =>
                destination_mac <= (others => 'Z');
                payload_done <= 'Z';
                payload_byte <= (others => 'Z');
                request_write <= '1';
                if address_writing = ADDRESS then
                    state <= WAIT_FOR_PAYLOAD_READY;
                    destination_mac <= stored_packet_source;
                    request_write <= '0';
                end if;
            when WAIT_FOR_PAYLOAD_READY =>
                if payload_ready = '1' then
                    state <= PAYLOAD;
                end if;
            when PAYLOAD =>
                counter <= counter + 1;
                if    counter = 0 then payload_byte <= "00000000";
                elsif counter = 1 then payload_byte <= "00000001";
                elsif counter = 2 then payload_byte <= "10101010"; payload_done <= '1'; state <= NOTHING_TO_SEND; counter <= 0;
                end if;
            end case;
        end if;
    end process;
end architecture;