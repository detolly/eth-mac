library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac is
    port(n_reset : in std_logic;
         clk     : in std_logic;

         -- MDC     : out   std_logic;
         -- MDIO    : inout std_logic;

         RST_N   : out std_logic;

         -- RX_COL  : in  std_logic;
         -- RX_CRS  : in  std_logic;
         RX_CLK  : in  std_logic;
         RX_DATA : in  std_logic_vector(3 downto 0);
         RX_DV   : in  std_logic;
         RX_ER   : in  std_logic;

         TX_CLK  : in  std_logic;
         TX_DATA : out std_logic_vector(3 downto 0);
         TX_EN   : out std_logic;
         TX_ER   : out std_logic;

         buffer_read_data         : out std_logic_vector(7 downto 0);
         buffer_read_en           : in  std_logic;
         buffer_read_available    : out std_logic;
         
         buffer_write_en          : in  std_logic;
         buffer_write_data        : in  std_logic_vector(7 downto 0);
         buffer_write_transaction : in  std_logic;
         buffer_write_discard     : in  std_logic);
end entity;

architecture rtl of mac is
    constant mac_address           : std_logic_vector(47 downto 0) := x"112233445566";
    signal connected_mac_address   : std_logic_vector(47 downto 0);
begin
    RST_N <= n_reset;
    
    transmitter: entity work.mac_transmitter
        port map(n_reset               => n_reset,
                 clk                   => clk,
                 
                 TX_CLK                => TX_CLK,
                 TX_DATA               => TX_DATA,
                 TX_EN                 => TX_EN,
                 TX_ER                 => TX_ER,

                 write_en              => buffer_write_en,
                 write_data            => buffer_write_data,
                 write_transaction     => buffer_write_transaction,
                 write_discard         => buffer_write_discard);

    receiver: entity work.mac_receiver
        port map(n_reset               => n_reset,
                 clk                   => clk,

                 RX_CLK                => RX_CLK,
                 RX_DATA               => RX_DATA,
                 RX_DV                 => RX_DV,
                 RX_ER                 => RX_ER,

                 buffer_read_en        => buffer_read_en,
                 buffer_read_data      => buffer_read_data,
                 buffer_read_available => buffer_read_available,

                 mac_address           => mac_address,
                 connected_mac_address => connected_mac_address);
end architecture;
