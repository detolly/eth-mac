library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_segment is
    generic (ADDRESS    : std_logic_vector(7 downto 0));
    
    port(read_clock     : in  std_logic;
    
         packet_address : in  std_logic_vector(7 downto 0);
         packet_ready   : in  std_logic;
         packet_data    : in  std_logic_vector(7 downto 0);
         packet_done    : out std_logic;
         
         hex            : out std_logic_vector(6 downto 0));
end entity;

architecture rtl of seven_segment is

begin

    updater: process(read_clock)
    begin
        if rising_edge(read_clock) then
            if packet_address = ADDRESS and packet_ready = '1' then
                hex <= packet_data(6 downto 0);
                packet_done <= '1';
            end if;
        end if;
    end process;

end architecture;