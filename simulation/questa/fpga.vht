
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fpga_vhd_tst IS
END fpga_vhd_tst;
ARCHITECTURE fpga_arch OF fpga_vhd_tst IS
-- constants                                                 
-- signals 

signal clock : std_logic := '0';
constant period : time := 40ns;

type nibble_array is array (natural range <>) of std_logic_vector(3 downto 0);

signal data1 : nibble_array(0 to 137) := (
  -- preamble 7×55
  "1010","1010","1010","1010","1010","1010","1010","1010",
  "1010","1010","1010","1010","1010","1010",
  -- SFD D5
  "1010","1011",
  -- dest FF:FF:FF:FF:FF:FF
  "1111","1111","1111","1111","1111","1111","1111","1111","1111","1111","1111","1111",
  -- src 02:00:00:00:00:01
  "0000","0010","0000","0000","0000","0000","0000","0000","0000","0000","0000","0001",
  -- length 0x000A (10 bytes real data)
  "0000","0000","0000","1010",
  -- payload "DEADBEEF00" + 36 zero pad
  "1101","1110","1010","1101","1011","1110","1110","1111","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000","0000","0000","0000","0000",
  "0000","0000","0000","0000","0000","0000",
  -- FCS (computed over dest..pad)
  "0110","1101","1011","0010","0100","1110","1110","0011"
);
                                                  
SIGNAL ENET0_MDC : STD_LOGIC;
SIGNAL ENET0_MDIO : STD_LOGIC;
SIGNAL ENET0_RST_N : STD_LOGIC;
SIGNAL ENET0_RX_CLK : STD_LOGIC;
SIGNAL ENET0_RX_COL : STD_LOGIC;
SIGNAL ENET0_RX_CRS : STD_LOGIC;
SIGNAL ENET0_RX_DATA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENET0_RX_DV : STD_LOGIC;
SIGNAL ENET0_RX_ER : STD_LOGIC;
SIGNAL ENET0_TX_CLK : STD_LOGIC;
SIGNAL ENET0_TX_DATA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENET0_TX_EN : STD_LOGIC;
SIGNAL ENET0_TX_ER : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    i1 : entity work.fpga
    PORT MAP (
-- list connections between master ports and signals
    ENET0_MDC => ENET0_MDC,
    ENET0_MDIO => ENET0_MDIO,
    ENET0_RST_N => ENET0_RST_N,
    ENET0_RX_CLK => ENET0_RX_CLK,
    ENET0_RX_COL => ENET0_RX_COL,
    ENET0_RX_CRS => ENET0_RX_CRS,
    ENET0_RX_DATA => ENET0_RX_DATA,
    ENET0_RX_DV => ENET0_RX_DV,
    ENET0_RX_ER => ENET0_RX_ER,
    ENET0_TX_CLK => ENET0_TX_CLK,
    ENET0_TX_DATA => ENET0_TX_DATA,
    ENET0_TX_EN => ENET0_TX_EN,
    ENET0_TX_ER => ENET0_TX_ER,
    LEDR => LEDR,
    SW => SW
    );

ENET0_RX_CLK <= clock;
ENET0_RX_DV <= '1';
ENET0_RX_ER <= '0';

init : PROCESS
BEGIN                                                        
    for i in data1'range loop
        ENET0_RX_DATA <= data1(i);
        wait until clock = '0';
    end loop;
WAIT; 
END PROCESS init;   

clocker: process
begin
    loop
        clock <= '0', '1' after period / 2;
        wait for period;
    end loop;
wait;
end process;
                                        
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END fpga_arch;
