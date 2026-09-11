library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity async_read_write_ring_buffer is
    generic(DATA_WIDTH : positive;
            NUM_DATA   : positive);
            
    port(read_clk  : in std_logic;
         read_en   : in std_logic;
         read_data : out std_logic_vector(DATA_WIDTH - 1 downto 0);
         
         write_clk  : in std_logic;
         write_en   : in std_logic;
         write_data : in std_logic_vector(DATA_WIDTH - 1 downto 0));
end entity;

architecture rtl of async_read_write_ring_buffer is
    type buffer_t is array (0 to NUM_DATA - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);

    signal ram : buffer_t := (others => (others => '0'));
    
    signal read_addr  : integer range 0 to NUM_DATA := 0;
    signal write_addr : integer range 0 to NUM_DATA := 0;
    
    attribute ramstyle : string;
    attribute ramstyle of ram : signal is "M9K";
begin

    reader: process(read_clk) is
    begin
        if rising_edge(read_clk) then
            if read_en = '1' then
                read_data <= ram(read_addr);
                
                if read_addr = NUM_DATA - 1 then
                    read_addr <= 0;
                else
                    read_addr <= read_addr + 1;
                end if;
            else
                read_data <= (others => '0');
            end if;
        end if;
    end process;
    
    writer: process(write_clk) is
    begin
        if rising_edge(write_clk) then
            if write_en = '1' then
                ram(write_addr) <= write_data;
                
                if write_addr = NUM_DATA - 1 then
                    write_addr <= 0;
                else
                    write_addr <= write_addr + 1;
                end if;
            end if;
        end if;
    end process;

end;
