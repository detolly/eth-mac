library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpga is
    port(SW            : in  std_logic_vector(2 downto 0);
         LEDR          : out std_logic_vector(2 downto 0);
    
         ENET0_MDC     : out   std_logic;
         ENET0_MDIO    : inout std_logic;
         
         ENET0_RST_N   : out std_logic;
         
         ENET0_RX_CLK  : in  std_logic;
         ENET0_RX_COL  : in  std_logic;
         ENET0_RX_CRS  : in  std_logic;
         ENET0_RX_DATA : in  std_logic_vector(3 downto 0);
         ENET0_RX_DV   : in  std_logic;
         ENET0_RX_ER   : in  std_logic;
         
         ENET0_TX_CLK  : in  std_logic;
         ENET0_TX_DATA : out std_logic_vector(3 downto 0);
         ENET0_TX_EN   : out std_logic;
         ENET0_TX_ER   : out std_logic);
end entity;

architecture rtl of fpga is
	signal a, c : std_logic := '0';
	signal b : std_logic_vector(7 downto 0) := (others => '0');
begin

    ENET0_RST_N <= SW(1);
    LEDR(1) <= SW(1);

    mac0: entity work.mac
        port map ( -- MDC     : out   std_logic;
                  -- MDIO    : inout std_logic;
                 
                  -- RST_N   : out  std_logic;
                 
                  RX_CLK =>  ENET0_RX_CLK,
                  -- RX_COL  : in  std_logic;
                  -- RX_CRS  : in  std_logic;
                  RX_DATA => ENET0_RX_DATA,
                  RX_DV => 	 ENET0_RX_DV,
                  RX_ER => 	 ENET0_RX_ER,
                 
                  -- TX_CLK  : in  std_logic;
                  -- TX_DATA : out std_logic_vector(3 downto 0);
                  -- TX_EN   : out std_logic;
                  -- TX_ER   : out std_logic;
                 
                 buffer_read_clk => a,
                 buffer_read_data => b,
                 buffer_read_en => c);

end architecture;
