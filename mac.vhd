library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac is
    port(-- MDC     : out   std_logic;
         -- MDIO    : inout std_logic;
         
         -- RST_N   : out  std_logic;
         
         -- RX_COL  : in  std_logic;
         -- RX_CRS  : in  std_logic;
         RX_CLK  : in  std_logic;
         RX_DATA : in  std_logic_vector(3 downto 0);
         RX_DV   : in  std_logic;
         RX_ER   : in  std_logic;
         
         -- TX_CLK  : in  std_logic;
         -- TX_DATA : out std_logic_vector(3 downto 0);
         -- TX_EN   : out std_logic;
         -- TX_ER   : out std_logic;
         
         buffer_read_clk          : in  std_logic;
         buffer_read_data         : out std_logic_vector(7 downto 0);
         buffer_read_en           : in  std_logic;
         buffer_read_available    : out std_logic);
end entity;

architecture rtl of mac is
    signal write_clk     : std_logic;
    signal write_en      : std_logic;
    signal write_data    : std_logic_vector(7 downto 0) := (others => '0');
    signal mac_address   : std_logic_vector(47 downto 0) := x"112233445566";
    signal write_corrupt : std_logic := '0';
begin
    
    rx_ram: entity work.async_read_write_ring_buffer
        generic map(DATA_WIDTH => 8,
                    NUM_DATA   => 2**12)
        port map (read_clk       => buffer_read_clk,
                  read_en        => buffer_read_en,
                  read_data      => buffer_read_data,
                  read_available => buffer_read_available,
                  write_clk      => write_clk,
                  write_en       => write_en,
                  write_data     => write_data,
                  write_corrupt  => write_corrupt);
    
    receiver: entity work.mac_receiver
        port map(RX_CLK        => RX_CLK,
                 RX_DATA       => RX_DATA,
                 RX_DV         => RX_DV,
                 RX_ER         => RX_ER,
                 write_clk     => write_clk,
                 write_en      => write_en,
                 write_data    => write_data,
                 write_corrupt => write_corrupt,
                 mac_address   => mac_address);
end architecture;
