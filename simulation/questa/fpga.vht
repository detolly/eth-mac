
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

constant real_data : nibble_array := (
    "0101", "0101", "0101", "0101",
    "0101", "0101", "0101", "0101",
    "0101", "0101", "0101", "0101",
    "0101", "0101", "0101", "1101",

    "0001", "0001",
    "0010", "0010",
    "0011", "0011",
    "0100", "0100",
    "0101", "0101",
    "0110", "0110",

    "0011", "0110",
    "0111", "0110",
    "0111", "0000",
    "1110", "0000",
    "0110", "0101",
    "0001", "0011",

    "0000", "0000",
    "0010", "0000",

    "0001", "0000",
    "1111", "0111",

    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000",

    "0000", "0000",
    "0000", "0000",
    "0000", "0000",
    "0000", "0000"
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
    SW(0) <= '1';

    ENET0_RX_DV <= '1';
    for i in real_data'range loop
        -- ENET0_RX_DATA <= data1(i);
        ENET0_RX_DATA <= real_data(i);
        wait until clock = '0';
    end loop;
    ENET0_RX_DV <= '0';

    wait for 200 ns;

    ENET0_RX_DV <= '1';
    for i in real_data'range loop
        -- ENET0_RX_DATA <= data1(i);
        ENET0_RX_DATA <= real_data(i);
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
