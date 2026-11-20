library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.lcd_display_type_package.all;

entity lcd is
    generic(ADDRESS : std_logic_vector(3 downto 0));
    port(clk : in std_logic;
         n_reset : in std_logic;
         
         LCD_RS, LCD_EN, LCD_RW, LCD_ON : out std_logic;
         LCD_DATA : inout std_logic_vector(7 downto 0);
         
         packet_address : in  std_logic_vector(3 downto 0);
         packet_ready   : in  std_logic;
         packet_data    : in  std_logic_vector(7 downto 0);
         packet_source  : in  std_logic_vector(47 downto 0);
         packet_dest    : in  std_logic_vector(47 downto 0);
         
         lcd_reset : in std_logic);
end entity;

architecture rtl of lcd is

    signal LCD_display_string : lcd_display_t := (others => (others => '0'));
    signal counter : integer range 0 to 63 := 0;

begin
    LCD_ON <= '1';

    lcdentity: entity work.LCD_Display
        port map(clk_48Mhz => clk,
                 reset => lcd_reset,
                 LCD_RS => LCD_RS,
                 LCD_E => LCD_EN,
                 LCD_RW => LCD_RW,
                 DATA_BUS => LCD_DATA,
                 LCD_display_string => LCD_display_string);

    process(clk)
    begin
        if rising_edge(clk) then
            if n_reset = '0' then
                counter <= 0;
                LCD_display_string <= (others => (others => '0'));
            elsif packet_ready = '1' and packet_address = ADDRESS then
                counter <= counter + 1;
                LCD_display_string(counter) <= packet_data;
            else
                counter <= 0;
            end if;
        end if;
    end process;

end architecture;