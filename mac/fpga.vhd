library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpga is
    port(SW            : in  std_logic_vector(1 downto 0);
         LEDR          : out std_logic_vector(0 downto 0);
         HEX0          : out std_logic_vector(6 downto 0);

         CLOCK_50      : in std_logic;

         -- ENET0_MDC     : out   std_logic;
         -- ENET0_MDIO    : inout std_logic;

         ENET0_RST_N   : out std_logic;

         ENET0_RX_CLK  : in  std_logic;
         -- ENET0_RX_COL  : in  std_logic;
         -- ENET0_RX_CRS  : in  std_logic;
         ENET0_RX_DATA : in  std_logic_vector(3 downto 0);
         ENET0_RX_DV   : in  std_logic;
         ENET0_RX_ER   : in  std_logic;

         ENET0_TX_CLK  : in  std_logic;
         ENET0_TX_DATA : out std_logic_vector(3 downto 0);
         ENET0_TX_EN   : out std_logic;
         ENET0_TX_ER   : out std_logic;
         
         LCD_RS : out std_logic;
         LCD_EN : out std_logic;
         LCD_ON : out std_logic;
         LCD_RW : out std_logic;
         LCD_DATA : inout std_logic_vector(7 downto 0)
         );
end entity;

architecture rtl of fpga is
    signal n_reset : std_logic;
    
    signal read_available : std_logic := '0';
    signal read_enable    : std_logic := '0';
    signal read_data      : std_logic_vector(7 downto 0) := (others => '0');

    signal packet_ready   : std_logic := '0';
    signal packet_address : std_logic_vector(3 downto 0) := (others => '0');
    signal packet_data    : std_logic_vector(7 downto 0) := (others => '0');
    
    signal packet_source : std_logic_vector(47 downto 0);
    signal packet_dest   : std_logic_vector(47 downto 0);
    
    signal write_en          : std_logic;
    signal write_data        : std_logic_vector(7 downto 0);
    signal write_transaction : std_logic;
    signal write_discard     : std_logic;
    
    signal request_0  : std_logic := '0';
    signal request_1  : std_logic := '0';
    signal request_2  : std_logic := '0';
    signal request_3  : std_logic := '0';
    signal request_4  : std_logic := '0';
    signal request_5  : std_logic := '0';
    signal request_6  : std_logic := '0';
    signal request_7  : std_logic := '0';
    signal request_8  : std_logic := '0';
    signal request_9  : std_logic := '0';
    signal request_10 : std_logic := '0';
    signal request_11 : std_logic := '0';
    signal request_12 : std_logic := '0';
    signal request_13 : std_logic := '0';
    signal request_14 : std_logic := '0';
    signal request_15 : std_logic := '0';
    
    signal address_writing : std_logic_vector(3 downto 0) := (others => '0');
    signal destination_mac : std_logic_vector(47 downto 0) := (others => '0');
    
    signal payload_byte : std_logic_vector(7 downto 0);
    signal payload_ready : std_logic;
    signal payload_done : std_logic;
    signal is_handling_request : std_logic;
begin
    n_reset <= SW(0);
    LEDR(0) <= n_reset;

    ss: entity work.seven_segment
        generic map(ADDRESS => "0000")
        port map(n_reset        => n_reset,

                 clk     => CLOCK_50,

                 packet_address => packet_address,
                 packet_ready   => packet_ready,
                 packet_data    => packet_data,
                 packet_source  => packet_source,
                 packet_dest    => packet_dest,
                 
                 is_handling_request => is_handling_request,
                 request_write       => request_0,
                 address_writing     => address_writing,
                 payload_byte        => payload_byte,
                 payload_ready       => payload_ready,
                 payload_done        => payload_done,
                 destination_mac     => destination_mac,

                 hex            => HEX0);

    lcd: entity work.lcd
        generic map(ADDRESS => "0001")
        port map (clk => CLOCK_50,
                  n_reset => n_reset,
                  LCD_RS => LCD_RS,
                  LCD_EN => LCD_EN,
                  LCD_RW => LCD_RW,
                  LCD_DATA => LCD_DATA,
                  
                  packet_address => packet_address,
                  packet_ready   => packet_ready,
                  packet_data    => packet_data,
                  packet_source  => packet_source,
                  packet_dest    => packet_dest,
                  
                  lcd_reset      => SW(1));

    mux: entity work.eth_mux
        generic map(mac_address => x"112233445566")
        port map(n_reset    => n_reset,
                 clk        => CLOCK_50,
         
                 request_0  => request_0,
                 request_1  => request_1,
                 request_2  => request_2,
                 request_3  => request_3,
                 request_4  => request_4,
                 request_5  => request_5,
                 request_6  => request_6,
                 request_7  => request_7,
                 request_8  => request_8,
                 request_9  => request_9,
                 request_10 => request_10,
                 request_11 => request_11,
                 request_12 => request_12,
                 request_13 => request_13,
                 request_14 => request_14,
                 request_15 => request_15,
                 address_writing => address_writing,
                 
                 is_handling_request => is_handling_request,

                 destination_mac    => destination_mac,
                 payload_byte       => payload_byte,
                 payload_ready      => payload_ready,
                 payload_done       => payload_done,

                 write_data         => write_data,
                 write_enable       => write_en,
                 write_transaction  => write_transaction,
                 write_discard      => write_discard);

    demux: entity work.packet_demux
        port map(n_reset         => n_reset,
                 clk             => CLOCK_50,

                 read_en         => read_enable,
                 read_data       => read_data,
                 read_available  => read_available,

                 packet_ready    => packet_ready,
                 packet_address  => packet_address,
                 packet_data     => packet_data,
                 packet_source   => packet_source,
                 packet_dest     => packet_dest);

    mac0: entity work.mac
        port map (n_reset => n_reset,
                  clk     => CLOCK_50,
                  RST_N   => ENET0_RST_N,

                  -- MDC     : out   std_logic;
                  -- MDIO    : inout std_logic;

                  RX_CLK  => ENET0_RX_CLK,

                  -- RX_COL  : in  std_logic;
                  -- RX_CRS  : in  std_logic;
                  RX_DATA => ENET0_RX_DATA,
                  RX_DV   => ENET0_RX_DV,
                  RX_ER   => ENET0_RX_ER,

                  TX_CLK  => ENET0_TX_CLK,
                  TX_DATA => ENET0_TX_DATA,
                  TX_EN   => ENET0_TX_EN,
                  TX_ER   => ENET0_TX_ER,

                  buffer_read_data      => read_data,
                  buffer_read_en        => read_enable,
                  buffer_read_available => read_available,
                  
                  buffer_write_en          => write_en,
                  buffer_write_data        => write_data,
                  buffer_write_transaction => write_transaction,
                  buffer_write_discard     => write_discard);

end architecture;
