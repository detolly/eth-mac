library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_mux is
    generic(mac_address : std_logic_vector(47 downto 0));
    port(n_reset : in std_logic;
         clk     : in std_logic;
         
         is_handling_request : out std_logic;
         
         request_0  : in std_logic;
         request_1  : in std_logic;
         request_2  : in std_logic;
         request_3  : in std_logic;
         request_4  : in std_logic;
         request_5  : in std_logic;
         request_6  : in std_logic;
         request_7  : in std_logic;
         request_8  : in std_logic;
         request_9  : in std_logic;
         request_10 : in std_logic;
         request_11 : in std_logic;
         request_12 : in std_logic;
         request_13 : in std_logic;
         request_14 : in std_logic;
         request_15 : in std_logic;
         address_writing : buffer std_logic_vector(3 downto 0);

         destination_mac    : in  std_logic_vector(47 downto 0);
         payload_byte       : in  std_logic_vector(7 downto 0);
         payload_ready      : out std_logic;
         payload_done       : in  std_logic;

         write_data         : out std_logic_vector(7 downto 0);
         write_enable       : out std_logic;
         write_transaction  : out std_logic;
         write_discard      : out std_logic);
end entity;

architecture rtl of eth_mux is
    type writer_state is (WAITING_FOR_REQUEST, SMALL_PAUSE, WRITING_MAC_DEST, WRITING_MAC_SOURCE, SMALL_PAUSE_TWO, WRITING_PAYLOAD, RELEASE);
    signal state : writer_state := WAITING_FOR_REQUEST;
    
    signal counter : integer range 0 to 2**16-1 := 0;
    
    signal need_rest_count : std_logic := '0';
begin

    writer: process(clk)
        variable found_request : std_logic := '0';
    begin
        if rising_edge(clk) then
            if n_reset = '0' then
                state <= WAITING_FOR_REQUEST;
                address_writing <= (others => '0');
                write_enable <= '0';
                counter <= 0;
                write_transaction <= '0';
                write_discard <= '0';
                write_data <= (others => '0');
                need_rest_count <= '0';
                is_handling_request <= '0';
                payload_ready <= '0';
            else
                case state is
                when WAITING_FOR_REQUEST =>
                    if    request_0  = '1' then address_writing <= "0000"; found_request := '1';
                    elsif request_1  = '1' then address_writing <= "0001"; found_request := '1';
                    elsif request_2  = '1' then address_writing <= "0010"; found_request := '1';
                    elsif request_3  = '1' then address_writing <= "0011"; found_request := '1';
                    elsif request_4  = '1' then address_writing <= "0100"; found_request := '1';
                    elsif request_5  = '1' then address_writing <= "0101"; found_request := '1';
                    elsif request_6  = '1' then address_writing <= "0110"; found_request := '1';
                    elsif request_7  = '1' then address_writing <= "0111"; found_request := '1';
                    elsif request_8  = '1' then address_writing <= "1000"; found_request := '1';
                    elsif request_9  = '1' then address_writing <= "1001"; found_request := '1';
                    elsif request_10 = '1' then address_writing <= "1010"; found_request := '1';
                    elsif request_11 = '1' then address_writing <= "1011"; found_request := '1';
                    elsif request_12 = '1' then address_writing <= "1100"; found_request := '1';
                    elsif request_13 = '1' then address_writing <= "1101"; found_request := '1';
                    elsif request_14 = '1' then address_writing <= "1110"; found_request := '1';
                    elsif request_15 = '1' then address_writing <= "1111"; found_request := '1';
                    end if;

                    if found_request = '1' then
                        is_handling_request <= '1';
                        state <= SMALL_PAUSE;
                        found_request := '0';
                        counter <= 0;
                    end if;
                when SMALL_PAUSE =>
                    state <= WRITING_MAC_DEST;
                when WRITING_MAC_DEST =>
                    write_enable <= '1';
                    write_transaction <= '1';
                    write_discard <= '0';
                    
                    counter <= counter + 1;
                    if    counter = 0 then write_data <= destination_mac(47 downto 40);
                    elsif counter = 1 then write_data <= destination_mac(39 downto 32);
                    elsif counter = 2 then write_data <= destination_mac(31 downto 24);
                    elsif counter = 3 then write_data <= destination_mac(23 downto 16);
                    elsif counter = 4 then write_data <= destination_mac(15 downto 8);
                    elsif counter = 5 then
                        write_data <= destination_mac(7 downto 0);
                        state <= WRITING_MAC_SOURCE;
                        counter <= 0;
                    end if;
                when WRITING_MAC_SOURCE =>
                    write_enable <= '1';
                    write_transaction <= '1';
                    write_discard <= '0';
                    
                    counter <= counter + 1;
                    if    counter = 0 then write_data <= mac_address(47 downto 40);
                    elsif counter = 1 then write_data <= mac_address(39 downto 32);
                    elsif counter = 2 then write_data <= mac_address(31 downto 24);
                    elsif counter = 3 then write_data <= mac_address(23 downto 16);
                    elsif counter = 4 then write_data <= mac_address(15 downto 8);
                    elsif counter = 5 then 
                        write_data <= mac_address(7 downto 0);
                        state <= SMALL_PAUSE_TWO;
                        counter <= 0;
                        payload_ready <= '1';
                    end if;
                when SMALL_PAUSE_TWO =>
                    write_enable <= '0';
                    write_transaction <= '1';
                    write_discard <= '0';
                    payload_ready <= '1';
                    
                    write_data <= (others => 'Z');
                    
                    state <= WRITING_PAYLOAD;
                when WRITING_PAYLOAD =>
                    write_enable <= '1';
                    write_transaction <= '1';
                    write_discard <= '0';

                    write_data <= payload_byte;

                    if payload_done = '1' then
                        state <= RELEASE;
                    end if;
                when RELEASE =>
                    write_enable <= '0';
                    write_transaction <= '0';
                    write_discard <= '0';
                    payload_ready <= '0';
                    
                    is_handling_request <= '0';
                    counter <= 0;
                    address_writing <= (others => '0');
                    state <= WAITING_FOR_REQUEST;
                end case;
            end if;
        end if;
    end process;

end architecture;