
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

constant data1 : nibble_array := (
  -- preamble 7×55
  "1010","1010","1010","1010","1010","1010","1010","1010",
  "1010","1010","1010","1010","1010","1010","1010","1011",
  -- dest FF:FF:FF:FF:FF:FF
  "1111","1111","1111","1111","1111","1111","1111","1111","1111","1111","1111","1111",
  -- src 02:00:00:00:00:01
  "0000","0010","0000","0000","0000","0000","0000","0000","0000","0000","0000","0001",
  -- length 0x0005 (5 bytes real data)
  "0000","0000","0000","0101",
  -- payload "DEADBEEF00" + 36 zero pad
  "1101","1110","1010","1101","1011","1110","1110","1111","0000","0000",
  -- FCS (not actually verifying this lol)
  "1010","1010","1010","1010","1010","1010","1010","1010"
);

constant hex_data : nibble_array := (
  -- preamble 7×55
  "1010","1010","1010","1010","1010","1010","1010","1010",
  "1010","1010","1010","1010","1010","1010","1010","1011",
  -- dest FE:DC:BA:98:76:54
  "1111","1110","1101","1100","1011","1010","1001","1000","0111","0110","0101","0100",
  -- src 02:00:00:00:00:01
  "0000","0010","0000","0000","0000","0000","0000","0000","0000","0000","0000","0001",
  -- length 0x0002 (2 bytes real data)
  "0000","0000","0000","0010",
  -- payload - change hex to something 
  "0000","0001","0111","1111",
  -- FCS (not actually verifying this lol)
  "1010","1010","1010","1010","1010","1010","1010","1010"
);
                                                  
signal SW            : std_logic_vector(0 downto 0);
signal LEDR          : std_logic_vector(0 downto 0);
signal HEX0          : std_logic_vector(6 downto 0);

signal ENET0_RX_CLK  : std_logic;
signal ENET0_RX_DATA : std_logic_vector(3 downto 0);
signal ENET0_RX_DV   : std_logic;
signal ENET0_RX_ER   : std_logic;

BEGIN
    i1 : entity work.fpga
    PORT MAP (
-- list connections between master ports and signals
    ENET0_RX_CLK => ENET0_RX_CLK,
    ENET0_RX_DATA => ENET0_RX_DATA,
    ENET0_RX_DV => ENET0_RX_DV,
    ENET0_RX_ER => ENET0_RX_ER,
    HEX0 => HEX0,
    LEDR => LEDR,
    SW => SW
);

ENET0_RX_CLK <= clock;
ENET0_RX_ER <= '0';

init : PROCESS
BEGIN                                                        
    ENET0_RX_DV <= '1';

    for i in hex_data'range loop
        -- ENET0_RX_DATA <= data1(i);
        ENET0_RX_DATA <= hex_data(i);
        wait until clock = '0';
    end loop;

    ENET0_RX_DV <= '0';

    wait; 
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
