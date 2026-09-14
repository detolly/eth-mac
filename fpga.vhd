library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpga is
    port(SW            : in  std_logic_vector(0 downto 0);
         LEDR          : out std_logic_vector(0 downto 0);
         HEX0          : out std_logic_vector(6 downto 0);

         -- CLOCK_50      : in std_logic;

         -- ENET0_MDC     : out   std_logic;
         -- ENET0_MDIO    : inout std_logic;

         ENET0_RST_N   : out std_logic;

         ENET0_RX_CLK  : in  std_logic;
         -- ENET0_RX_COL  : in  std_logic;
         -- ENET0_RX_CRS  : in  std_logic;
         ENET0_RX_DATA : in  std_logic_vector(3 downto 0);
         ENET0_RX_DV   : in  std_logic;
         ENET0_RX_ER   : in  std_logic

         -- ENET0_TX_CLK  : in  std_logic;
         -- ENET0_TX_DATA : out std_logic_vector(3 downto 0);
         -- ENET0_TX_EN   : out std_logic;
         -- ENET0_TX_ER   : out std_logic
         );
end entity;

architecture rtl of fpga is
    signal read_clock : std_logic := '0';
    signal read_available : std_logic := '0';
    signal read_enable : std_logic := '0';
    signal read_data : std_logic_vector(7 downto 0) := (others => '0');

    signal packet_ready : std_logic := '0';
    signal packet_address : std_logic_vector(7 downto 0) := (others => '0');
    signal packet_data : std_logic_vector(7 downto 0) := (others => '0');
    
    signal n_reset : std_logic;
begin
    n_reset <= SW(0);
    
    ENET0_RST_N <= n_reset;
    LEDR(0) <= n_reset;

    read_clock <= ENET0_RX_CLK; -- CLOCK_50

    ss: entity work.seven_segment
        generic map(ADDRESS => "00000001")
        port map(n_reset        => n_reset,

                 read_clock     => read_clock,

                 packet_address => packet_address,
                 packet_ready   => packet_ready,
                 packet_data    => packet_data,

                 hex            => HEX0);

    mux: entity work.packet_mux
        port map(n_reset         => n_reset,

                 read_clk        => read_clock,
                 read_en         => read_enable,
                 read_data       => read_data,
                 read_available  => read_available,

                 packet_ready    => packet_ready,
                 packet_address  => packet_address,
                 packet_data     => packet_data);

    mac0: entity work.mac
        port map (n_reset => n_reset,

                  -- MDC     : out   std_logic;
                  -- MDIO    : inout std_logic;

                  -- RST_N   : out  std_logic;

                  RX_CLK  =>  ENET0_RX_CLK,
                  -- RX_COL  : in  std_logic;
                  -- RX_CRS  : in  std_logic;
                  RX_DATA => ENET0_RX_DATA,
                  RX_DV   => ENET0_RX_DV,
                  RX_ER   => ENET0_RX_ER,

                  -- TX_CLK  : in  std_logic;
                  -- TX_DATA : out std_logic_vector(3 downto 0);
                  -- TX_EN   : out std_logic;
                  -- TX_ER   : out std_logic;

                 buffer_read_clk => read_clock,
                 buffer_read_data => read_data,
                 buffer_read_en => read_enable,
                 buffer_read_available => read_available);

end architecture;
