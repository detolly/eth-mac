
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fpga_vhd_tst IS
END fpga_vhd_tst;
ARCHITECTURE fpga_arch OF fpga_vhd_tst IS
-- constants                                                 
-- signals 

constant period_25 : time := 40ns;
constant period_50 : time := 20ns;

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

    "1111", "1111",
    "1111", "0000",
    "1111", "0000",
    "1111", "0000",
    "1111", "0000",
    "1111", "1111",

    "0000", "0000",
    "0010", "0000",

    "0000", "0000",
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

signal ENET0_TX_CLK  : std_logic;
signal ENET0_TX_DATA : std_logic_vector(3 downto 0);
signal ENET0_TX_ER   : std_logic;
signal ENET0_TX_EN   : std_logic;

signal CLOCK_50 : std_logic;
signal CLOCK_25 : std_logic;

BEGIN
    i1 : entity work.fpga
    PORT MAP (
-- list connections between master ports and signals
    CLOCK_50 => CLOCK_50,
    ENET0_RX_CLK => ENET0_RX_CLK,
    ENET0_RX_DATA => ENET0_RX_DATA,
    ENET0_RX_DV => ENET0_RX_DV,
    ENET0_RX_ER => ENET0_RX_ER,
    ENET0_TX_CLK => ENET0_TX_CLK,
    ENET0_TX_DATA => ENET0_TX_DATA,
    ENET0_TX_ER => ENET0_TX_ER,
    ENET0_TX_EN => ENET0_TX_EN,
    HEX0 => HEX0,
    LEDR => LEDR,
    SW => SW
);

ENET0_TX_CLK <= CLOCK_25;
ENET0_RX_CLK <= CLOCK_25;

ENET0_RX_ER <= '0';

init : PROCESS
BEGIN                                                        
    SW(0) <= '0';
    wait for period_25;
    SW(0) <= '1';
    wait for period_25;

    ENET0_RX_DV <= '1';
    for i in real_data'range loop
        -- ENET0_RX_DATA <= data1(i);
        ENET0_RX_DATA <= real_data(i);
        wait until CLOCK_25 = '0';
    end loop;
    ENET0_RX_DV <= '0';

    wait for period_50 * 2;

    ENET0_RX_DV <= '1';
    for i in real_data'range loop
        -- ENET0_RX_DATA <= data1(i);
        ENET0_RX_DATA <= real_data(i);
        wait until CLOCK_25 = '0';
    end loop;
    ENET0_RX_DV <= '0';

    wait; 
END PROCESS init;   

clocker: process
begin
    loop
        CLOCK_50 <= '0', '1' after period_50 / 2;
        wait for period_50;
    end loop;
wait;
end process;

clocker50: process
begin
    loop
        CLOCK_25 <= '0', '1' after period_25 / 2;
        wait for period_25;
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
