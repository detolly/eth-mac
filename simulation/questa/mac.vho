-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "09/14/2026 12:45:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	ENET0_RST_N : BUFFER std_logic;
	ENET0_RX_CLK : IN std_logic;
	ENET0_RX_DATA : IN std_logic_vector(3 DOWNTO 0);
	ENET0_RX_DV : IN std_logic;
	ENET0_RX_ER : IN std_logic
	);
END fpga;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RST_N	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ENET0_RST_N : std_logic;
SIGNAL ww_ENET0_RX_CLK : std_logic;
SIGNAL ww_ENET0_RX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET0_RX_DV : std_logic;
SIGNAL ww_ENET0_RX_ER : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac0|receiver|write_ready~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ENET0_RX_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \ENET0_RST_N~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~input_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mux|read_state.WAIT_FOR_READ~feeder_combout\ : std_logic;
SIGNAL \mux|read_state.WAIT_FOR_READ~q\ : std_logic;
SIGNAL \mux|payload_len[0]~18_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~5\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~6_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~7\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~8_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_addr[4]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~9\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~10_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_addr[5]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~11\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~12_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_addr[6]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~13\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~14_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_addr[7]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~15\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~16_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~17\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~18_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~19\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~20_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~21\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~22_combout\ : std_logic;
SIGNAL \ENET0_RX_DV~input_o\ : std_logic;
SIGNAL \mac0|receiver|counter[0]~16_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal2~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~15_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.IDLE~q\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.MAC_DESTINATION~2_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.MAC_DESTINATION~q\ : std_logic;
SIGNAL \mac0|receiver|Equal1~4_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~16_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~17_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[4]~26\ : std_logic;
SIGNAL \mac0|receiver|counter[5]~27_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[0]~24_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[5]~28\ : std_logic;
SIGNAL \mac0|receiver|counter[6]~29_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[6]~30\ : std_logic;
SIGNAL \mac0|receiver|counter[7]~31_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[7]~32\ : std_logic;
SIGNAL \mac0|receiver|counter[8]~33_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[8]~34\ : std_logic;
SIGNAL \mac0|receiver|counter[9]~35_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[9]~36\ : std_logic;
SIGNAL \mac0|receiver|counter[10]~37_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[10]~38\ : std_logic;
SIGNAL \mac0|receiver|counter[11]~39_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[11]~40\ : std_logic;
SIGNAL \mac0|receiver|counter[12]~41_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[12]~42\ : std_logic;
SIGNAL \mac0|receiver|counter[13]~43_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[13]~44\ : std_logic;
SIGNAL \mac0|receiver|counter[14]~45_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[14]~46\ : std_logic;
SIGNAL \mac0|receiver|counter[15]~47_combout\ : std_logic;
SIGNAL \mac0|receiver|current_byte~0_combout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~input_o\ : std_logic;
SIGNAL \mac0|receiver|Equal0~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~13_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state.FIRST~q\ : std_logic;
SIGNAL \mac0|receiver|Selector0~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[0]~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length[0]~0_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector1~0_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector2~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[5]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector3~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[4]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector4~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[3]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector5~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[2]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector6~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[1]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Selector7~0_combout\ : std_logic;
SIGNAL \mac0|receiver|payload_length_first_byte[0]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~1\ : std_logic;
SIGNAL \mac0|receiver|Add1~3\ : std_logic;
SIGNAL \mac0|receiver|Add1~5\ : std_logic;
SIGNAL \mac0|receiver|Add1~7\ : std_logic;
SIGNAL \mac0|receiver|Add1~9\ : std_logic;
SIGNAL \mac0|receiver|Add1~11\ : std_logic;
SIGNAL \mac0|receiver|Add1~13\ : std_logic;
SIGNAL \mac0|receiver|Add1~15\ : std_logic;
SIGNAL \mac0|receiver|Add1~17\ : std_logic;
SIGNAL \mac0|receiver|Add1~19\ : std_logic;
SIGNAL \mac0|receiver|Add1~21\ : std_logic;
SIGNAL \mac0|receiver|Add1~23\ : std_logic;
SIGNAL \mac0|receiver|Add1~25\ : std_logic;
SIGNAL \mac0|receiver|Add1~27\ : std_logic;
SIGNAL \mac0|receiver|Add1~29\ : std_logic;
SIGNAL \mac0|receiver|Add1~30_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~20_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~22_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~8_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~9_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~31\ : std_logic;
SIGNAL \mac0|receiver|Add1~32_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~24_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~26_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~0_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~18_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~16_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~6_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~28_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~8_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~10_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~3_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~2_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~0_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~1_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~4_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~6_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~2_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~12_combout\ : std_logic;
SIGNAL \mac0|receiver|Add1~14_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~4_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~5_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~7_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal3~10_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~18_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~19_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.MAC_SOURCE~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.MAC_SOURCE~q\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~11_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~12_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~13_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~14_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.PAYLOAD~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.PAYLOAD~q\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.CRC~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.CRC~q\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~10_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~12_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state.SECOND~q\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state~10_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.LEN~0_combout\ : std_logic;
SIGNAL \mac0|receiver|current_frame_state.LEN~q\ : std_logic;
SIGNAL \mac0|receiver|Selector28~0_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[0]~17\ : std_logic;
SIGNAL \mac0|receiver|counter[1]~18_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[1]~19\ : std_logic;
SIGNAL \mac0|receiver|counter[2]~20_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[2]~21\ : std_logic;
SIGNAL \mac0|receiver|counter[3]~22_combout\ : std_logic;
SIGNAL \mac0|receiver|counter[3]~23\ : std_logic;
SIGNAL \mac0|receiver|counter[4]~25_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal1~0_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal1~1_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal1~2_combout\ : std_logic;
SIGNAL \mac0|receiver|Equal1~3_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~11_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~16_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state.IDLE~q\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~14_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state~15_combout\ : std_logic;
SIGNAL \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ : std_logic;
SIGNAL \mac0|receiver|Selector12~0_combout\ : std_logic;
SIGNAL \mac0|receiver|byte_ready~q\ : std_logic;
SIGNAL \mac0|receiver|write_ready~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|write_ready~q\ : std_logic;
SIGNAL \mac0|receiver|write_ready~clkctrl_outclk\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram~21_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|is_writing~q\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|writer~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~11_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~6_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~5_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~3_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~1\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~4_combout\ : std_logic;
SIGNAL \mac0|receiver|write_discard~3_combout\ : std_logic;
SIGNAL \mac0|receiver|write_discard~2_combout\ : std_logic;
SIGNAL \mac0|receiver|write_discard~4_combout\ : std_logic;
SIGNAL \ENET0_RX_ER~input_o\ : std_logic;
SIGNAL \mac0|receiver|write_discard~0_combout\ : std_logic;
SIGNAL \mac0|receiver|write_discard~1_combout\ : std_logic;
SIGNAL \mac0|receiver|write_discard~5_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~15_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~3\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~4_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~5_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~5\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~6_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~4_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~6_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~7\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~8_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~7_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~9\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~10_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~8_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~7_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~11\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~12_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~9_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~8_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~13\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~14_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~10_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal2~1_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~10_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~9_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~15\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~16_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~11_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~17\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~18_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~12_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|backup_write_addr~12_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~19\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~21\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~22_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~14_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal2~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~3_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal2~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal2~3_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add1~20_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr~13_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[10]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[0]~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[11]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~6_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[9]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[8]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~5_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~7_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~1\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~3\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Add0~4_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[3]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~1_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[0]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~0_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[7]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~3_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr[5]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~2_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~4_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|Equal0~7_wirecell_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~0_combout\ : std_logic;
SIGNAL \mux|Add1~0_combout\ : std_logic;
SIGNAL \mux|counter[0]~12_combout\ : std_logic;
SIGNAL \mux|counter[0]~13\ : std_logic;
SIGNAL \mux|counter[1]~14_combout\ : std_logic;
SIGNAL \mux|counter[2]~17\ : std_logic;
SIGNAL \mux|counter[3]~18_combout\ : std_logic;
SIGNAL \mux|counter[3]~19\ : std_logic;
SIGNAL \mux|counter[4]~20_combout\ : std_logic;
SIGNAL \mux|counter[4]~21\ : std_logic;
SIGNAL \mux|counter[5]~22_combout\ : std_logic;
SIGNAL \mux|counter[5]~23\ : std_logic;
SIGNAL \mux|counter[6]~24_combout\ : std_logic;
SIGNAL \mux|counter[6]~25\ : std_logic;
SIGNAL \mux|counter[7]~26_combout\ : std_logic;
SIGNAL \mux|counter[7]~27\ : std_logic;
SIGNAL \mux|counter[8]~28_combout\ : std_logic;
SIGNAL \mux|counter[8]~29\ : std_logic;
SIGNAL \mux|counter[9]~30_combout\ : std_logic;
SIGNAL \mux|Equal1~1_combout\ : std_logic;
SIGNAL \mux|counter[9]~31\ : std_logic;
SIGNAL \mux|counter[10]~32_combout\ : std_logic;
SIGNAL \mux|counter[10]~33\ : std_logic;
SIGNAL \mux|counter[11]~34_combout\ : std_logic;
SIGNAL \mux|Equal1~0_combout\ : std_logic;
SIGNAL \mux|Equal1~2_combout\ : std_logic;
SIGNAL \mux|Selector1~0_combout\ : std_logic;
SIGNAL \mux|read_state.PACKET_ADDR~q\ : std_logic;
SIGNAL \mux|WideOr0~combout\ : std_logic;
SIGNAL \mux|counter[1]~15\ : std_logic;
SIGNAL \mux|counter[2]~16_combout\ : std_logic;
SIGNAL \mux|Selector17~0_combout\ : std_logic;
SIGNAL \mux|Equal0~0_combout\ : std_logic;
SIGNAL \mux|Selector2~4_combout\ : std_logic;
SIGNAL \mux|Selector2~5_combout\ : std_logic;
SIGNAL \mux|read_state.MAC_SOURCE~q\ : std_logic;
SIGNAL \mux|Selector3~2_combout\ : std_logic;
SIGNAL \mux|Selector3~3_combout\ : std_logic;
SIGNAL \mux|read_state.PAYLOAD_LENGTH~q\ : std_logic;
SIGNAL \mux|payload_len[6]~20_combout\ : std_logic;
SIGNAL \mux|payload_len[6]~21_combout\ : std_logic;
SIGNAL \mux|payload_len[0]~19\ : std_logic;
SIGNAL \mux|payload_len[1]~22_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~4_combout\ : std_logic;
SIGNAL \mux|Add1~1\ : std_logic;
SIGNAL \mux|Add1~2_combout\ : std_logic;
SIGNAL \mux|payload_len[1]~23\ : std_logic;
SIGNAL \mux|payload_len[2]~24_combout\ : std_logic;
SIGNAL \mac0|receiver|write_byte[2]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|write_byte[3]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~3_combout\ : std_logic;
SIGNAL \mux|Add1~3\ : std_logic;
SIGNAL \mux|Add1~4_combout\ : std_logic;
SIGNAL \mux|payload_len[2]~25\ : std_logic;
SIGNAL \mux|payload_len[3]~26_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~2_combout\ : std_logic;
SIGNAL \mux|Add1~5\ : std_logic;
SIGNAL \mux|Add1~6_combout\ : std_logic;
SIGNAL \mux|payload_len[3]~27\ : std_logic;
SIGNAL \mux|payload_len[4]~28_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~1_combout\ : std_logic;
SIGNAL \mux|Add1~7\ : std_logic;
SIGNAL \mux|Add1~8_combout\ : std_logic;
SIGNAL \mux|payload_len[4]~29\ : std_logic;
SIGNAL \mux|payload_len[5]~30_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~5_combout\ : std_logic;
SIGNAL \mux|Add1~9\ : std_logic;
SIGNAL \mux|Add1~10_combout\ : std_logic;
SIGNAL \mux|payload_len[5]~31\ : std_logic;
SIGNAL \mux|payload_len[6]~32_combout\ : std_logic;
SIGNAL \mac0|receiver|write_byte[6]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|write_byte[7]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~6_combout\ : std_logic;
SIGNAL \mux|Add1~11\ : std_logic;
SIGNAL \mux|Add1~12_combout\ : std_logic;
SIGNAL \mux|payload_len[6]~33\ : std_logic;
SIGNAL \mux|payload_len[7]~34_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|read_data~7_combout\ : std_logic;
SIGNAL \mux|Add1~13\ : std_logic;
SIGNAL \mux|Add1~14_combout\ : std_logic;
SIGNAL \mux|payload_len[7]~35\ : std_logic;
SIGNAL \mux|payload_len[8]~36_combout\ : std_logic;
SIGNAL \mux|Add1~15\ : std_logic;
SIGNAL \mux|Add1~16_combout\ : std_logic;
SIGNAL \mux|payload_len[8]~37\ : std_logic;
SIGNAL \mux|payload_len[9]~38_combout\ : std_logic;
SIGNAL \mux|Add1~17\ : std_logic;
SIGNAL \mux|Add1~18_combout\ : std_logic;
SIGNAL \mux|payload_len[9]~39\ : std_logic;
SIGNAL \mux|payload_len[10]~40_combout\ : std_logic;
SIGNAL \mux|Add1~19\ : std_logic;
SIGNAL \mux|Add1~20_combout\ : std_logic;
SIGNAL \mux|payload_len[10]~41\ : std_logic;
SIGNAL \mux|payload_len[11]~42_combout\ : std_logic;
SIGNAL \mux|Add1~21\ : std_logic;
SIGNAL \mux|Add1~22_combout\ : std_logic;
SIGNAL \mux|payload_len[11]~43\ : std_logic;
SIGNAL \mux|payload_len[12]~44_combout\ : std_logic;
SIGNAL \mux|Add1~23\ : std_logic;
SIGNAL \mux|Add1~24_combout\ : std_logic;
SIGNAL \mux|payload_len[12]~45\ : std_logic;
SIGNAL \mux|payload_len[13]~46_combout\ : std_logic;
SIGNAL \mux|Add1~25\ : std_logic;
SIGNAL \mux|Add1~26_combout\ : std_logic;
SIGNAL \mux|payload_len[13]~47\ : std_logic;
SIGNAL \mux|payload_len[14]~48_combout\ : std_logic;
SIGNAL \mux|Add1~27\ : std_logic;
SIGNAL \mux|Add1~28_combout\ : std_logic;
SIGNAL \mux|payload_len[14]~49\ : std_logic;
SIGNAL \mux|payload_len[15]~50_combout\ : std_logic;
SIGNAL \mux|Add1~29\ : std_logic;
SIGNAL \mux|Add1~30_combout\ : std_logic;
SIGNAL \mux|Equal2~3_combout\ : std_logic;
SIGNAL \mux|Equal2~1_combout\ : std_logic;
SIGNAL \mux|Equal2~2_combout\ : std_logic;
SIGNAL \mux|Equal2~0_combout\ : std_logic;
SIGNAL \mux|Equal2~4_combout\ : std_logic;
SIGNAL \mux|payload_len[6]~17_combout\ : std_logic;
SIGNAL \mux|Selector1~1_combout\ : std_logic;
SIGNAL \mux|read_state.MAC_DESTINATION~q\ : std_logic;
SIGNAL \mux|payload_len[6]~16_combout\ : std_logic;
SIGNAL \mux|Selector2~2_combout\ : std_logic;
SIGNAL \mux|Selector2~3_combout\ : std_logic;
SIGNAL \mux|Selector5~2_combout\ : std_logic;
SIGNAL \mux|read_state.PACKET_BYTES~q\ : std_logic;
SIGNAL \mux|packet_data~0_combout\ : std_logic;
SIGNAL \mux|packet_data[0]~1_combout\ : std_logic;
SIGNAL \mux|packet_ready~q\ : std_logic;
SIGNAL \mux|Selector34~0_combout\ : std_logic;
SIGNAL \mux|packet_address[4]~0_combout\ : std_logic;
SIGNAL \mux|Selector41~0_combout\ : std_logic;
SIGNAL \mux|Selector35~0_combout\ : std_logic;
SIGNAL \mux|Selector36~0_combout\ : std_logic;
SIGNAL \ss|updater~1_combout\ : std_logic;
SIGNAL \mux|Selector40~0_combout\ : std_logic;
SIGNAL \mux|Selector39~0_combout\ : std_logic;
SIGNAL \mux|Selector38~0_combout\ : std_logic;
SIGNAL \mux|Selector37~0_combout\ : std_logic;
SIGNAL \ss|updater~0_combout\ : std_logic;
SIGNAL \ss|updater~2_combout\ : std_logic;
SIGNAL \mux|packet_data~2_combout\ : std_logic;
SIGNAL \ss|hex[1]~feeder_combout\ : std_logic;
SIGNAL \mux|packet_data~3_combout\ : std_logic;
SIGNAL \ss|hex[2]~feeder_combout\ : std_logic;
SIGNAL \mux|packet_data~4_combout\ : std_logic;
SIGNAL \ss|hex[3]~feeder_combout\ : std_logic;
SIGNAL \mux|packet_data~5_combout\ : std_logic;
SIGNAL \mux|packet_data~6_combout\ : std_logic;
SIGNAL \ss|hex[5]~feeder_combout\ : std_logic;
SIGNAL \mux|packet_data~7_combout\ : std_logic;
SIGNAL \ss|hex[6]~feeder_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|write_addr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|backup_write_addr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|current_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux|packet_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ss|hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mux|counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux|packet_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mac0|receiver|write_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|read_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mac0|receiver|payload_length\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux|payload_len\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|last_good_write_addr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mac0|receiver|payload_length_first_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|read_addr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mux|previous_payload_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\ : std_logic;
SIGNAL \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ENET0_RST_N <= ww_ENET0_RST_N;
ww_ENET0_RX_CLK <= ENET0_RX_CLK;
ww_ENET0_RX_DATA <= ENET0_RX_DATA;
ww_ENET0_RX_DV <= ENET0_RX_DV;
ww_ENET0_RX_ER <= ENET0_RX_ER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mac0|receiver|write_byte\(4) & \mac0|receiver|write_byte\(0));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mac0|receiver|rx_ram|write_addr\(11) & \mac0|receiver|rx_ram|write_addr\(10) & \mac0|receiver|rx_ram|write_addr\(9) & \mac0|receiver|rx_ram|write_addr\(8) & 
\mac0|receiver|rx_ram|write_addr\(7) & \mac0|receiver|rx_ram|write_addr\(6) & \mac0|receiver|rx_ram|write_addr\(5) & \mac0|receiver|rx_ram|write_addr\(4) & \mac0|receiver|rx_ram|write_addr\(3) & \mac0|receiver|rx_ram|write_addr\(2) & 
\mac0|receiver|rx_ram|write_addr\(1) & \mac0|receiver|rx_ram|write_addr\(0));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mac0|receiver|rx_ram|Add0~22_combout\ & \mac0|receiver|rx_ram|Add0~20_combout\ & \mac0|receiver|rx_ram|Add0~18_combout\ & \mac0|receiver|rx_ram|Add0~16_combout\ & 
\mac0|receiver|rx_ram|Add0~14_combout\ & \mac0|receiver|rx_ram|Add0~12_combout\ & \mac0|receiver|rx_ram|Add0~10_combout\ & \mac0|receiver|rx_ram|Add0~8_combout\ & \mac0|receiver|rx_ram|Add0~6_combout\ & \mac0|receiver|rx_ram|Add0~4_combout\ & 
\mac0|receiver|rx_ram|Add0~2_combout\ & \mac0|receiver|rx_ram|Add0~0_combout\);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a4\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\mac0|receiver|write_byte\(3) & \mac0|receiver|write_byte\(2));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\mac0|receiver|rx_ram|write_addr\(11) & \mac0|receiver|rx_ram|write_addr\(10) & \mac0|receiver|rx_ram|write_addr\(9) & \mac0|receiver|rx_ram|write_addr\(8) & 
\mac0|receiver|rx_ram|write_addr\(7) & \mac0|receiver|rx_ram|write_addr\(6) & \mac0|receiver|rx_ram|write_addr\(5) & \mac0|receiver|rx_ram|write_addr\(4) & \mac0|receiver|rx_ram|write_addr\(3) & \mac0|receiver|rx_ram|write_addr\(2) & 
\mac0|receiver|rx_ram|write_addr\(1) & \mac0|receiver|rx_ram|write_addr\(0));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\mac0|receiver|rx_ram|Add0~22_combout\ & \mac0|receiver|rx_ram|Add0~20_combout\ & \mac0|receiver|rx_ram|Add0~18_combout\ & \mac0|receiver|rx_ram|Add0~16_combout\ & 
\mac0|receiver|rx_ram|Add0~14_combout\ & \mac0|receiver|rx_ram|Add0~12_combout\ & \mac0|receiver|rx_ram|Add0~10_combout\ & \mac0|receiver|rx_ram|Add0~8_combout\ & \mac0|receiver|rx_ram|Add0~6_combout\ & \mac0|receiver|rx_ram|Add0~4_combout\ & 
\mac0|receiver|rx_ram|Add0~2_combout\ & \mac0|receiver|rx_ram|Add0~0_combout\);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a3\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\mac0|receiver|write_byte\(5) & \mac0|receiver|write_byte\(1));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\mac0|receiver|rx_ram|write_addr\(11) & \mac0|receiver|rx_ram|write_addr\(10) & \mac0|receiver|rx_ram|write_addr\(9) & \mac0|receiver|rx_ram|write_addr\(8) & 
\mac0|receiver|rx_ram|write_addr\(7) & \mac0|receiver|rx_ram|write_addr\(6) & \mac0|receiver|rx_ram|write_addr\(5) & \mac0|receiver|rx_ram|write_addr\(4) & \mac0|receiver|rx_ram|write_addr\(3) & \mac0|receiver|rx_ram|write_addr\(2) & 
\mac0|receiver|rx_ram|write_addr\(1) & \mac0|receiver|rx_ram|write_addr\(0));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\mac0|receiver|rx_ram|Add0~22_combout\ & \mac0|receiver|rx_ram|Add0~20_combout\ & \mac0|receiver|rx_ram|Add0~18_combout\ & \mac0|receiver|rx_ram|Add0~16_combout\ & 
\mac0|receiver|rx_ram|Add0~14_combout\ & \mac0|receiver|rx_ram|Add0~12_combout\ & \mac0|receiver|rx_ram|Add0~10_combout\ & \mac0|receiver|rx_ram|Add0~8_combout\ & \mac0|receiver|rx_ram|Add0~6_combout\ & \mac0|receiver|rx_ram|Add0~4_combout\ & 
\mac0|receiver|rx_ram|Add0~2_combout\ & \mac0|receiver|rx_ram|Add0~0_combout\);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a5\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\mac0|receiver|write_byte\(7) & \mac0|receiver|write_byte\(6));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\mac0|receiver|rx_ram|write_addr\(11) & \mac0|receiver|rx_ram|write_addr\(10) & \mac0|receiver|rx_ram|write_addr\(9) & \mac0|receiver|rx_ram|write_addr\(8) & 
\mac0|receiver|rx_ram|write_addr\(7) & \mac0|receiver|rx_ram|write_addr\(6) & \mac0|receiver|rx_ram|write_addr\(5) & \mac0|receiver|rx_ram|write_addr\(4) & \mac0|receiver|rx_ram|write_addr\(3) & \mac0|receiver|rx_ram|write_addr\(2) & 
\mac0|receiver|rx_ram|write_addr\(1) & \mac0|receiver|rx_ram|write_addr\(0));

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\mac0|receiver|rx_ram|Add0~22_combout\ & \mac0|receiver|rx_ram|Add0~20_combout\ & \mac0|receiver|rx_ram|Add0~18_combout\ & \mac0|receiver|rx_ram|Add0~16_combout\ & 
\mac0|receiver|rx_ram|Add0~14_combout\ & \mac0|receiver|rx_ram|Add0~12_combout\ & \mac0|receiver|rx_ram|Add0~10_combout\ & \mac0|receiver|rx_ram|Add0~8_combout\ & \mac0|receiver|rx_ram|Add0~6_combout\ & \mac0|receiver|rx_ram|Add0~4_combout\ & 
\mac0|receiver|rx_ram|Add0~2_combout\ & \mac0|receiver|rx_ram|Add0~0_combout\);

\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a7\ <= \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);

\mac0|receiver|write_ready~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mac0|receiver|write_ready~q\);

\ENET0_RX_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ENET0_RX_CLK~input_o\);
\mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\ <= NOT \mac0|receiver|rx_ram|Equal0~7_wirecell_combout\;
\mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\ <= NOT \mac0|receiver|rx_ram|Equal0~7_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss|hex\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\ENET0_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \ENET0_RST_N~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\ENET0_RX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CLK,
	o => \ENET0_RX_CLK~input_o\);

-- Location: CLKCTRL_G14
\ENET0_RX_CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ENET0_RX_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ENET0_RX_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X80_Y66_N18
\mux|read_state.WAIT_FOR_READ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|read_state.WAIT_FOR_READ~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mux|read_state.WAIT_FOR_READ~feeder_combout\);

-- Location: FF_X80_Y66_N19
\mux|read_state.WAIT_FOR_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|read_state.WAIT_FOR_READ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.WAIT_FOR_READ~q\);

-- Location: LCCOMB_X80_Y64_N0
\mux|payload_len[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[0]~18_combout\ = \mux|payload_len\(0) $ (VCC)
-- \mux|payload_len[0]~19\ = CARRY(\mux|payload_len\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(0),
	datad => VCC,
	combout => \mux|payload_len[0]~18_combout\,
	cout => \mux|payload_len[0]~19\);

-- Location: LCCOMB_X76_Y67_N4
\mac0|receiver|rx_ram|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~0_combout\ = \mac0|receiver|rx_ram|read_addr\(0) $ (VCC)
-- \mac0|receiver|rx_ram|Add0~1\ = CARRY(\mac0|receiver|rx_ram|read_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(0),
	datad => VCC,
	combout => \mac0|receiver|rx_ram|Add0~0_combout\,
	cout => \mac0|receiver|rx_ram|Add0~1\);

-- Location: LCCOMB_X76_Y67_N8
\mac0|receiver|rx_ram|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~4_combout\ = (\mac0|receiver|rx_ram|read_addr\(2) & (\mac0|receiver|rx_ram|Add0~3\ $ (GND))) # (!\mac0|receiver|rx_ram|read_addr\(2) & (!\mac0|receiver|rx_ram|Add0~3\ & VCC))
-- \mac0|receiver|rx_ram|Add0~5\ = CARRY((\mac0|receiver|rx_ram|read_addr\(2) & !\mac0|receiver|rx_ram|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(2),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~3\,
	combout => \mac0|receiver|rx_ram|Add0~4_combout\,
	cout => \mac0|receiver|rx_ram|Add0~5\);

-- Location: LCCOMB_X76_Y67_N10
\mac0|receiver|rx_ram|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~6_combout\ = (\mac0|receiver|rx_ram|read_addr\(3) & (!\mac0|receiver|rx_ram|Add0~5\)) # (!\mac0|receiver|rx_ram|read_addr\(3) & ((\mac0|receiver|rx_ram|Add0~5\) # (GND)))
-- \mac0|receiver|rx_ram|Add0~7\ = CARRY((!\mac0|receiver|rx_ram|Add0~5\) # (!\mac0|receiver|rx_ram|read_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(3),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~5\,
	combout => \mac0|receiver|rx_ram|Add0~6_combout\,
	cout => \mac0|receiver|rx_ram|Add0~7\);

-- Location: FF_X76_Y67_N11
\mac0|receiver|rx_ram|read_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~6_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(3));

-- Location: LCCOMB_X76_Y67_N12
\mac0|receiver|rx_ram|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~8_combout\ = (\mac0|receiver|rx_ram|read_addr\(4) & (\mac0|receiver|rx_ram|Add0~7\ $ (GND))) # (!\mac0|receiver|rx_ram|read_addr\(4) & (!\mac0|receiver|rx_ram|Add0~7\ & VCC))
-- \mac0|receiver|rx_ram|Add0~9\ = CARRY((\mac0|receiver|rx_ram|read_addr\(4) & !\mac0|receiver|rx_ram|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(4),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~7\,
	combout => \mac0|receiver|rx_ram|Add0~8_combout\,
	cout => \mac0|receiver|rx_ram|Add0~9\);

-- Location: LCCOMB_X76_Y67_N30
\mac0|receiver|rx_ram|read_addr[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_addr[4]~feeder_combout\ = \mac0|receiver|rx_ram|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|Add0~8_combout\,
	combout => \mac0|receiver|rx_ram|read_addr[4]~feeder_combout\);

-- Location: FF_X76_Y67_N31
\mac0|receiver|rx_ram|read_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_addr[4]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(4));

-- Location: LCCOMB_X76_Y67_N14
\mac0|receiver|rx_ram|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~10_combout\ = (\mac0|receiver|rx_ram|read_addr\(5) & (!\mac0|receiver|rx_ram|Add0~9\)) # (!\mac0|receiver|rx_ram|read_addr\(5) & ((\mac0|receiver|rx_ram|Add0~9\) # (GND)))
-- \mac0|receiver|rx_ram|Add0~11\ = CARRY((!\mac0|receiver|rx_ram|Add0~9\) # (!\mac0|receiver|rx_ram|read_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(5),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~9\,
	combout => \mac0|receiver|rx_ram|Add0~10_combout\,
	cout => \mac0|receiver|rx_ram|Add0~11\);

-- Location: LCCOMB_X76_Y67_N28
\mac0|receiver|rx_ram|read_addr[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_addr[5]~feeder_combout\ = \mac0|receiver|rx_ram|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|Add0~10_combout\,
	combout => \mac0|receiver|rx_ram|read_addr[5]~feeder_combout\);

-- Location: FF_X76_Y67_N29
\mac0|receiver|rx_ram|read_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_addr[5]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(5));

-- Location: LCCOMB_X76_Y67_N16
\mac0|receiver|rx_ram|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~12_combout\ = (\mac0|receiver|rx_ram|read_addr\(6) & (\mac0|receiver|rx_ram|Add0~11\ $ (GND))) # (!\mac0|receiver|rx_ram|read_addr\(6) & (!\mac0|receiver|rx_ram|Add0~11\ & VCC))
-- \mac0|receiver|rx_ram|Add0~13\ = CARRY((\mac0|receiver|rx_ram|read_addr\(6) & !\mac0|receiver|rx_ram|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(6),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~11\,
	combout => \mac0|receiver|rx_ram|Add0~12_combout\,
	cout => \mac0|receiver|rx_ram|Add0~13\);

-- Location: LCCOMB_X76_Y67_N2
\mac0|receiver|rx_ram|read_addr[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_addr[6]~feeder_combout\ = \mac0|receiver|rx_ram|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|Add0~12_combout\,
	combout => \mac0|receiver|rx_ram|read_addr[6]~feeder_combout\);

-- Location: FF_X76_Y67_N3
\mac0|receiver|rx_ram|read_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_addr[6]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(6));

-- Location: LCCOMB_X76_Y67_N18
\mac0|receiver|rx_ram|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~14_combout\ = (\mac0|receiver|rx_ram|read_addr\(7) & (!\mac0|receiver|rx_ram|Add0~13\)) # (!\mac0|receiver|rx_ram|read_addr\(7) & ((\mac0|receiver|rx_ram|Add0~13\) # (GND)))
-- \mac0|receiver|rx_ram|Add0~15\ = CARRY((!\mac0|receiver|rx_ram|Add0~13\) # (!\mac0|receiver|rx_ram|read_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(7),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~13\,
	combout => \mac0|receiver|rx_ram|Add0~14_combout\,
	cout => \mac0|receiver|rx_ram|Add0~15\);

-- Location: LCCOMB_X76_Y67_N0
\mac0|receiver|rx_ram|read_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_addr[7]~feeder_combout\ = \mac0|receiver|rx_ram|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|Add0~14_combout\,
	combout => \mac0|receiver|rx_ram|read_addr[7]~feeder_combout\);

-- Location: FF_X76_Y67_N1
\mac0|receiver|rx_ram|read_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_addr[7]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(7));

-- Location: LCCOMB_X76_Y67_N20
\mac0|receiver|rx_ram|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~16_combout\ = (\mac0|receiver|rx_ram|read_addr\(8) & (\mac0|receiver|rx_ram|Add0~15\ $ (GND))) # (!\mac0|receiver|rx_ram|read_addr\(8) & (!\mac0|receiver|rx_ram|Add0~15\ & VCC))
-- \mac0|receiver|rx_ram|Add0~17\ = CARRY((\mac0|receiver|rx_ram|read_addr\(8) & !\mac0|receiver|rx_ram|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(8),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~15\,
	combout => \mac0|receiver|rx_ram|Add0~16_combout\,
	cout => \mac0|receiver|rx_ram|Add0~17\);

-- Location: FF_X76_Y67_N21
\mac0|receiver|rx_ram|read_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~16_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(8));

-- Location: LCCOMB_X76_Y67_N22
\mac0|receiver|rx_ram|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~18_combout\ = (\mac0|receiver|rx_ram|read_addr\(9) & (!\mac0|receiver|rx_ram|Add0~17\)) # (!\mac0|receiver|rx_ram|read_addr\(9) & ((\mac0|receiver|rx_ram|Add0~17\) # (GND)))
-- \mac0|receiver|rx_ram|Add0~19\ = CARRY((!\mac0|receiver|rx_ram|Add0~17\) # (!\mac0|receiver|rx_ram|read_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(9),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~17\,
	combout => \mac0|receiver|rx_ram|Add0~18_combout\,
	cout => \mac0|receiver|rx_ram|Add0~19\);

-- Location: FF_X76_Y67_N23
\mac0|receiver|rx_ram|read_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~18_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(9));

-- Location: LCCOMB_X76_Y67_N24
\mac0|receiver|rx_ram|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~20_combout\ = (\mac0|receiver|rx_ram|read_addr\(10) & (\mac0|receiver|rx_ram|Add0~19\ $ (GND))) # (!\mac0|receiver|rx_ram|read_addr\(10) & (!\mac0|receiver|rx_ram|Add0~19\ & VCC))
-- \mac0|receiver|rx_ram|Add0~21\ = CARRY((\mac0|receiver|rx_ram|read_addr\(10) & !\mac0|receiver|rx_ram|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_addr\(10),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~19\,
	combout => \mac0|receiver|rx_ram|Add0~20_combout\,
	cout => \mac0|receiver|rx_ram|Add0~21\);

-- Location: FF_X76_Y67_N25
\mac0|receiver|rx_ram|read_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~20_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(10));

-- Location: LCCOMB_X76_Y67_N26
\mac0|receiver|rx_ram|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~22_combout\ = \mac0|receiver|rx_ram|Add0~21\ $ (\mac0|receiver|rx_ram|read_addr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|read_addr\(11),
	cin => \mac0|receiver|rx_ram|Add0~21\,
	combout => \mac0|receiver|rx_ram|Add0~22_combout\);

-- Location: FF_X76_Y67_N27
\mac0|receiver|rx_ram|read_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~22_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(11));

-- Location: IOIBUF_X81_Y73_N1
\ENET0_RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DV,
	o => \ENET0_RX_DV~input_o\);

-- Location: LCCOMB_X72_Y70_N0
\mac0|receiver|counter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[0]~16_combout\ = \mac0|receiver|counter\(0) $ (VCC)
-- \mac0|receiver|counter[0]~17\ = CARRY(\mac0|receiver|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(0),
	datad => VCC,
	combout => \mac0|receiver|counter[0]~16_combout\,
	cout => \mac0|receiver|counter[0]~17\);

-- Location: LCCOMB_X74_Y70_N24
\mac0|receiver|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal2~0_combout\ = (!\mac0|receiver|counter\(0) & (!\mac0|receiver|counter\(2) & (\mac0|receiver|Equal1~3_combout\ & !\mac0|receiver|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(0),
	datab => \mac0|receiver|counter\(2),
	datac => \mac0|receiver|Equal1~3_combout\,
	datad => \mac0|receiver|counter\(1),
	combout => \mac0|receiver|Equal2~0_combout\);

-- Location: LCCOMB_X76_Y71_N0
\mac0|receiver|current_frame_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~15_combout\ = (!\mac0|receiver|current_receive_state~11_combout\ & ((\mac0|receiver|current_receive_state.SECOND~q\) # (\mac0|receiver|current_frame_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|current_receive_state~11_combout\,
	combout => \mac0|receiver|current_frame_state~15_combout\);

-- Location: FF_X76_Y71_N1
\mac0|receiver|current_frame_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.IDLE~q\);

-- Location: LCCOMB_X75_Y70_N16
\mac0|receiver|current_frame_state.MAC_DESTINATION~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state.MAC_DESTINATION~2_combout\ = (\mac0|receiver|current_frame_state~14_combout\ & ((\mac0|receiver|current_frame_state.MAC_DESTINATION~q\) # ((!\mac0|receiver|current_frame_state.IDLE~q\ & 
-- \mac0|receiver|current_receive_state.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|current_frame_state.MAC_DESTINATION~q\,
	datad => \mac0|receiver|current_frame_state~14_combout\,
	combout => \mac0|receiver|current_frame_state.MAC_DESTINATION~2_combout\);

-- Location: FF_X75_Y70_N17
\mac0|receiver|current_frame_state.MAC_DESTINATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state.MAC_DESTINATION~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.MAC_DESTINATION~q\);

-- Location: LCCOMB_X75_Y70_N10
\mac0|receiver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal1~4_combout\ = (\mac0|receiver|counter\(2) & (!\mac0|receiver|counter\(1) & (\mac0|receiver|counter\(0) & \mac0|receiver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(2),
	datab => \mac0|receiver|counter\(1),
	datac => \mac0|receiver|counter\(0),
	datad => \mac0|receiver|Equal1~3_combout\,
	combout => \mac0|receiver|Equal1~4_combout\);

-- Location: LCCOMB_X75_Y70_N24
\mac0|receiver|current_frame_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~16_combout\ = (\mac0|receiver|Equal1~4_combout\ & ((\mac0|receiver|current_frame_state.MAC_DESTINATION~q\) # (\mac0|receiver|current_frame_state.MAC_SOURCE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_frame_state.MAC_DESTINATION~q\,
	datac => \mac0|receiver|current_frame_state.MAC_SOURCE~q\,
	datad => \mac0|receiver|Equal1~4_combout\,
	combout => \mac0|receiver|current_frame_state~16_combout\);

-- Location: LCCOMB_X74_Y70_N20
\mac0|receiver|current_frame_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~17_combout\ = (\mac0|receiver|current_frame_state~16_combout\) # ((\mac0|receiver|Equal1~3_combout\ & \mac0|receiver|current_receive_state~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Equal1~3_combout\,
	datab => \mac0|receiver|current_receive_state~10_combout\,
	datad => \mac0|receiver|current_frame_state~16_combout\,
	combout => \mac0|receiver|current_frame_state~17_combout\);

-- Location: LCCOMB_X72_Y70_N8
\mac0|receiver|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[4]~25_combout\ = (\mac0|receiver|counter\(4) & (\mac0|receiver|counter[3]~23\ $ (GND))) # (!\mac0|receiver|counter\(4) & (!\mac0|receiver|counter[3]~23\ & VCC))
-- \mac0|receiver|counter[4]~26\ = CARRY((\mac0|receiver|counter\(4) & !\mac0|receiver|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(4),
	datad => VCC,
	cin => \mac0|receiver|counter[3]~23\,
	combout => \mac0|receiver|counter[4]~25_combout\,
	cout => \mac0|receiver|counter[4]~26\);

-- Location: LCCOMB_X72_Y70_N10
\mac0|receiver|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[5]~27_combout\ = (\mac0|receiver|counter\(5) & (!\mac0|receiver|counter[4]~26\)) # (!\mac0|receiver|counter\(5) & ((\mac0|receiver|counter[4]~26\) # (GND)))
-- \mac0|receiver|counter[5]~28\ = CARRY((!\mac0|receiver|counter[4]~26\) # (!\mac0|receiver|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(5),
	datad => VCC,
	cin => \mac0|receiver|counter[4]~26\,
	combout => \mac0|receiver|counter[5]~27_combout\,
	cout => \mac0|receiver|counter[5]~28\);

-- Location: LCCOMB_X69_Y70_N20
\mac0|receiver|counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[0]~24_combout\ = (\mac0|receiver|byte_ready~q\ & \mac0|receiver|current_frame_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|byte_ready~q\,
	datad => \mac0|receiver|current_frame_state.IDLE~q\,
	combout => \mac0|receiver|counter[0]~24_combout\);

-- Location: FF_X73_Y70_N29
\mac0|receiver|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[5]~27_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(5));

-- Location: LCCOMB_X72_Y70_N12
\mac0|receiver|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[6]~29_combout\ = (\mac0|receiver|counter\(6) & (\mac0|receiver|counter[5]~28\ $ (GND))) # (!\mac0|receiver|counter\(6) & (!\mac0|receiver|counter[5]~28\ & VCC))
-- \mac0|receiver|counter[6]~30\ = CARRY((\mac0|receiver|counter\(6) & !\mac0|receiver|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(6),
	datad => VCC,
	cin => \mac0|receiver|counter[5]~28\,
	combout => \mac0|receiver|counter[6]~29_combout\,
	cout => \mac0|receiver|counter[6]~30\);

-- Location: FF_X73_Y70_N15
\mac0|receiver|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[6]~29_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(6));

-- Location: LCCOMB_X72_Y70_N14
\mac0|receiver|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[7]~31_combout\ = (\mac0|receiver|counter\(7) & (!\mac0|receiver|counter[6]~30\)) # (!\mac0|receiver|counter\(7) & ((\mac0|receiver|counter[6]~30\) # (GND)))
-- \mac0|receiver|counter[7]~32\ = CARRY((!\mac0|receiver|counter[6]~30\) # (!\mac0|receiver|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(7),
	datad => VCC,
	cin => \mac0|receiver|counter[6]~30\,
	combout => \mac0|receiver|counter[7]~31_combout\,
	cout => \mac0|receiver|counter[7]~32\);

-- Location: FF_X72_Y70_N15
\mac0|receiver|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[7]~31_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(7));

-- Location: LCCOMB_X72_Y70_N16
\mac0|receiver|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[8]~33_combout\ = (\mac0|receiver|counter\(8) & (\mac0|receiver|counter[7]~32\ $ (GND))) # (!\mac0|receiver|counter\(8) & (!\mac0|receiver|counter[7]~32\ & VCC))
-- \mac0|receiver|counter[8]~34\ = CARRY((\mac0|receiver|counter\(8) & !\mac0|receiver|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(8),
	datad => VCC,
	cin => \mac0|receiver|counter[7]~32\,
	combout => \mac0|receiver|counter[8]~33_combout\,
	cout => \mac0|receiver|counter[8]~34\);

-- Location: FF_X73_Y70_N5
\mac0|receiver|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[8]~33_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(8));

-- Location: LCCOMB_X72_Y70_N18
\mac0|receiver|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[9]~35_combout\ = (\mac0|receiver|counter\(9) & (!\mac0|receiver|counter[8]~34\)) # (!\mac0|receiver|counter\(9) & ((\mac0|receiver|counter[8]~34\) # (GND)))
-- \mac0|receiver|counter[9]~36\ = CARRY((!\mac0|receiver|counter[8]~34\) # (!\mac0|receiver|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(9),
	datad => VCC,
	cin => \mac0|receiver|counter[8]~34\,
	combout => \mac0|receiver|counter[9]~35_combout\,
	cout => \mac0|receiver|counter[9]~36\);

-- Location: FF_X72_Y70_N19
\mac0|receiver|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[9]~35_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(9));

-- Location: LCCOMB_X72_Y70_N20
\mac0|receiver|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[10]~37_combout\ = (\mac0|receiver|counter\(10) & (\mac0|receiver|counter[9]~36\ $ (GND))) # (!\mac0|receiver|counter\(10) & (!\mac0|receiver|counter[9]~36\ & VCC))
-- \mac0|receiver|counter[10]~38\ = CARRY((\mac0|receiver|counter\(10) & !\mac0|receiver|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(10),
	datad => VCC,
	cin => \mac0|receiver|counter[9]~36\,
	combout => \mac0|receiver|counter[10]~37_combout\,
	cout => \mac0|receiver|counter[10]~38\);

-- Location: FF_X72_Y70_N21
\mac0|receiver|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[10]~37_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(10));

-- Location: LCCOMB_X72_Y70_N22
\mac0|receiver|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[11]~39_combout\ = (\mac0|receiver|counter\(11) & (!\mac0|receiver|counter[10]~38\)) # (!\mac0|receiver|counter\(11) & ((\mac0|receiver|counter[10]~38\) # (GND)))
-- \mac0|receiver|counter[11]~40\ = CARRY((!\mac0|receiver|counter[10]~38\) # (!\mac0|receiver|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(11),
	datad => VCC,
	cin => \mac0|receiver|counter[10]~38\,
	combout => \mac0|receiver|counter[11]~39_combout\,
	cout => \mac0|receiver|counter[11]~40\);

-- Location: FF_X73_Y70_N31
\mac0|receiver|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[11]~39_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(11));

-- Location: LCCOMB_X72_Y70_N24
\mac0|receiver|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[12]~41_combout\ = (\mac0|receiver|counter\(12) & (\mac0|receiver|counter[11]~40\ $ (GND))) # (!\mac0|receiver|counter\(12) & (!\mac0|receiver|counter[11]~40\ & VCC))
-- \mac0|receiver|counter[12]~42\ = CARRY((\mac0|receiver|counter\(12) & !\mac0|receiver|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(12),
	datad => VCC,
	cin => \mac0|receiver|counter[11]~40\,
	combout => \mac0|receiver|counter[12]~41_combout\,
	cout => \mac0|receiver|counter[12]~42\);

-- Location: FF_X73_Y70_N9
\mac0|receiver|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[12]~41_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(12));

-- Location: LCCOMB_X72_Y70_N26
\mac0|receiver|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[13]~43_combout\ = (\mac0|receiver|counter\(13) & (!\mac0|receiver|counter[12]~42\)) # (!\mac0|receiver|counter\(13) & ((\mac0|receiver|counter[12]~42\) # (GND)))
-- \mac0|receiver|counter[13]~44\ = CARRY((!\mac0|receiver|counter[12]~42\) # (!\mac0|receiver|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(13),
	datad => VCC,
	cin => \mac0|receiver|counter[12]~42\,
	combout => \mac0|receiver|counter[13]~43_combout\,
	cout => \mac0|receiver|counter[13]~44\);

-- Location: FF_X72_Y70_N27
\mac0|receiver|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[13]~43_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(13));

-- Location: LCCOMB_X72_Y70_N28
\mac0|receiver|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[14]~45_combout\ = (\mac0|receiver|counter\(14) & (\mac0|receiver|counter[13]~44\ $ (GND))) # (!\mac0|receiver|counter\(14) & (!\mac0|receiver|counter[13]~44\ & VCC))
-- \mac0|receiver|counter[14]~46\ = CARRY((\mac0|receiver|counter\(14) & !\mac0|receiver|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(14),
	datad => VCC,
	cin => \mac0|receiver|counter[13]~44\,
	combout => \mac0|receiver|counter[14]~45_combout\,
	cout => \mac0|receiver|counter[14]~46\);

-- Location: FF_X72_Y70_N29
\mac0|receiver|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[14]~45_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(14));

-- Location: LCCOMB_X72_Y70_N30
\mac0|receiver|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[15]~47_combout\ = \mac0|receiver|counter\(15) $ (\mac0|receiver|counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(15),
	cin => \mac0|receiver|counter[14]~46\,
	combout => \mac0|receiver|counter[15]~47_combout\);

-- Location: FF_X72_Y70_N31
\mac0|receiver|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[15]~47_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(15));

-- Location: LCCOMB_X70_Y70_N28
\mac0|receiver|current_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_byte~0_combout\ = (\mac0|receiver|current_receive_state.SECOND~q\) # (\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datad => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	combout => \mac0|receiver|current_byte~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\ENET0_RX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(3),
	o => \ENET0_RX_DATA[3]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\ENET0_RX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(0),
	o => \ENET0_RX_DATA[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\ENET0_RX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(2),
	o => \ENET0_RX_DATA[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\ENET0_RX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(1),
	o => \ENET0_RX_DATA[1]~input_o\);

-- Location: LCCOMB_X70_Y70_N22
\mac0|receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal0~0_combout\ = (\ENET0_RX_DATA[3]~input_o\ & (\ENET0_RX_DATA[0]~input_o\ & (!\ENET0_RX_DATA[2]~input_o\ & \ENET0_RX_DATA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[3]~input_o\,
	datab => \ENET0_RX_DATA[0]~input_o\,
	datac => \ENET0_RX_DATA[2]~input_o\,
	datad => \ENET0_RX_DATA[1]~input_o\,
	combout => \mac0|receiver|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y70_N18
\mac0|receiver|current_receive_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~13_combout\ = (!\mac0|receiver|current_receive_state~11_combout\ & ((\mac0|receiver|current_receive_state.SECOND~q\) # ((\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & \mac0|receiver|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|current_receive_state~11_combout\,
	datad => \mac0|receiver|Equal0~0_combout\,
	combout => \mac0|receiver|current_receive_state~13_combout\);

-- Location: FF_X69_Y70_N19
\mac0|receiver|current_receive_state.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_receive_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_receive_state.FIRST~q\);

-- Location: LCCOMB_X69_Y70_N30
\mac0|receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector0~0_combout\ = (\mac0|receiver|current_byte~0_combout\ & ((\mac0|receiver|current_byte\(7)) # ((\mac0|receiver|current_receive_state.FIRST~q\ & \ENET0_RX_DATA[3]~input_o\)))) # (!\mac0|receiver|current_byte~0_combout\ & 
-- (\mac0|receiver|current_receive_state.FIRST~q\ & ((\ENET0_RX_DATA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_byte~0_combout\,
	datab => \mac0|receiver|current_receive_state.FIRST~q\,
	datac => \mac0|receiver|current_byte\(7),
	datad => \ENET0_RX_DATA[3]~input_o\,
	combout => \mac0|receiver|Selector0~0_combout\);

-- Location: FF_X69_Y70_N31
\mac0|receiver|current_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(7));

-- Location: LCCOMB_X69_Y70_N24
\mac0|receiver|payload_length_first_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[0]~0_combout\ = (\mac0|receiver|byte_ready~q\ & (\mac0|receiver|current_frame_state.LEN~q\ & \mac0|receiver|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|byte_ready~q\,
	datab => \mac0|receiver|current_frame_state.LEN~q\,
	datad => \mac0|receiver|Equal2~0_combout\,
	combout => \mac0|receiver|payload_length_first_byte[0]~0_combout\);

-- Location: FF_X69_Y70_N25
\mac0|receiver|payload_length_first_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(7),
	sload => VCC,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(7));

-- Location: LCCOMB_X75_Y70_N14
\mac0|receiver|payload_length[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length[0]~0_combout\ = (\mac0|receiver|current_frame_state.LEN~q\ & (\mac0|receiver|byte_ready~q\ & !\mac0|receiver|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.LEN~q\,
	datab => \mac0|receiver|byte_ready~q\,
	datad => \mac0|receiver|Equal2~0_combout\,
	combout => \mac0|receiver|payload_length[0]~0_combout\);

-- Location: FF_X74_Y71_N11
\mac0|receiver|payload_length[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(7),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(15));

-- Location: LCCOMB_X70_Y70_N8
\mac0|receiver|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector1~0_combout\ = (\ENET0_RX_DATA[2]~input_o\ & ((\mac0|receiver|current_receive_state.FIRST~q\) # ((\mac0|receiver|current_byte\(6) & \mac0|receiver|current_byte~0_combout\)))) # (!\ENET0_RX_DATA[2]~input_o\ & 
-- (((\mac0|receiver|current_byte\(6) & \mac0|receiver|current_byte~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[2]~input_o\,
	datab => \mac0|receiver|current_receive_state.FIRST~q\,
	datac => \mac0|receiver|current_byte\(6),
	datad => \mac0|receiver|current_byte~0_combout\,
	combout => \mac0|receiver|Selector1~0_combout\);

-- Location: FF_X70_Y70_N9
\mac0|receiver|current_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(6));

-- Location: FF_X70_Y70_N7
\mac0|receiver|payload_length_first_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(6),
	sload => VCC,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(6));

-- Location: FF_X74_Y70_N13
\mac0|receiver|payload_length[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(6),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(14));

-- Location: LCCOMB_X70_Y70_N18
\mac0|receiver|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector2~0_combout\ = (\ENET0_RX_DATA[1]~input_o\ & ((\mac0|receiver|current_receive_state.FIRST~q\) # ((\mac0|receiver|current_byte\(5) & \mac0|receiver|current_byte~0_combout\)))) # (!\ENET0_RX_DATA[1]~input_o\ & 
-- (((\mac0|receiver|current_byte\(5) & \mac0|receiver|current_byte~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[1]~input_o\,
	datab => \mac0|receiver|current_receive_state.FIRST~q\,
	datac => \mac0|receiver|current_byte\(5),
	datad => \mac0|receiver|current_byte~0_combout\,
	combout => \mac0|receiver|Selector2~0_combout\);

-- Location: FF_X70_Y70_N19
\mac0|receiver|current_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(5));

-- Location: LCCOMB_X70_Y70_N26
\mac0|receiver|payload_length_first_byte[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[5]~feeder_combout\ = \mac0|receiver|current_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(5),
	combout => \mac0|receiver|payload_length_first_byte[5]~feeder_combout\);

-- Location: FF_X70_Y70_N27
\mac0|receiver|payload_length_first_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[5]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(5));

-- Location: FF_X74_Y70_N31
\mac0|receiver|payload_length[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(5),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(13));

-- Location: LCCOMB_X70_Y70_N2
\mac0|receiver|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector3~0_combout\ = (\ENET0_RX_DATA[0]~input_o\ & ((\mac0|receiver|current_receive_state.FIRST~q\) # ((\mac0|receiver|current_byte\(4) & \mac0|receiver|current_byte~0_combout\)))) # (!\ENET0_RX_DATA[0]~input_o\ & 
-- (((\mac0|receiver|current_byte\(4) & \mac0|receiver|current_byte~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[0]~input_o\,
	datab => \mac0|receiver|current_receive_state.FIRST~q\,
	datac => \mac0|receiver|current_byte\(4),
	datad => \mac0|receiver|current_byte~0_combout\,
	combout => \mac0|receiver|Selector3~0_combout\);

-- Location: FF_X70_Y70_N3
\mac0|receiver|current_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(4));

-- Location: LCCOMB_X70_Y70_N0
\mac0|receiver|payload_length_first_byte[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[4]~feeder_combout\ = \mac0|receiver|current_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(4),
	combout => \mac0|receiver|payload_length_first_byte[4]~feeder_combout\);

-- Location: FF_X70_Y70_N1
\mac0|receiver|payload_length_first_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[4]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(4));

-- Location: FF_X74_Y71_N5
\mac0|receiver|payload_length[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(4),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(12));

-- Location: LCCOMB_X69_Y70_N16
\mac0|receiver|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector4~0_combout\ = (\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & ((\mac0|receiver|current_byte\(3)) # ((\mac0|receiver|current_receive_state.SECOND~q\ & \ENET0_RX_DATA[3]~input_o\)))) # 
-- (!\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & (\mac0|receiver|current_receive_state.SECOND~q\ & ((\ENET0_RX_DATA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|current_byte\(3),
	datad => \ENET0_RX_DATA[3]~input_o\,
	combout => \mac0|receiver|Selector4~0_combout\);

-- Location: FF_X69_Y70_N17
\mac0|receiver|current_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(3));

-- Location: LCCOMB_X69_Y70_N14
\mac0|receiver|payload_length_first_byte[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[3]~feeder_combout\ = \mac0|receiver|current_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(3),
	combout => \mac0|receiver|payload_length_first_byte[3]~feeder_combout\);

-- Location: FF_X69_Y70_N15
\mac0|receiver|payload_length_first_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[3]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(3));

-- Location: FF_X74_Y70_N7
\mac0|receiver|payload_length[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(3),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(11));

-- Location: LCCOMB_X70_Y70_N16
\mac0|receiver|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector5~0_combout\ = (\ENET0_RX_DATA[2]~input_o\ & ((\mac0|receiver|current_receive_state.SECOND~q\) # ((\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & \mac0|receiver|current_byte\(2))))) # (!\ENET0_RX_DATA[2]~input_o\ & 
-- (\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & (\mac0|receiver|current_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[2]~input_o\,
	datab => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datac => \mac0|receiver|current_byte\(2),
	datad => \mac0|receiver|current_receive_state.SECOND~q\,
	combout => \mac0|receiver|Selector5~0_combout\);

-- Location: FF_X70_Y70_N17
\mac0|receiver|current_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(2));

-- Location: LCCOMB_X70_Y70_N20
\mac0|receiver|payload_length_first_byte[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[2]~feeder_combout\ = \mac0|receiver|current_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(2),
	combout => \mac0|receiver|payload_length_first_byte[2]~feeder_combout\);

-- Location: FF_X70_Y70_N21
\mac0|receiver|payload_length_first_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[2]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(2));

-- Location: FF_X74_Y70_N5
\mac0|receiver|payload_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(2),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(10));

-- Location: LCCOMB_X70_Y70_N12
\mac0|receiver|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector6~0_combout\ = (\ENET0_RX_DATA[1]~input_o\ & ((\mac0|receiver|current_receive_state.SECOND~q\) # ((\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & \mac0|receiver|current_byte\(1))))) # (!\ENET0_RX_DATA[1]~input_o\ & 
-- (\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & (\mac0|receiver|current_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[1]~input_o\,
	datab => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datac => \mac0|receiver|current_byte\(1),
	datad => \mac0|receiver|current_receive_state.SECOND~q\,
	combout => \mac0|receiver|Selector6~0_combout\);

-- Location: FF_X70_Y70_N13
\mac0|receiver|current_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(1));

-- Location: LCCOMB_X70_Y70_N14
\mac0|receiver|payload_length_first_byte[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[1]~feeder_combout\ = \mac0|receiver|current_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(1),
	combout => \mac0|receiver|payload_length_first_byte[1]~feeder_combout\);

-- Location: FF_X70_Y70_N15
\mac0|receiver|payload_length_first_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[1]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(1));

-- Location: FF_X74_Y70_N3
\mac0|receiver|payload_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(1),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(9));

-- Location: LCCOMB_X70_Y70_N24
\mac0|receiver|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector7~0_combout\ = (\ENET0_RX_DATA[0]~input_o\ & ((\mac0|receiver|current_receive_state.SECOND~q\) # ((\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & \mac0|receiver|current_byte\(0))))) # (!\ENET0_RX_DATA[0]~input_o\ & 
-- (\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\ & (\mac0|receiver|current_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DATA[0]~input_o\,
	datab => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datac => \mac0|receiver|current_byte\(0),
	datad => \mac0|receiver|current_receive_state.SECOND~q\,
	combout => \mac0|receiver|Selector7~0_combout\);

-- Location: FF_X70_Y70_N25
\mac0|receiver|current_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_byte\(0));

-- Location: LCCOMB_X70_Y70_N10
\mac0|receiver|payload_length_first_byte[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|payload_length_first_byte[0]~feeder_combout\ = \mac0|receiver|current_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(0),
	combout => \mac0|receiver|payload_length_first_byte[0]~feeder_combout\);

-- Location: FF_X70_Y70_N11
\mac0|receiver|payload_length_first_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|payload_length_first_byte[0]~feeder_combout\,
	ena => \mac0|receiver|payload_length_first_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length_first_byte\(0));

-- Location: FF_X74_Y70_N21
\mac0|receiver|payload_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|payload_length_first_byte\(0),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(8));

-- Location: FF_X74_Y71_N31
\mac0|receiver|payload_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(7),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(7));

-- Location: FF_X74_Y71_N25
\mac0|receiver|payload_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(6),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(6));

-- Location: FF_X74_Y71_N15
\mac0|receiver|payload_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(5),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(5));

-- Location: FF_X74_Y71_N1
\mac0|receiver|payload_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(4),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(4));

-- Location: FF_X74_Y71_N13
\mac0|receiver|payload_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(3),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(3));

-- Location: FF_X74_Y71_N21
\mac0|receiver|payload_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(2),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(2));

-- Location: FF_X74_Y71_N19
\mac0|receiver|payload_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(1),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(1));

-- Location: FF_X74_Y71_N7
\mac0|receiver|payload_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(0),
	sload => VCC,
	ena => \mac0|receiver|payload_length[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|payload_length\(0));

-- Location: LCCOMB_X74_Y71_N16
\mac0|receiver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~0_combout\ = \mac0|receiver|payload_length\(0) $ (VCC)
-- \mac0|receiver|Add1~1\ = CARRY(\mac0|receiver|payload_length\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(0),
	datad => VCC,
	combout => \mac0|receiver|Add1~0_combout\,
	cout => \mac0|receiver|Add1~1\);

-- Location: LCCOMB_X74_Y71_N18
\mac0|receiver|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~2_combout\ = (\mac0|receiver|payload_length\(1) & (\mac0|receiver|Add1~1\ & VCC)) # (!\mac0|receiver|payload_length\(1) & (!\mac0|receiver|Add1~1\))
-- \mac0|receiver|Add1~3\ = CARRY((!\mac0|receiver|payload_length\(1) & !\mac0|receiver|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(1),
	datad => VCC,
	cin => \mac0|receiver|Add1~1\,
	combout => \mac0|receiver|Add1~2_combout\,
	cout => \mac0|receiver|Add1~3\);

-- Location: LCCOMB_X74_Y71_N20
\mac0|receiver|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~4_combout\ = (\mac0|receiver|payload_length\(2) & ((GND) # (!\mac0|receiver|Add1~3\))) # (!\mac0|receiver|payload_length\(2) & (\mac0|receiver|Add1~3\ $ (GND)))
-- \mac0|receiver|Add1~5\ = CARRY((\mac0|receiver|payload_length\(2)) # (!\mac0|receiver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(2),
	datad => VCC,
	cin => \mac0|receiver|Add1~3\,
	combout => \mac0|receiver|Add1~4_combout\,
	cout => \mac0|receiver|Add1~5\);

-- Location: LCCOMB_X74_Y71_N22
\mac0|receiver|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~6_combout\ = (\mac0|receiver|payload_length\(3) & (\mac0|receiver|Add1~5\ & VCC)) # (!\mac0|receiver|payload_length\(3) & (!\mac0|receiver|Add1~5\))
-- \mac0|receiver|Add1~7\ = CARRY((!\mac0|receiver|payload_length\(3) & !\mac0|receiver|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(3),
	datad => VCC,
	cin => \mac0|receiver|Add1~5\,
	combout => \mac0|receiver|Add1~6_combout\,
	cout => \mac0|receiver|Add1~7\);

-- Location: LCCOMB_X74_Y71_N24
\mac0|receiver|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~8_combout\ = (\mac0|receiver|payload_length\(4) & ((GND) # (!\mac0|receiver|Add1~7\))) # (!\mac0|receiver|payload_length\(4) & (\mac0|receiver|Add1~7\ $ (GND)))
-- \mac0|receiver|Add1~9\ = CARRY((\mac0|receiver|payload_length\(4)) # (!\mac0|receiver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(4),
	datad => VCC,
	cin => \mac0|receiver|Add1~7\,
	combout => \mac0|receiver|Add1~8_combout\,
	cout => \mac0|receiver|Add1~9\);

-- Location: LCCOMB_X74_Y71_N26
\mac0|receiver|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~10_combout\ = (\mac0|receiver|payload_length\(5) & (\mac0|receiver|Add1~9\ & VCC)) # (!\mac0|receiver|payload_length\(5) & (!\mac0|receiver|Add1~9\))
-- \mac0|receiver|Add1~11\ = CARRY((!\mac0|receiver|payload_length\(5) & !\mac0|receiver|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(5),
	datad => VCC,
	cin => \mac0|receiver|Add1~9\,
	combout => \mac0|receiver|Add1~10_combout\,
	cout => \mac0|receiver|Add1~11\);

-- Location: LCCOMB_X74_Y71_N28
\mac0|receiver|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~12_combout\ = (\mac0|receiver|payload_length\(6) & ((GND) # (!\mac0|receiver|Add1~11\))) # (!\mac0|receiver|payload_length\(6) & (\mac0|receiver|Add1~11\ $ (GND)))
-- \mac0|receiver|Add1~13\ = CARRY((\mac0|receiver|payload_length\(6)) # (!\mac0|receiver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(6),
	datad => VCC,
	cin => \mac0|receiver|Add1~11\,
	combout => \mac0|receiver|Add1~12_combout\,
	cout => \mac0|receiver|Add1~13\);

-- Location: LCCOMB_X74_Y71_N30
\mac0|receiver|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~14_combout\ = (\mac0|receiver|payload_length\(7) & (\mac0|receiver|Add1~13\ & VCC)) # (!\mac0|receiver|payload_length\(7) & (!\mac0|receiver|Add1~13\))
-- \mac0|receiver|Add1~15\ = CARRY((!\mac0|receiver|payload_length\(7) & !\mac0|receiver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(7),
	datad => VCC,
	cin => \mac0|receiver|Add1~13\,
	combout => \mac0|receiver|Add1~14_combout\,
	cout => \mac0|receiver|Add1~15\);

-- Location: LCCOMB_X74_Y70_N0
\mac0|receiver|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~16_combout\ = (\mac0|receiver|payload_length\(8) & ((GND) # (!\mac0|receiver|Add1~15\))) # (!\mac0|receiver|payload_length\(8) & (\mac0|receiver|Add1~15\ $ (GND)))
-- \mac0|receiver|Add1~17\ = CARRY((\mac0|receiver|payload_length\(8)) # (!\mac0|receiver|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(8),
	datad => VCC,
	cin => \mac0|receiver|Add1~15\,
	combout => \mac0|receiver|Add1~16_combout\,
	cout => \mac0|receiver|Add1~17\);

-- Location: LCCOMB_X74_Y70_N2
\mac0|receiver|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~18_combout\ = (\mac0|receiver|payload_length\(9) & (\mac0|receiver|Add1~17\ & VCC)) # (!\mac0|receiver|payload_length\(9) & (!\mac0|receiver|Add1~17\))
-- \mac0|receiver|Add1~19\ = CARRY((!\mac0|receiver|payload_length\(9) & !\mac0|receiver|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(9),
	datad => VCC,
	cin => \mac0|receiver|Add1~17\,
	combout => \mac0|receiver|Add1~18_combout\,
	cout => \mac0|receiver|Add1~19\);

-- Location: LCCOMB_X74_Y70_N4
\mac0|receiver|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~20_combout\ = (\mac0|receiver|payload_length\(10) & ((GND) # (!\mac0|receiver|Add1~19\))) # (!\mac0|receiver|payload_length\(10) & (\mac0|receiver|Add1~19\ $ (GND)))
-- \mac0|receiver|Add1~21\ = CARRY((\mac0|receiver|payload_length\(10)) # (!\mac0|receiver|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(10),
	datad => VCC,
	cin => \mac0|receiver|Add1~19\,
	combout => \mac0|receiver|Add1~20_combout\,
	cout => \mac0|receiver|Add1~21\);

-- Location: LCCOMB_X74_Y70_N6
\mac0|receiver|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~22_combout\ = (\mac0|receiver|payload_length\(11) & (\mac0|receiver|Add1~21\ & VCC)) # (!\mac0|receiver|payload_length\(11) & (!\mac0|receiver|Add1~21\))
-- \mac0|receiver|Add1~23\ = CARRY((!\mac0|receiver|payload_length\(11) & !\mac0|receiver|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|payload_length\(11),
	datad => VCC,
	cin => \mac0|receiver|Add1~21\,
	combout => \mac0|receiver|Add1~22_combout\,
	cout => \mac0|receiver|Add1~23\);

-- Location: LCCOMB_X74_Y70_N8
\mac0|receiver|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~24_combout\ = (\mac0|receiver|payload_length\(12) & ((GND) # (!\mac0|receiver|Add1~23\))) # (!\mac0|receiver|payload_length\(12) & (\mac0|receiver|Add1~23\ $ (GND)))
-- \mac0|receiver|Add1~25\ = CARRY((\mac0|receiver|payload_length\(12)) # (!\mac0|receiver|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(12),
	datad => VCC,
	cin => \mac0|receiver|Add1~23\,
	combout => \mac0|receiver|Add1~24_combout\,
	cout => \mac0|receiver|Add1~25\);

-- Location: LCCOMB_X74_Y70_N10
\mac0|receiver|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~26_combout\ = (\mac0|receiver|payload_length\(13) & (\mac0|receiver|Add1~25\ & VCC)) # (!\mac0|receiver|payload_length\(13) & (!\mac0|receiver|Add1~25\))
-- \mac0|receiver|Add1~27\ = CARRY((!\mac0|receiver|payload_length\(13) & !\mac0|receiver|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(13),
	datad => VCC,
	cin => \mac0|receiver|Add1~25\,
	combout => \mac0|receiver|Add1~26_combout\,
	cout => \mac0|receiver|Add1~27\);

-- Location: LCCOMB_X74_Y70_N12
\mac0|receiver|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~28_combout\ = (\mac0|receiver|payload_length\(14) & ((GND) # (!\mac0|receiver|Add1~27\))) # (!\mac0|receiver|payload_length\(14) & (\mac0|receiver|Add1~27\ $ (GND)))
-- \mac0|receiver|Add1~29\ = CARRY((\mac0|receiver|payload_length\(14)) # (!\mac0|receiver|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(14),
	datad => VCC,
	cin => \mac0|receiver|Add1~27\,
	combout => \mac0|receiver|Add1~28_combout\,
	cout => \mac0|receiver|Add1~29\);

-- Location: LCCOMB_X74_Y70_N14
\mac0|receiver|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~30_combout\ = (\mac0|receiver|payload_length\(15) & (\mac0|receiver|Add1~29\ & VCC)) # (!\mac0|receiver|payload_length\(15) & (!\mac0|receiver|Add1~29\))
-- \mac0|receiver|Add1~31\ = CARRY((!\mac0|receiver|payload_length\(15) & !\mac0|receiver|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(15),
	datad => VCC,
	cin => \mac0|receiver|Add1~29\,
	combout => \mac0|receiver|Add1~30_combout\,
	cout => \mac0|receiver|Add1~31\);

-- Location: LCCOMB_X74_Y70_N18
\mac0|receiver|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~8_combout\ = (\mac0|receiver|counter\(11) & (\mac0|receiver|Add1~22_combout\ & (\mac0|receiver|counter\(10) $ (!\mac0|receiver|Add1~20_combout\)))) # (!\mac0|receiver|counter\(11) & (!\mac0|receiver|Add1~22_combout\ & 
-- (\mac0|receiver|counter\(10) $ (!\mac0|receiver|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(11),
	datab => \mac0|receiver|counter\(10),
	datac => \mac0|receiver|Add1~20_combout\,
	datad => \mac0|receiver|Add1~22_combout\,
	combout => \mac0|receiver|Equal3~8_combout\);

-- Location: LCCOMB_X74_Y70_N30
\mac0|receiver|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~9_combout\ = (\mac0|receiver|Equal3~8_combout\ & (\mac0|receiver|counter\(15) $ (!\mac0|receiver|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(15),
	datab => \mac0|receiver|Add1~30_combout\,
	datad => \mac0|receiver|Equal3~8_combout\,
	combout => \mac0|receiver|Equal3~9_combout\);

-- Location: LCCOMB_X74_Y70_N16
\mac0|receiver|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Add1~32_combout\ = \mac0|receiver|Add1~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \mac0|receiver|Add1~31\,
	combout => \mac0|receiver|Add1~32_combout\);

-- Location: LCCOMB_X74_Y70_N26
\mac0|receiver|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~0_combout\ = (\mac0|receiver|counter\(12) & (\mac0|receiver|Add1~24_combout\ & (\mac0|receiver|counter\(13) $ (!\mac0|receiver|Add1~26_combout\)))) # (!\mac0|receiver|counter\(12) & (!\mac0|receiver|Add1~24_combout\ & 
-- (\mac0|receiver|counter\(13) $ (!\mac0|receiver|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(12),
	datab => \mac0|receiver|counter\(13),
	datac => \mac0|receiver|Add1~24_combout\,
	datad => \mac0|receiver|Add1~26_combout\,
	combout => \mac0|receiver|Equal3~0_combout\);

-- Location: LCCOMB_X74_Y70_N28
\mac0|receiver|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~6_combout\ = (\mac0|receiver|counter\(9) & (\mac0|receiver|Add1~18_combout\ & (\mac0|receiver|counter\(8) $ (!\mac0|receiver|Add1~16_combout\)))) # (!\mac0|receiver|counter\(9) & (!\mac0|receiver|Add1~18_combout\ & 
-- (\mac0|receiver|counter\(8) $ (!\mac0|receiver|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(9),
	datab => \mac0|receiver|Add1~18_combout\,
	datac => \mac0|receiver|counter\(8),
	datad => \mac0|receiver|Add1~16_combout\,
	combout => \mac0|receiver|Equal3~6_combout\);

-- Location: LCCOMB_X73_Y70_N28
\mac0|receiver|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~3_combout\ = (\mac0|receiver|Add1~8_combout\ & (\mac0|receiver|counter\(4) & (\mac0|receiver|counter\(5) $ (!\mac0|receiver|Add1~10_combout\)))) # (!\mac0|receiver|Add1~8_combout\ & (!\mac0|receiver|counter\(4) & 
-- (\mac0|receiver|counter\(5) $ (!\mac0|receiver|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Add1~8_combout\,
	datab => \mac0|receiver|counter\(4),
	datac => \mac0|receiver|counter\(5),
	datad => \mac0|receiver|Add1~10_combout\,
	combout => \mac0|receiver|Equal3~3_combout\);

-- Location: LCCOMB_X73_Y70_N24
\mac0|receiver|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~1_combout\ = (\mac0|receiver|counter\(1) & (\mac0|receiver|Add1~2_combout\ & (\mac0|receiver|counter\(0) $ (!\mac0|receiver|Add1~0_combout\)))) # (!\mac0|receiver|counter\(1) & (!\mac0|receiver|Add1~2_combout\ & 
-- (\mac0|receiver|counter\(0) $ (!\mac0|receiver|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(1),
	datab => \mac0|receiver|counter\(0),
	datac => \mac0|receiver|Add1~2_combout\,
	datad => \mac0|receiver|Add1~0_combout\,
	combout => \mac0|receiver|Equal3~1_combout\);

-- Location: LCCOMB_X73_Y70_N26
\mac0|receiver|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~2_combout\ = (\mac0|receiver|counter\(3) & (\mac0|receiver|Add1~6_combout\ & (\mac0|receiver|counter\(2) $ (!\mac0|receiver|Add1~4_combout\)))) # (!\mac0|receiver|counter\(3) & (!\mac0|receiver|Add1~6_combout\ & 
-- (\mac0|receiver|counter\(2) $ (!\mac0|receiver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(3),
	datab => \mac0|receiver|counter\(2),
	datac => \mac0|receiver|Add1~4_combout\,
	datad => \mac0|receiver|Add1~6_combout\,
	combout => \mac0|receiver|Equal3~2_combout\);

-- Location: LCCOMB_X73_Y70_N16
\mac0|receiver|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~4_combout\ = (\mac0|receiver|counter\(7) & (\mac0|receiver|Add1~14_combout\ & (\mac0|receiver|counter\(6) $ (!\mac0|receiver|Add1~12_combout\)))) # (!\mac0|receiver|counter\(7) & (!\mac0|receiver|Add1~14_combout\ & 
-- (\mac0|receiver|counter\(6) $ (!\mac0|receiver|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(7),
	datab => \mac0|receiver|counter\(6),
	datac => \mac0|receiver|Add1~12_combout\,
	datad => \mac0|receiver|Add1~14_combout\,
	combout => \mac0|receiver|Equal3~4_combout\);

-- Location: LCCOMB_X73_Y70_N2
\mac0|receiver|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~5_combout\ = (\mac0|receiver|Equal3~3_combout\ & (\mac0|receiver|Equal3~1_combout\ & (\mac0|receiver|Equal3~2_combout\ & \mac0|receiver|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Equal3~3_combout\,
	datab => \mac0|receiver|Equal3~1_combout\,
	datac => \mac0|receiver|Equal3~2_combout\,
	datad => \mac0|receiver|Equal3~4_combout\,
	combout => \mac0|receiver|Equal3~5_combout\);

-- Location: LCCOMB_X73_Y70_N12
\mac0|receiver|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~7_combout\ = (\mac0|receiver|Equal3~6_combout\ & (\mac0|receiver|Equal3~5_combout\ & (\mac0|receiver|counter\(14) $ (!\mac0|receiver|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(14),
	datab => \mac0|receiver|Equal3~6_combout\,
	datac => \mac0|receiver|Add1~28_combout\,
	datad => \mac0|receiver|Equal3~5_combout\,
	combout => \mac0|receiver|Equal3~7_combout\);

-- Location: LCCOMB_X73_Y70_N10
\mac0|receiver|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal3~10_combout\ = (\mac0|receiver|Equal3~9_combout\ & (!\mac0|receiver|Add1~32_combout\ & (\mac0|receiver|Equal3~0_combout\ & \mac0|receiver|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Equal3~9_combout\,
	datab => \mac0|receiver|Add1~32_combout\,
	datac => \mac0|receiver|Equal3~0_combout\,
	datad => \mac0|receiver|Equal3~7_combout\,
	combout => \mac0|receiver|Equal3~10_combout\);

-- Location: LCCOMB_X73_Y70_N20
\mac0|receiver|current_frame_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~18_combout\ = (!\mac0|receiver|current_frame_state~17_combout\ & (((\mac0|receiver|current_frame_state.CRC~q\) # (!\mac0|receiver|Equal3~10_combout\)) # (!\mac0|receiver|current_frame_state.PAYLOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.PAYLOAD~q\,
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state~17_combout\,
	datad => \mac0|receiver|Equal3~10_combout\,
	combout => \mac0|receiver|current_frame_state~18_combout\);

-- Location: LCCOMB_X75_Y70_N2
\mac0|receiver|current_frame_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~19_combout\ = ((\mac0|receiver|current_frame_state~18_combout\ & ((\mac0|receiver|Equal2~0_combout\) # (!\mac0|receiver|current_frame_state.LEN~q\)))) # (!\mac0|receiver|byte_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.LEN~q\,
	datab => \mac0|receiver|Equal2~0_combout\,
	datac => \mac0|receiver|byte_ready~q\,
	datad => \mac0|receiver|current_frame_state~18_combout\,
	combout => \mac0|receiver|current_frame_state~19_combout\);

-- Location: LCCOMB_X75_Y70_N26
\mac0|receiver|current_frame_state.MAC_SOURCE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state.MAC_SOURCE~0_combout\ = (\mac0|receiver|current_frame_state~19_combout\ & (\mac0|receiver|current_frame_state~10_combout\ & ((\mac0|receiver|current_frame_state.MAC_SOURCE~q\)))) # 
-- (!\mac0|receiver|current_frame_state~19_combout\ & (((\mac0|receiver|current_frame_state.MAC_DESTINATION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state~10_combout\,
	datab => \mac0|receiver|current_frame_state.MAC_DESTINATION~q\,
	datac => \mac0|receiver|current_frame_state.MAC_SOURCE~q\,
	datad => \mac0|receiver|current_frame_state~19_combout\,
	combout => \mac0|receiver|current_frame_state.MAC_SOURCE~0_combout\);

-- Location: FF_X75_Y70_N27
\mac0|receiver|current_frame_state.MAC_SOURCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state.MAC_SOURCE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.MAC_SOURCE~q\);

-- Location: LCCOMB_X75_Y70_N30
\mac0|receiver|current_frame_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~11_combout\ = (!\mac0|receiver|current_frame_state.CRC~q\ & ((\mac0|receiver|current_frame_state.MAC_DESTINATION~q\) # (\mac0|receiver|current_frame_state.MAC_SOURCE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_frame_state.MAC_DESTINATION~q\,
	datac => \mac0|receiver|current_frame_state.MAC_SOURCE~q\,
	datad => \mac0|receiver|current_frame_state.CRC~q\,
	combout => \mac0|receiver|current_frame_state~11_combout\);

-- Location: LCCOMB_X75_Y70_N20
\mac0|receiver|current_frame_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~12_combout\ = (\mac0|receiver|current_frame_state.LEN~q\ & (((\mac0|receiver|current_frame_state~11_combout\ & \mac0|receiver|Equal1~4_combout\)) # (!\mac0|receiver|Equal2~0_combout\))) # 
-- (!\mac0|receiver|current_frame_state.LEN~q\ & (((\mac0|receiver|current_frame_state~11_combout\ & \mac0|receiver|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.LEN~q\,
	datab => \mac0|receiver|Equal2~0_combout\,
	datac => \mac0|receiver|current_frame_state~11_combout\,
	datad => \mac0|receiver|Equal1~4_combout\,
	combout => \mac0|receiver|current_frame_state~12_combout\);

-- Location: LCCOMB_X75_Y70_N18
\mac0|receiver|current_frame_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~13_combout\ = (!\mac0|receiver|current_frame_state~12_combout\ & ((!\mac0|receiver|current_receive_state~10_combout\) # (!\mac0|receiver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|Equal1~3_combout\,
	datac => \mac0|receiver|current_receive_state~10_combout\,
	datad => \mac0|receiver|current_frame_state~12_combout\,
	combout => \mac0|receiver|current_frame_state~13_combout\);

-- Location: LCCOMB_X75_Y70_N28
\mac0|receiver|current_frame_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~14_combout\ = ((\mac0|receiver|current_frame_state~13_combout\ & ((!\mac0|receiver|Equal3~10_combout\) # (!\mac0|receiver|current_frame_state.PAYLOAD~q\)))) # (!\mac0|receiver|byte_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|byte_ready~q\,
	datab => \mac0|receiver|current_frame_state~13_combout\,
	datac => \mac0|receiver|current_frame_state.PAYLOAD~q\,
	datad => \mac0|receiver|Equal3~10_combout\,
	combout => \mac0|receiver|current_frame_state~14_combout\);

-- Location: LCCOMB_X75_Y70_N4
\mac0|receiver|current_frame_state.PAYLOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state.PAYLOAD~0_combout\ = (\mac0|receiver|current_frame_state~14_combout\ & (\mac0|receiver|current_frame_state~10_combout\ & ((\mac0|receiver|current_frame_state.PAYLOAD~q\)))) # 
-- (!\mac0|receiver|current_frame_state~14_combout\ & (((\mac0|receiver|current_frame_state.LEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state~10_combout\,
	datab => \mac0|receiver|current_frame_state.LEN~q\,
	datac => \mac0|receiver|current_frame_state.PAYLOAD~q\,
	datad => \mac0|receiver|current_frame_state~14_combout\,
	combout => \mac0|receiver|current_frame_state.PAYLOAD~0_combout\);

-- Location: FF_X75_Y70_N5
\mac0|receiver|current_frame_state.PAYLOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state.PAYLOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.PAYLOAD~q\);

-- Location: LCCOMB_X75_Y70_N0
\mac0|receiver|current_frame_state.CRC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state.CRC~0_combout\ = (\mac0|receiver|current_frame_state~14_combout\ & (\mac0|receiver|current_frame_state~10_combout\ & ((\mac0|receiver|current_frame_state.CRC~q\)))) # (!\mac0|receiver|current_frame_state~14_combout\ & 
-- (((\mac0|receiver|current_frame_state.PAYLOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state~10_combout\,
	datab => \mac0|receiver|current_frame_state.PAYLOAD~q\,
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|current_frame_state~14_combout\,
	combout => \mac0|receiver|current_frame_state.CRC~0_combout\);

-- Location: FF_X75_Y70_N1
\mac0|receiver|current_frame_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state.CRC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.CRC~q\);

-- Location: LCCOMB_X73_Y70_N18
\mac0|receiver|current_receive_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~10_combout\ = (\mac0|receiver|counter\(1) & (\mac0|receiver|current_frame_state.CRC~q\ & (\mac0|receiver|counter\(0) & !\mac0|receiver|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(1),
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|counter\(0),
	datad => \mac0|receiver|counter\(2),
	combout => \mac0|receiver|current_receive_state~10_combout\);

-- Location: LCCOMB_X69_Y70_N28
\mac0|receiver|current_receive_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~12_combout\ = (\mac0|receiver|current_receive_state.FIRST~q\ & (((!\mac0|receiver|byte_ready~q\) # (!\mac0|receiver|current_receive_state~10_combout\)) # (!\mac0|receiver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Equal1~3_combout\,
	datab => \mac0|receiver|current_receive_state~10_combout\,
	datac => \mac0|receiver|byte_ready~q\,
	datad => \mac0|receiver|current_receive_state.FIRST~q\,
	combout => \mac0|receiver|current_receive_state~12_combout\);

-- Location: FF_X69_Y70_N29
\mac0|receiver|current_receive_state.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_receive_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_receive_state.SECOND~q\);

-- Location: LCCOMB_X75_Y70_N22
\mac0|receiver|current_frame_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state~10_combout\ = (\mac0|receiver|current_frame_state.IDLE~q\) # (!\mac0|receiver|current_receive_state.SECOND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	combout => \mac0|receiver|current_frame_state~10_combout\);

-- Location: LCCOMB_X75_Y70_N12
\mac0|receiver|current_frame_state.LEN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_frame_state.LEN~0_combout\ = (\mac0|receiver|current_frame_state~19_combout\ & (\mac0|receiver|current_frame_state~10_combout\ & ((\mac0|receiver|current_frame_state.LEN~q\)))) # (!\mac0|receiver|current_frame_state~19_combout\ & 
-- (((\mac0|receiver|current_frame_state.MAC_SOURCE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state~10_combout\,
	datab => \mac0|receiver|current_frame_state.MAC_SOURCE~q\,
	datac => \mac0|receiver|current_frame_state.LEN~q\,
	datad => \mac0|receiver|current_frame_state~19_combout\,
	combout => \mac0|receiver|current_frame_state.LEN~0_combout\);

-- Location: FF_X75_Y70_N13
\mac0|receiver|current_frame_state.LEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_frame_state.LEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_frame_state.LEN~q\);

-- Location: LCCOMB_X73_Y70_N6
\mac0|receiver|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector28~0_combout\ = (\mac0|receiver|current_frame_state.LEN~q\ & (!\mac0|receiver|Equal2~0_combout\)) # (!\mac0|receiver|current_frame_state.LEN~q\ & ((!\mac0|receiver|current_frame_state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.LEN~q\,
	datab => \mac0|receiver|Equal2~0_combout\,
	datad => \mac0|receiver|current_frame_state~18_combout\,
	combout => \mac0|receiver|Selector28~0_combout\);

-- Location: FF_X73_Y70_N19
\mac0|receiver|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[0]~16_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(0));

-- Location: LCCOMB_X72_Y70_N2
\mac0|receiver|counter[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[1]~18_combout\ = (\mac0|receiver|counter\(1) & (!\mac0|receiver|counter[0]~17\)) # (!\mac0|receiver|counter\(1) & ((\mac0|receiver|counter[0]~17\) # (GND)))
-- \mac0|receiver|counter[1]~19\ = CARRY((!\mac0|receiver|counter[0]~17\) # (!\mac0|receiver|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(1),
	datad => VCC,
	cin => \mac0|receiver|counter[0]~17\,
	combout => \mac0|receiver|counter[1]~18_combout\,
	cout => \mac0|receiver|counter[1]~19\);

-- Location: FF_X72_Y70_N3
\mac0|receiver|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[1]~18_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(1));

-- Location: LCCOMB_X72_Y70_N4
\mac0|receiver|counter[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[2]~20_combout\ = (\mac0|receiver|counter\(2) & (\mac0|receiver|counter[1]~19\ $ (GND))) # (!\mac0|receiver|counter\(2) & (!\mac0|receiver|counter[1]~19\ & VCC))
-- \mac0|receiver|counter[2]~21\ = CARRY((\mac0|receiver|counter\(2) & !\mac0|receiver|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(2),
	datad => VCC,
	cin => \mac0|receiver|counter[1]~19\,
	combout => \mac0|receiver|counter[2]~20_combout\,
	cout => \mac0|receiver|counter[2]~21\);

-- Location: FF_X72_Y70_N5
\mac0|receiver|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|counter[2]~20_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(2));

-- Location: LCCOMB_X72_Y70_N6
\mac0|receiver|counter[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|counter[3]~22_combout\ = (\mac0|receiver|counter\(3) & (!\mac0|receiver|counter[2]~21\)) # (!\mac0|receiver|counter\(3) & ((\mac0|receiver|counter[2]~21\) # (GND)))
-- \mac0|receiver|counter[3]~23\ = CARRY((!\mac0|receiver|counter[2]~21\) # (!\mac0|receiver|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|counter\(3),
	datad => VCC,
	cin => \mac0|receiver|counter[2]~21\,
	combout => \mac0|receiver|counter[3]~22_combout\,
	cout => \mac0|receiver|counter[3]~23\);

-- Location: FF_X73_Y70_N1
\mac0|receiver|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[3]~22_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(3));

-- Location: FF_X73_Y70_N23
\mac0|receiver|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|counter[4]~25_combout\,
	sclr => \mac0|receiver|Selector28~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|counter\(4));

-- Location: LCCOMB_X73_Y70_N14
\mac0|receiver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal1~0_combout\ = (!\mac0|receiver|counter\(4) & (!\mac0|receiver|counter\(5) & (!\mac0|receiver|counter\(6) & !\mac0|receiver|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(4),
	datab => \mac0|receiver|counter\(5),
	datac => \mac0|receiver|counter\(6),
	datad => \mac0|receiver|counter\(3),
	combout => \mac0|receiver|Equal1~0_combout\);

-- Location: LCCOMB_X73_Y70_N4
\mac0|receiver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal1~1_combout\ = (!\mac0|receiver|counter\(7) & (!\mac0|receiver|counter\(10) & (!\mac0|receiver|counter\(8) & !\mac0|receiver|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(7),
	datab => \mac0|receiver|counter\(10),
	datac => \mac0|receiver|counter\(8),
	datad => \mac0|receiver|counter\(9),
	combout => \mac0|receiver|Equal1~1_combout\);

-- Location: LCCOMB_X73_Y70_N30
\mac0|receiver|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal1~2_combout\ = (!\mac0|receiver|counter\(13) & (!\mac0|receiver|counter\(12) & (!\mac0|receiver|counter\(11) & !\mac0|receiver|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|counter\(13),
	datab => \mac0|receiver|counter\(12),
	datac => \mac0|receiver|counter\(11),
	datad => \mac0|receiver|counter\(14),
	combout => \mac0|receiver|Equal1~2_combout\);

-- Location: LCCOMB_X74_Y70_N22
\mac0|receiver|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Equal1~3_combout\ = (\mac0|receiver|Equal1~0_combout\ & (!\mac0|receiver|counter\(15) & (\mac0|receiver|Equal1~1_combout\ & \mac0|receiver|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|Equal1~0_combout\,
	datab => \mac0|receiver|counter\(15),
	datac => \mac0|receiver|Equal1~1_combout\,
	datad => \mac0|receiver|Equal1~2_combout\,
	combout => \mac0|receiver|Equal1~3_combout\);

-- Location: LCCOMB_X69_Y70_N0
\mac0|receiver|current_receive_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~11_combout\ = (\mac0|receiver|byte_ready~q\ & (\mac0|receiver|Equal1~3_combout\ & \mac0|receiver|current_receive_state~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|byte_ready~q\,
	datac => \mac0|receiver|Equal1~3_combout\,
	datad => \mac0|receiver|current_receive_state~10_combout\,
	combout => \mac0|receiver|current_receive_state~11_combout\);

-- Location: LCCOMB_X69_Y70_N12
\mac0|receiver|current_receive_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~16_combout\ = (!\mac0|receiver|current_receive_state~11_combout\ & ((\ENET0_RX_DV~input_o\) # (\mac0|receiver|current_receive_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DV~input_o\,
	datac => \mac0|receiver|current_receive_state.IDLE~q\,
	datad => \mac0|receiver|current_receive_state~11_combout\,
	combout => \mac0|receiver|current_receive_state~16_combout\);

-- Location: FF_X69_Y70_N13
\mac0|receiver|current_receive_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_receive_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_receive_state.IDLE~q\);

-- Location: LCCOMB_X69_Y70_N10
\mac0|receiver|current_receive_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~14_combout\ = (!\mac0|receiver|current_receive_state.IDLE~q\ & \ENET0_RX_DV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state.IDLE~q\,
	datac => \ENET0_RX_DV~input_o\,
	combout => \mac0|receiver|current_receive_state~14_combout\);

-- Location: LCCOMB_X69_Y70_N22
\mac0|receiver|current_receive_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|current_receive_state~15_combout\ = (!\mac0|receiver|current_receive_state~11_combout\ & ((\mac0|receiver|current_receive_state~14_combout\) # ((!\mac0|receiver|Equal0~0_combout\ & \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state~14_combout\,
	datab => \mac0|receiver|Equal0~0_combout\,
	datac => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datad => \mac0|receiver|current_receive_state~11_combout\,
	combout => \mac0|receiver|current_receive_state~15_combout\);

-- Location: FF_X69_Y70_N23
\mac0|receiver|current_receive_state.PREAMBLE_SFD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|current_receive_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\);

-- Location: LCCOMB_X69_Y70_N26
\mac0|receiver|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|Selector12~0_combout\ = (\mac0|receiver|current_receive_state.SECOND~q\) # ((\mac0|receiver|byte_ready~q\ & ((\mac0|receiver|current_receive_state.PREAMBLE_SFD~q\) # (!\mac0|receiver|current_receive_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_receive_state.PREAMBLE_SFD~q\,
	datab => \mac0|receiver|current_receive_state.SECOND~q\,
	datac => \mac0|receiver|byte_ready~q\,
	datad => \mac0|receiver|current_receive_state.IDLE~q\,
	combout => \mac0|receiver|Selector12~0_combout\);

-- Location: FF_X69_Y70_N27
\mac0|receiver|byte_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|byte_ready~q\);

-- Location: LCCOMB_X59_Y4_N20
\mac0|receiver|write_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_ready~feeder_combout\ = \mac0|receiver|byte_ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|byte_ready~q\,
	combout => \mac0|receiver|write_ready~feeder_combout\);

-- Location: FF_X59_Y4_N21
\mac0|receiver|write_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|write_ready~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_ready~q\);

-- Location: CLKCTRL_G17
\mac0|receiver|write_ready~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mac0|receiver|write_ready~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mac0|receiver|write_ready~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y70_N20
\mac0|receiver|rx_ram|ram~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|ram~21_combout\ = (\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|current_frame_state.CRC~q\,
	combout => \mac0|receiver|rx_ram|ram~21_combout\);

-- Location: FF_X75_Y71_N3
\mac0|receiver|rx_ram|is_writing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|ram~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|is_writing~q\);

-- Location: LCCOMB_X75_Y71_N4
\mac0|receiver|rx_ram|writer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|writer~0_combout\ = (\mac0|receiver|rx_ram|is_writing~q\ & ((\mac0|receiver|current_frame_state.CRC~q\) # (!\mac0|receiver|current_frame_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|writer~0_combout\);

-- Location: LCCOMB_X77_Y71_N0
\mac0|receiver|rx_ram|backup_write_addr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~11_combout\ = (\mac0|receiver|rx_ram|write_addr\(10) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(10),
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~11_combout\);

-- Location: LCCOMB_X77_Y71_N16
\mac0|receiver|rx_ram|backup_write_addr[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\ = \mac0|receiver|rx_ram|is_writing~q\ $ (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datac => \mac0|receiver|rx_ram|is_writing~q\,
	datad => \mac0|receiver|current_frame_state.CRC~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\);

-- Location: FF_X77_Y71_N1
\mac0|receiver|rx_ram|backup_write_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~11_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(10));

-- Location: LCCOMB_X77_Y71_N24
\mac0|receiver|rx_ram|backup_write_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~0_combout\ = (\mac0|receiver|rx_ram|write_addr\(0) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|is_writing~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(0),
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|current_frame_state.CRC~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~0_combout\);

-- Location: FF_X77_Y71_N25
\mac0|receiver|rx_ram|backup_write_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~0_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(0));

-- Location: LCCOMB_X77_Y71_N18
\mac0|receiver|rx_ram|backup_write_addr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~6_combout\ = (\mac0|receiver|rx_ram|write_addr\(5) & (((!\mac0|receiver|current_frame_state.CRC~q\ & \mac0|receiver|current_frame_state.IDLE~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|is_writing~q\,
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|rx_ram|write_addr\(5),
	combout => \mac0|receiver|rx_ram|backup_write_addr~6_combout\);

-- Location: FF_X77_Y71_N19
\mac0|receiver|rx_ram|backup_write_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~6_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(5));

-- Location: LCCOMB_X77_Y71_N12
\mac0|receiver|rx_ram|backup_write_addr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~5_combout\ = (\mac0|receiver|rx_ram|write_addr\(4) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|is_writing~q\,
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|write_addr\(4),
	combout => \mac0|receiver|rx_ram|backup_write_addr~5_combout\);

-- Location: FF_X77_Y71_N13
\mac0|receiver|rx_ram|backup_write_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~5_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(4));

-- Location: LCCOMB_X77_Y71_N4
\mac0|receiver|rx_ram|backup_write_addr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~3_combout\ = (\mac0|receiver|rx_ram|write_addr\(2) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|is_writing~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(2),
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|current_frame_state.CRC~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~3_combout\);

-- Location: FF_X77_Y71_N5
\mac0|receiver|rx_ram|backup_write_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~3_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(2));

-- Location: LCCOMB_X77_Y71_N2
\mac0|receiver|rx_ram|backup_write_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~2_combout\ = (\mac0|receiver|rx_ram|write_addr\(1) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|rx_ram|write_addr\(1),
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~2_combout\);

-- Location: FF_X77_Y71_N3
\mac0|receiver|rx_ram|backup_write_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~2_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(1));

-- Location: LCCOMB_X76_Y71_N4
\mac0|receiver|rx_ram|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~0_combout\ = \mac0|receiver|rx_ram|write_addr\(0) $ (VCC)
-- \mac0|receiver|rx_ram|Add1~1\ = CARRY(\mac0|receiver|rx_ram|write_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(0),
	datad => VCC,
	combout => \mac0|receiver|rx_ram|Add1~0_combout\,
	cout => \mac0|receiver|rx_ram|Add1~1\);

-- Location: LCCOMB_X76_Y71_N6
\mac0|receiver|rx_ram|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~2_combout\ = (\mac0|receiver|rx_ram|write_addr\(1) & (!\mac0|receiver|rx_ram|Add1~1\)) # (!\mac0|receiver|rx_ram|write_addr\(1) & ((\mac0|receiver|rx_ram|Add1~1\) # (GND)))
-- \mac0|receiver|rx_ram|Add1~3\ = CARRY((!\mac0|receiver|rx_ram|Add1~1\) # (!\mac0|receiver|rx_ram|write_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|write_addr\(1),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~1\,
	combout => \mac0|receiver|rx_ram|Add1~2_combout\,
	cout => \mac0|receiver|rx_ram|Add1~3\);

-- Location: LCCOMB_X76_Y71_N2
\mac0|receiver|rx_ram|write_addr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~4_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(1) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((!\mac0|receiver|rx_ram|write_addr~2_combout\ & \mac0|receiver|rx_ram|Add1~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(1) & (!\mac0|receiver|rx_ram|write_addr~2_combout\ & ((\mac0|receiver|rx_ram|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(1),
	datab => \mac0|receiver|rx_ram|write_addr~2_combout\,
	datac => \mac0|receiver|rx_ram|writer~0_combout\,
	datad => \mac0|receiver|rx_ram|Add1~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~4_combout\);

-- Location: LCCOMB_X74_Y71_N6
\mac0|receiver|write_discard~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~3_combout\ = (\mac0|receiver|payload_length\(4) & (\mac0|receiver|payload_length\(3) & ((\mac0|receiver|payload_length\(1)) # (\mac0|receiver|payload_length\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(4),
	datab => \mac0|receiver|payload_length\(1),
	datac => \mac0|receiver|payload_length\(0),
	datad => \mac0|receiver|payload_length\(3),
	combout => \mac0|receiver|write_discard~3_combout\);

-- Location: LCCOMB_X74_Y71_N0
\mac0|receiver|write_discard~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~2_combout\ = (\mac0|receiver|payload_length\(7) & (\mac0|receiver|payload_length\(6) & \mac0|receiver|payload_length\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(7),
	datab => \mac0|receiver|payload_length\(6),
	datad => \mac0|receiver|payload_length\(8),
	combout => \mac0|receiver|write_discard~2_combout\);

-- Location: LCCOMB_X74_Y71_N14
\mac0|receiver|write_discard~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~4_combout\ = (\mac0|receiver|write_discard~2_combout\ & ((\mac0|receiver|payload_length\(5)) # ((\mac0|receiver|payload_length\(2) & \mac0|receiver|write_discard~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(2),
	datab => \mac0|receiver|write_discard~3_combout\,
	datac => \mac0|receiver|payload_length\(5),
	datad => \mac0|receiver|write_discard~2_combout\,
	combout => \mac0|receiver|write_discard~4_combout\);

-- Location: IOIBUF_X85_Y73_N1
\ENET0_RX_ER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_ER,
	o => \ENET0_RX_ER~input_o\);

-- Location: LCCOMB_X74_Y71_N4
\mac0|receiver|write_discard~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~0_combout\ = ((\ENET0_RX_ER~input_o\) # ((\mac0|receiver|payload_length\(12)) # (\mac0|receiver|payload_length\(13)))) # (!\ENET0_RX_DV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENET0_RX_DV~input_o\,
	datab => \ENET0_RX_ER~input_o\,
	datac => \mac0|receiver|payload_length\(12),
	datad => \mac0|receiver|payload_length\(13),
	combout => \mac0|receiver|write_discard~0_combout\);

-- Location: LCCOMB_X74_Y71_N10
\mac0|receiver|write_discard~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~1_combout\ = (\mac0|receiver|payload_length\(11)) # ((\mac0|receiver|payload_length\(14)) # ((\mac0|receiver|payload_length\(15)) # (\mac0|receiver|write_discard~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(11),
	datab => \mac0|receiver|payload_length\(14),
	datac => \mac0|receiver|payload_length\(15),
	datad => \mac0|receiver|write_discard~0_combout\,
	combout => \mac0|receiver|write_discard~1_combout\);

-- Location: LCCOMB_X74_Y71_N2
\mac0|receiver|write_discard~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_discard~5_combout\ = (\mac0|receiver|write_discard~1_combout\) # ((\mac0|receiver|payload_length\(10) & ((\mac0|receiver|payload_length\(9)) # (\mac0|receiver|write_discard~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(10),
	datab => \mac0|receiver|payload_length\(9),
	datac => \mac0|receiver|write_discard~4_combout\,
	datad => \mac0|receiver|write_discard~1_combout\,
	combout => \mac0|receiver|write_discard~5_combout\);

-- Location: LCCOMB_X75_Y71_N6
\mac0|receiver|rx_ram|write_addr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~15_combout\ = (\mac0|receiver|rx_ram|is_writing~q\ & ((\mac0|receiver|write_discard~5_combout\) # ((!\mac0|receiver|current_frame_state.CRC~q\ & \mac0|receiver|current_frame_state.IDLE~q\)))) # 
-- (!\mac0|receiver|rx_ram|is_writing~q\ & (!\mac0|receiver|current_frame_state.CRC~q\ & (\mac0|receiver|current_frame_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|is_writing~q\,
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|write_discard~5_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~15_combout\);

-- Location: FF_X76_Y71_N3
\mac0|receiver|rx_ram|write_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~4_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(1));

-- Location: LCCOMB_X76_Y71_N8
\mac0|receiver|rx_ram|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~4_combout\ = (\mac0|receiver|rx_ram|write_addr\(2) & (\mac0|receiver|rx_ram|Add1~3\ $ (GND))) # (!\mac0|receiver|rx_ram|write_addr\(2) & (!\mac0|receiver|rx_ram|Add1~3\ & VCC))
-- \mac0|receiver|rx_ram|Add1~5\ = CARRY((\mac0|receiver|rx_ram|write_addr\(2) & !\mac0|receiver|rx_ram|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|write_addr\(2),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~3\,
	combout => \mac0|receiver|rx_ram|Add1~4_combout\,
	cout => \mac0|receiver|rx_ram|Add1~5\);

-- Location: LCCOMB_X76_Y71_N28
\mac0|receiver|rx_ram|write_addr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~5_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(2) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Add1~4_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(2) & (((\mac0|receiver|rx_ram|Add1~4_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(2),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Add1~4_combout\,
	datad => \mac0|receiver|rx_ram|write_addr~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~5_combout\);

-- Location: FF_X76_Y71_N29
\mac0|receiver|rx_ram|write_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~5_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(2));

-- Location: LCCOMB_X76_Y71_N10
\mac0|receiver|rx_ram|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~6_combout\ = (\mac0|receiver|rx_ram|write_addr\(3) & (!\mac0|receiver|rx_ram|Add1~5\)) # (!\mac0|receiver|rx_ram|write_addr\(3) & ((\mac0|receiver|rx_ram|Add1~5\) # (GND)))
-- \mac0|receiver|rx_ram|Add1~7\ = CARRY((!\mac0|receiver|rx_ram|Add1~5\) # (!\mac0|receiver|rx_ram|write_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|write_addr\(3),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~5\,
	combout => \mac0|receiver|rx_ram|Add1~6_combout\,
	cout => \mac0|receiver|rx_ram|Add1~7\);

-- Location: LCCOMB_X77_Y71_N22
\mac0|receiver|rx_ram|backup_write_addr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~4_combout\ = (\mac0|receiver|rx_ram|write_addr\(3) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(3),
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~4_combout\);

-- Location: FF_X77_Y71_N23
\mac0|receiver|rx_ram|backup_write_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~4_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(3));

-- Location: LCCOMB_X75_Y71_N18
\mac0|receiver|rx_ram|write_addr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~6_combout\ = (\mac0|receiver|rx_ram|writer~0_combout\ & ((\mac0|receiver|rx_ram|backup_write_addr\(3)) # ((!\mac0|receiver|rx_ram|write_addr~2_combout\ & \mac0|receiver|rx_ram|Add1~6_combout\)))) # 
-- (!\mac0|receiver|rx_ram|writer~0_combout\ & (!\mac0|receiver|rx_ram|write_addr~2_combout\ & (\mac0|receiver|rx_ram|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|writer~0_combout\,
	datab => \mac0|receiver|rx_ram|write_addr~2_combout\,
	datac => \mac0|receiver|rx_ram|Add1~6_combout\,
	datad => \mac0|receiver|rx_ram|backup_write_addr\(3),
	combout => \mac0|receiver|rx_ram|write_addr~6_combout\);

-- Location: FF_X75_Y71_N19
\mac0|receiver|rx_ram|write_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~6_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(3));

-- Location: LCCOMB_X76_Y71_N12
\mac0|receiver|rx_ram|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~8_combout\ = (\mac0|receiver|rx_ram|write_addr\(4) & (\mac0|receiver|rx_ram|Add1~7\ $ (GND))) # (!\mac0|receiver|rx_ram|write_addr\(4) & (!\mac0|receiver|rx_ram|Add1~7\ & VCC))
-- \mac0|receiver|rx_ram|Add1~9\ = CARRY((\mac0|receiver|rx_ram|write_addr\(4) & !\mac0|receiver|rx_ram|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|write_addr\(4),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~7\,
	combout => \mac0|receiver|rx_ram|Add1~8_combout\,
	cout => \mac0|receiver|rx_ram|Add1~9\);

-- Location: LCCOMB_X75_Y71_N28
\mac0|receiver|rx_ram|write_addr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~7_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(4) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Add1~8_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(4) & (((\mac0|receiver|rx_ram|Add1~8_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(4),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Add1~8_combout\,
	datad => \mac0|receiver|rx_ram|write_addr~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~7_combout\);

-- Location: FF_X75_Y71_N29
\mac0|receiver|rx_ram|write_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~7_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(4));

-- Location: LCCOMB_X76_Y71_N14
\mac0|receiver|rx_ram|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~10_combout\ = (\mac0|receiver|rx_ram|write_addr\(5) & (!\mac0|receiver|rx_ram|Add1~9\)) # (!\mac0|receiver|rx_ram|write_addr\(5) & ((\mac0|receiver|rx_ram|Add1~9\) # (GND)))
-- \mac0|receiver|rx_ram|Add1~11\ = CARRY((!\mac0|receiver|rx_ram|Add1~9\) # (!\mac0|receiver|rx_ram|write_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(5),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~9\,
	combout => \mac0|receiver|rx_ram|Add1~10_combout\,
	cout => \mac0|receiver|rx_ram|Add1~11\);

-- Location: LCCOMB_X75_Y71_N26
\mac0|receiver|rx_ram|write_addr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~8_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(5) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Add1~10_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(5) & (((\mac0|receiver|rx_ram|Add1~10_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(5),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Add1~10_combout\,
	datad => \mac0|receiver|rx_ram|write_addr~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~8_combout\);

-- Location: FF_X75_Y71_N27
\mac0|receiver|rx_ram|write_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~8_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(5));

-- Location: LCCOMB_X77_Y71_N20
\mac0|receiver|rx_ram|backup_write_addr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~7_combout\ = (\mac0|receiver|rx_ram|write_addr\(6) & (((!\mac0|receiver|current_frame_state.CRC~q\ & \mac0|receiver|current_frame_state.IDLE~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(6),
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~7_combout\);

-- Location: FF_X77_Y71_N21
\mac0|receiver|rx_ram|backup_write_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~7_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(6));

-- Location: LCCOMB_X76_Y71_N16
\mac0|receiver|rx_ram|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~12_combout\ = (\mac0|receiver|rx_ram|write_addr\(6) & (\mac0|receiver|rx_ram|Add1~11\ $ (GND))) # (!\mac0|receiver|rx_ram|write_addr\(6) & (!\mac0|receiver|rx_ram|Add1~11\ & VCC))
-- \mac0|receiver|rx_ram|Add1~13\ = CARRY((\mac0|receiver|rx_ram|write_addr\(6) & !\mac0|receiver|rx_ram|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(6),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~11\,
	combout => \mac0|receiver|rx_ram|Add1~12_combout\,
	cout => \mac0|receiver|rx_ram|Add1~13\);

-- Location: LCCOMB_X75_Y71_N8
\mac0|receiver|rx_ram|write_addr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~9_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(6) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((!\mac0|receiver|rx_ram|write_addr~2_combout\ & \mac0|receiver|rx_ram|Add1~12_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(6) & (!\mac0|receiver|rx_ram|write_addr~2_combout\ & ((\mac0|receiver|rx_ram|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(6),
	datab => \mac0|receiver|rx_ram|write_addr~2_combout\,
	datac => \mac0|receiver|rx_ram|writer~0_combout\,
	datad => \mac0|receiver|rx_ram|Add1~12_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~9_combout\);

-- Location: FF_X75_Y71_N9
\mac0|receiver|rx_ram|write_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~9_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(6));

-- Location: LCCOMB_X77_Y71_N14
\mac0|receiver|rx_ram|backup_write_addr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~8_combout\ = (\mac0|receiver|rx_ram|write_addr\(7) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(7),
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~8_combout\);

-- Location: FF_X77_Y71_N15
\mac0|receiver|rx_ram|backup_write_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~8_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(7));

-- Location: LCCOMB_X76_Y71_N18
\mac0|receiver|rx_ram|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~14_combout\ = (\mac0|receiver|rx_ram|write_addr\(7) & (!\mac0|receiver|rx_ram|Add1~13\)) # (!\mac0|receiver|rx_ram|write_addr\(7) & ((\mac0|receiver|rx_ram|Add1~13\) # (GND)))
-- \mac0|receiver|rx_ram|Add1~15\ = CARRY((!\mac0|receiver|rx_ram|Add1~13\) # (!\mac0|receiver|rx_ram|write_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(7),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~13\,
	combout => \mac0|receiver|rx_ram|Add1~14_combout\,
	cout => \mac0|receiver|rx_ram|Add1~15\);

-- Location: LCCOMB_X75_Y71_N10
\mac0|receiver|rx_ram|write_addr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~10_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(7) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((!\mac0|receiver|rx_ram|write_addr~2_combout\ & \mac0|receiver|rx_ram|Add1~14_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(7) & (!\mac0|receiver|rx_ram|write_addr~2_combout\ & ((\mac0|receiver|rx_ram|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(7),
	datab => \mac0|receiver|rx_ram|write_addr~2_combout\,
	datac => \mac0|receiver|rx_ram|writer~0_combout\,
	datad => \mac0|receiver|rx_ram|Add1~14_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~10_combout\);

-- Location: FF_X75_Y71_N11
\mac0|receiver|rx_ram|write_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~10_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(7));

-- Location: LCCOMB_X75_Y71_N0
\mac0|receiver|rx_ram|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal2~1_combout\ = (\mac0|receiver|rx_ram|write_addr\(5) & (\mac0|receiver|rx_ram|write_addr\(4) & (\mac0|receiver|rx_ram|write_addr\(6) & \mac0|receiver|rx_ram|write_addr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(5),
	datab => \mac0|receiver|rx_ram|write_addr\(4),
	datac => \mac0|receiver|rx_ram|write_addr\(6),
	datad => \mac0|receiver|rx_ram|write_addr\(7),
	combout => \mac0|receiver|rx_ram|Equal2~1_combout\);

-- Location: LCCOMB_X77_Y71_N6
\mac0|receiver|rx_ram|backup_write_addr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~10_combout\ = (\mac0|receiver|rx_ram|write_addr\(9) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(9),
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~10_combout\);

-- Location: FF_X77_Y71_N7
\mac0|receiver|rx_ram|backup_write_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~10_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(9));

-- Location: LCCOMB_X77_Y71_N8
\mac0|receiver|rx_ram|backup_write_addr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~9_combout\ = (\mac0|receiver|rx_ram|write_addr\(8) & (((!\mac0|receiver|current_frame_state.CRC~q\ & \mac0|receiver|current_frame_state.IDLE~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|is_writing~q\,
	datab => \mac0|receiver|current_frame_state.CRC~q\,
	datac => \mac0|receiver|current_frame_state.IDLE~q\,
	datad => \mac0|receiver|rx_ram|write_addr\(8),
	combout => \mac0|receiver|rx_ram|backup_write_addr~9_combout\);

-- Location: FF_X77_Y71_N9
\mac0|receiver|rx_ram|backup_write_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~9_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(8));

-- Location: LCCOMB_X76_Y71_N20
\mac0|receiver|rx_ram|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~16_combout\ = (\mac0|receiver|rx_ram|write_addr\(8) & (\mac0|receiver|rx_ram|Add1~15\ $ (GND))) # (!\mac0|receiver|rx_ram|write_addr\(8) & (!\mac0|receiver|rx_ram|Add1~15\ & VCC))
-- \mac0|receiver|rx_ram|Add1~17\ = CARRY((\mac0|receiver|rx_ram|write_addr\(8) & !\mac0|receiver|rx_ram|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(8),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~15\,
	combout => \mac0|receiver|rx_ram|Add1~16_combout\,
	cout => \mac0|receiver|rx_ram|Add1~17\);

-- Location: LCCOMB_X75_Y71_N16
\mac0|receiver|rx_ram|write_addr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~11_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(8) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Add1~16_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(8) & (((\mac0|receiver|rx_ram|Add1~16_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(8),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Add1~16_combout\,
	datad => \mac0|receiver|rx_ram|write_addr~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~11_combout\);

-- Location: FF_X75_Y71_N17
\mac0|receiver|rx_ram|write_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~11_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(8));

-- Location: LCCOMB_X76_Y71_N22
\mac0|receiver|rx_ram|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~18_combout\ = (\mac0|receiver|rx_ram|write_addr\(9) & (!\mac0|receiver|rx_ram|Add1~17\)) # (!\mac0|receiver|rx_ram|write_addr\(9) & ((\mac0|receiver|rx_ram|Add1~17\) # (GND)))
-- \mac0|receiver|rx_ram|Add1~19\ = CARRY((!\mac0|receiver|rx_ram|Add1~17\) # (!\mac0|receiver|rx_ram|write_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(9),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~17\,
	combout => \mac0|receiver|rx_ram|Add1~18_combout\,
	cout => \mac0|receiver|rx_ram|Add1~19\);

-- Location: LCCOMB_X76_Y71_N30
\mac0|receiver|rx_ram|write_addr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~12_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(9) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Add1~18_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(9) & (((\mac0|receiver|rx_ram|Add1~18_combout\ & !\mac0|receiver|rx_ram|write_addr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(9),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Add1~18_combout\,
	datad => \mac0|receiver|rx_ram|write_addr~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~12_combout\);

-- Location: FF_X76_Y71_N31
\mac0|receiver|rx_ram|write_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~12_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(9));

-- Location: LCCOMB_X77_Y71_N10
\mac0|receiver|rx_ram|backup_write_addr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|backup_write_addr~12_combout\ = (\mac0|receiver|rx_ram|write_addr\(11) & (((\mac0|receiver|current_frame_state.IDLE~q\ & !\mac0|receiver|current_frame_state.CRC~q\)) # (!\mac0|receiver|rx_ram|is_writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|current_frame_state.IDLE~q\,
	datab => \mac0|receiver|rx_ram|write_addr\(11),
	datac => \mac0|receiver|current_frame_state.CRC~q\,
	datad => \mac0|receiver|rx_ram|is_writing~q\,
	combout => \mac0|receiver|rx_ram|backup_write_addr~12_combout\);

-- Location: FF_X77_Y71_N11
\mac0|receiver|rx_ram|backup_write_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|backup_write_addr~12_combout\,
	ena => \mac0|receiver|rx_ram|backup_write_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|backup_write_addr\(11));

-- Location: LCCOMB_X76_Y71_N24
\mac0|receiver|rx_ram|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~20_combout\ = (\mac0|receiver|rx_ram|write_addr\(10) & (\mac0|receiver|rx_ram|Add1~19\ $ (GND))) # (!\mac0|receiver|rx_ram|write_addr\(10) & (!\mac0|receiver|rx_ram|Add1~19\ & VCC))
-- \mac0|receiver|rx_ram|Add1~21\ = CARRY((\mac0|receiver|rx_ram|write_addr\(10) & !\mac0|receiver|rx_ram|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(10),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add1~19\,
	combout => \mac0|receiver|rx_ram|Add1~20_combout\,
	cout => \mac0|receiver|rx_ram|Add1~21\);

-- Location: LCCOMB_X76_Y71_N26
\mac0|receiver|rx_ram|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add1~22_combout\ = \mac0|receiver|rx_ram|Add1~21\ $ (\mac0|receiver|rx_ram|write_addr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(11),
	cin => \mac0|receiver|rx_ram|Add1~21\,
	combout => \mac0|receiver|rx_ram|Add1~22_combout\);

-- Location: LCCOMB_X75_Y71_N20
\mac0|receiver|rx_ram|write_addr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~14_combout\ = (\mac0|receiver|rx_ram|writer~0_combout\ & (\mac0|receiver|rx_ram|backup_write_addr\(11))) # (!\mac0|receiver|rx_ram|writer~0_combout\ & (((!\mac0|receiver|rx_ram|Equal2~3_combout\ & 
-- \mac0|receiver|rx_ram|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(11),
	datab => \mac0|receiver|rx_ram|writer~0_combout\,
	datac => \mac0|receiver|rx_ram|Equal2~3_combout\,
	datad => \mac0|receiver|rx_ram|Add1~22_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~14_combout\);

-- Location: FF_X75_Y71_N21
\mac0|receiver|rx_ram|write_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~14_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(11));

-- Location: LCCOMB_X75_Y71_N22
\mac0|receiver|rx_ram|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal2~2_combout\ = (\mac0|receiver|rx_ram|write_addr\(9) & (\mac0|receiver|rx_ram|write_addr\(8) & (\mac0|receiver|rx_ram|write_addr\(10) & \mac0|receiver|rx_ram|write_addr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(9),
	datab => \mac0|receiver|rx_ram|write_addr\(8),
	datac => \mac0|receiver|rx_ram|write_addr\(10),
	datad => \mac0|receiver|rx_ram|write_addr\(11),
	combout => \mac0|receiver|rx_ram|Equal2~2_combout\);

-- Location: LCCOMB_X75_Y71_N24
\mac0|receiver|rx_ram|write_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~2_combout\ = (\mac0|receiver|rx_ram|writer~0_combout\) # ((\mac0|receiver|rx_ram|Equal2~0_combout\ & (\mac0|receiver|rx_ram|Equal2~1_combout\ & \mac0|receiver|rx_ram|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal2~0_combout\,
	datab => \mac0|receiver|rx_ram|Equal2~1_combout\,
	datac => \mac0|receiver|rx_ram|writer~0_combout\,
	datad => \mac0|receiver|rx_ram|Equal2~2_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~2_combout\);

-- Location: LCCOMB_X75_Y71_N12
\mac0|receiver|rx_ram|write_addr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~3_combout\ = (\mac0|receiver|rx_ram|backup_write_addr\(0) & ((\mac0|receiver|rx_ram|writer~0_combout\) # ((!\mac0|receiver|rx_ram|write_addr~2_combout\ & \mac0|receiver|rx_ram|Add1~0_combout\)))) # 
-- (!\mac0|receiver|rx_ram|backup_write_addr\(0) & (!\mac0|receiver|rx_ram|write_addr~2_combout\ & ((\mac0|receiver|rx_ram|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|backup_write_addr\(0),
	datab => \mac0|receiver|rx_ram|write_addr~2_combout\,
	datac => \mac0|receiver|rx_ram|writer~0_combout\,
	datad => \mac0|receiver|rx_ram|Add1~0_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~3_combout\);

-- Location: FF_X75_Y71_N13
\mac0|receiver|rx_ram|write_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~3_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(0));

-- Location: LCCOMB_X75_Y71_N30
\mac0|receiver|rx_ram|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal2~0_combout\ = (\mac0|receiver|rx_ram|write_addr\(0) & (\mac0|receiver|rx_ram|write_addr\(2) & (\mac0|receiver|rx_ram|write_addr\(1) & \mac0|receiver|rx_ram|write_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|write_addr\(0),
	datab => \mac0|receiver|rx_ram|write_addr\(2),
	datac => \mac0|receiver|rx_ram|write_addr\(1),
	datad => \mac0|receiver|rx_ram|write_addr\(3),
	combout => \mac0|receiver|rx_ram|Equal2~0_combout\);

-- Location: LCCOMB_X75_Y71_N2
\mac0|receiver|rx_ram|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal2~3_combout\ = (\mac0|receiver|rx_ram|Equal2~0_combout\ & (\mac0|receiver|rx_ram|Equal2~1_combout\ & \mac0|receiver|rx_ram|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal2~0_combout\,
	datab => \mac0|receiver|rx_ram|Equal2~1_combout\,
	datad => \mac0|receiver|rx_ram|Equal2~2_combout\,
	combout => \mac0|receiver|rx_ram|Equal2~3_combout\);

-- Location: LCCOMB_X75_Y71_N14
\mac0|receiver|rx_ram|write_addr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|write_addr~13_combout\ = (\mac0|receiver|rx_ram|writer~0_combout\ & (\mac0|receiver|rx_ram|backup_write_addr\(10))) # (!\mac0|receiver|rx_ram|writer~0_combout\ & (((!\mac0|receiver|rx_ram|Equal2~3_combout\ & 
-- \mac0|receiver|rx_ram|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|writer~0_combout\,
	datab => \mac0|receiver|rx_ram|backup_write_addr\(10),
	datac => \mac0|receiver|rx_ram|Equal2~3_combout\,
	datad => \mac0|receiver|rx_ram|Add1~20_combout\,
	combout => \mac0|receiver|rx_ram|write_addr~13_combout\);

-- Location: FF_X75_Y71_N15
\mac0|receiver|rx_ram|write_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|write_addr~13_combout\,
	ena => \mac0|receiver|rx_ram|write_addr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|write_addr\(10));

-- Location: LCCOMB_X75_Y67_N30
\mac0|receiver|rx_ram|last_good_write_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[10]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(10),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[10]~feeder_combout\);

-- Location: LCCOMB_X74_Y71_N12
\mac0|receiver|rx_ram|last_good_write_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[0]~0_combout\ = (\mac0|receiver|rx_ram|writer~0_combout\ & ((!\mac0|receiver|payload_length\(9)) # (!\mac0|receiver|payload_length\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|payload_length\(10),
	datab => \mac0|receiver|payload_length\(9),
	datad => \mac0|receiver|rx_ram|writer~0_combout\,
	combout => \mac0|receiver|rx_ram|last_good_write_addr[0]~0_combout\);

-- Location: LCCOMB_X74_Y71_N8
\mac0|receiver|rx_ram|last_good_write_addr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\ = (!\mac0|receiver|write_discard~1_combout\ & (\mac0|receiver|rx_ram|last_good_write_addr[0]~0_combout\ & ((!\mac0|receiver|write_discard~4_combout\) # (!\mac0|receiver|payload_length\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|write_discard~1_combout\,
	datab => \mac0|receiver|payload_length\(10),
	datac => \mac0|receiver|write_discard~4_combout\,
	datad => \mac0|receiver|rx_ram|last_good_write_addr[0]~0_combout\,
	combout => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\);

-- Location: FF_X75_Y67_N31
\mac0|receiver|rx_ram|last_good_write_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[10]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(10));

-- Location: LCCOMB_X75_Y67_N12
\mac0|receiver|rx_ram|last_good_write_addr[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[11]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(11),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[11]~feeder_combout\);

-- Location: FF_X75_Y67_N13
\mac0|receiver|rx_ram|last_good_write_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[11]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(11));

-- Location: LCCOMB_X75_Y67_N10
\mac0|receiver|rx_ram|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~6_combout\ = (\mac0|receiver|rx_ram|read_addr\(11) & (\mac0|receiver|rx_ram|last_good_write_addr\(11) & (\mac0|receiver|rx_ram|read_addr\(10) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(10))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(11) & (!\mac0|receiver|rx_ram|last_good_write_addr\(11) & (\mac0|receiver|rx_ram|read_addr\(10) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(11),
	datab => \mac0|receiver|rx_ram|read_addr\(10),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(10),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(11),
	combout => \mac0|receiver|rx_ram|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y67_N14
\mac0|receiver|rx_ram|last_good_write_addr[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[9]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(9),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[9]~feeder_combout\);

-- Location: FF_X75_Y67_N15
\mac0|receiver|rx_ram|last_good_write_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[9]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(9));

-- Location: LCCOMB_X75_Y67_N16
\mac0|receiver|rx_ram|last_good_write_addr[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[8]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(8),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[8]~feeder_combout\);

-- Location: FF_X75_Y67_N17
\mac0|receiver|rx_ram|last_good_write_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[8]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(8));

-- Location: LCCOMB_X75_Y67_N8
\mac0|receiver|rx_ram|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~5_combout\ = (\mac0|receiver|rx_ram|read_addr\(8) & (\mac0|receiver|rx_ram|last_good_write_addr\(8) & (\mac0|receiver|rx_ram|read_addr\(9) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(9))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(8) & (!\mac0|receiver|rx_ram|last_good_write_addr\(8) & (\mac0|receiver|rx_ram|read_addr\(9) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(8),
	datab => \mac0|receiver|rx_ram|read_addr\(9),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(9),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(8),
	combout => \mac0|receiver|rx_ram|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y67_N4
\mac0|receiver|rx_ram|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~7_combout\ = (\mac0|receiver|rx_ram|Equal0~6_combout\ & (\mac0|receiver|rx_ram|Equal0~5_combout\ & \mac0|receiver|rx_ram|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datad => \mac0|receiver|rx_ram|Equal0~4_combout\,
	combout => \mac0|receiver|rx_ram|Equal0~7_combout\);

-- Location: FF_X75_Y67_N5
\mac0|receiver|rx_ram|read_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|Add0~0_combout\,
	sload => VCC,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(0));

-- Location: LCCOMB_X76_Y67_N6
\mac0|receiver|rx_ram|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Add0~2_combout\ = (\mac0|receiver|rx_ram|read_addr\(1) & (!\mac0|receiver|rx_ram|Add0~1\)) # (!\mac0|receiver|rx_ram|read_addr\(1) & ((\mac0|receiver|rx_ram|Add0~1\) # (GND)))
-- \mac0|receiver|rx_ram|Add0~3\ = CARRY((!\mac0|receiver|rx_ram|Add0~1\) # (!\mac0|receiver|rx_ram|read_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(1),
	datad => VCC,
	cin => \mac0|receiver|rx_ram|Add0~1\,
	combout => \mac0|receiver|rx_ram|Add0~2_combout\,
	cout => \mac0|receiver|rx_ram|Add0~3\);

-- Location: FF_X76_Y67_N7
\mac0|receiver|rx_ram|read_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~2_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(1));

-- Location: FF_X76_Y67_N9
\mac0|receiver|rx_ram|read_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|Add0~4_combout\,
	ena => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_addr\(2));

-- Location: FF_X75_Y67_N23
\mac0|receiver|rx_ram|last_good_write_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|write_addr\(2),
	sload => VCC,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(2));

-- Location: LCCOMB_X75_Y67_N0
\mac0|receiver|rx_ram|last_good_write_addr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[3]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(3),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[3]~feeder_combout\);

-- Location: FF_X75_Y67_N1
\mac0|receiver|rx_ram|last_good_write_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[3]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(3));

-- Location: LCCOMB_X75_Y67_N22
\mac0|receiver|rx_ram|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~1_combout\ = (\mac0|receiver|rx_ram|read_addr\(2) & (\mac0|receiver|rx_ram|last_good_write_addr\(2) & (\mac0|receiver|rx_ram|read_addr\(3) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(3))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(2) & (!\mac0|receiver|rx_ram|last_good_write_addr\(2) & (\mac0|receiver|rx_ram|read_addr\(3) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(2),
	datab => \mac0|receiver|rx_ram|read_addr\(3),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(2),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(3),
	combout => \mac0|receiver|rx_ram|Equal0~1_combout\);

-- Location: FF_X75_Y67_N3
\mac0|receiver|rx_ram|last_good_write_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|write_addr\(1),
	sload => VCC,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(1));

-- Location: LCCOMB_X75_Y67_N24
\mac0|receiver|rx_ram|last_good_write_addr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[0]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|write_addr\(0),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[0]~feeder_combout\);

-- Location: FF_X75_Y67_N25
\mac0|receiver|rx_ram|last_good_write_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[0]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(0));

-- Location: LCCOMB_X75_Y67_N2
\mac0|receiver|rx_ram|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~0_combout\ = (\mac0|receiver|rx_ram|read_addr\(1) & (\mac0|receiver|rx_ram|last_good_write_addr\(1) & (\mac0|receiver|rx_ram|read_addr\(0) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(0))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(1) & (!\mac0|receiver|rx_ram|last_good_write_addr\(1) & (\mac0|receiver|rx_ram|read_addr\(0) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(1),
	datab => \mac0|receiver|rx_ram|read_addr\(0),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(1),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(0),
	combout => \mac0|receiver|rx_ram|Equal0~0_combout\);

-- Location: FF_X75_Y67_N27
\mac0|receiver|rx_ram|last_good_write_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|write_addr\(6),
	sload => VCC,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(6));

-- Location: LCCOMB_X75_Y67_N28
\mac0|receiver|rx_ram|last_good_write_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[7]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|write_addr\(7),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[7]~feeder_combout\);

-- Location: FF_X75_Y67_N29
\mac0|receiver|rx_ram|last_good_write_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[7]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(7));

-- Location: LCCOMB_X75_Y67_N26
\mac0|receiver|rx_ram|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~3_combout\ = (\mac0|receiver|rx_ram|read_addr\(6) & (\mac0|receiver|rx_ram|last_good_write_addr\(6) & (\mac0|receiver|rx_ram|read_addr\(7) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(7))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(6) & (!\mac0|receiver|rx_ram|last_good_write_addr\(6) & (\mac0|receiver|rx_ram|read_addr\(7) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(6),
	datab => \mac0|receiver|rx_ram|read_addr\(7),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(6),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(7),
	combout => \mac0|receiver|rx_ram|Equal0~3_combout\);

-- Location: FF_X75_Y67_N7
\mac0|receiver|rx_ram|last_good_write_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|write_addr\(4),
	sload => VCC,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(4));

-- Location: LCCOMB_X75_Y67_N20
\mac0|receiver|rx_ram|last_good_write_addr[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|last_good_write_addr[5]~feeder_combout\ = \mac0|receiver|rx_ram|write_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|write_addr\(5),
	combout => \mac0|receiver|rx_ram|last_good_write_addr[5]~feeder_combout\);

-- Location: FF_X75_Y67_N21
\mac0|receiver|rx_ram|last_good_write_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mac0|receiver|write_ready~clkctrl_outclk\,
	d => \mac0|receiver|rx_ram|last_good_write_addr[5]~feeder_combout\,
	ena => \mac0|receiver|rx_ram|last_good_write_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|last_good_write_addr\(5));

-- Location: LCCOMB_X75_Y67_N6
\mac0|receiver|rx_ram|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~2_combout\ = (\mac0|receiver|rx_ram|read_addr\(4) & (\mac0|receiver|rx_ram|last_good_write_addr\(4) & (\mac0|receiver|rx_ram|read_addr\(5) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(5))))) # 
-- (!\mac0|receiver|rx_ram|read_addr\(4) & (!\mac0|receiver|rx_ram|last_good_write_addr\(4) & (\mac0|receiver|rx_ram|read_addr\(5) $ (!\mac0|receiver|rx_ram|last_good_write_addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_addr\(4),
	datab => \mac0|receiver|rx_ram|read_addr\(5),
	datac => \mac0|receiver|rx_ram|last_good_write_addr\(4),
	datad => \mac0|receiver|rx_ram|last_good_write_addr\(5),
	combout => \mac0|receiver|rx_ram|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y67_N18
\mac0|receiver|rx_ram|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~4_combout\ = (\mac0|receiver|rx_ram|Equal0~1_combout\ & (\mac0|receiver|rx_ram|Equal0~0_combout\ & (\mac0|receiver|rx_ram|Equal0~3_combout\ & \mac0|receiver|rx_ram|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~1_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~0_combout\,
	datac => \mac0|receiver|rx_ram|Equal0~3_combout\,
	datad => \mac0|receiver|rx_ram|Equal0~2_combout\,
	combout => \mac0|receiver|rx_ram|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y67_N0
\mac0|receiver|rx_ram|Equal0~7_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|Equal0~7_wirecell_combout\ = !\mac0|receiver|rx_ram|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|rx_ram|Equal0~7_combout\,
	combout => \mac0|receiver|rx_ram|Equal0~7_wirecell_combout\);

-- Location: FF_X74_Y71_N23
\mac0|receiver|write_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(0));

-- Location: FF_X74_Y71_N29
\mac0|receiver|write_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(4));

-- Location: M9K_X78_Y68_N0
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mac.ram0_async_read_write_ring_buffer_c1217982.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac:mac0|mac_receiver:receiver|async_read_write_ring_buffer:rx_ram|altsyncram:ram_rtl_0|altsyncram_opm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mac0|receiver|rx_ram|ram~21_combout\,
	portbre => VCC,
	portbaddrstall => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\,
	clk0 => \mac0|receiver|write_ready~clkctrl_outclk\,
	clk1 => \ENET0_RX_CLK~inputclkctrl_outclk\,
	ena0 => \mac0|receiver|rx_ram|ram~21_combout\,
	portadatain => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y68_N8
\mac0|receiver|rx_ram|read_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~0_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (((!\mac0|receiver|rx_ram|Equal0~5_combout\) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)) # 
-- (!\mac0|receiver|rx_ram|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~4_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datac => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datad => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \mac0|receiver|rx_ram|read_data~0_combout\);

-- Location: FF_X79_Y68_N9
\mac0|receiver|rx_ram|read_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(0));

-- Location: LCCOMB_X79_Y64_N0
\mux|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~0_combout\ = \mac0|receiver|rx_ram|read_data\(0) $ (VCC)
-- \mux|Add1~1\ = CARRY(\mac0|receiver|rx_ram|read_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(0),
	datad => VCC,
	combout => \mux|Add1~0_combout\,
	cout => \mux|Add1~1\);

-- Location: LCCOMB_X83_Y64_N4
\mux|counter[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[0]~12_combout\ = \mux|counter\(0) $ (VCC)
-- \mux|counter[0]~13\ = CARRY(\mux|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(0),
	datad => VCC,
	combout => \mux|counter[0]~12_combout\,
	cout => \mux|counter[0]~13\);

-- Location: LCCOMB_X83_Y64_N6
\mux|counter[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[1]~14_combout\ = (\mux|counter\(1) & (!\mux|counter[0]~13\)) # (!\mux|counter\(1) & ((\mux|counter[0]~13\) # (GND)))
-- \mux|counter[1]~15\ = CARRY((!\mux|counter[0]~13\) # (!\mux|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(1),
	datad => VCC,
	cin => \mux|counter[0]~13\,
	combout => \mux|counter[1]~14_combout\,
	cout => \mux|counter[1]~15\);

-- Location: LCCOMB_X83_Y64_N8
\mux|counter[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[2]~16_combout\ = (\mux|counter\(2) & (\mux|counter[1]~15\ $ (GND))) # (!\mux|counter\(2) & (!\mux|counter[1]~15\ & VCC))
-- \mux|counter[2]~17\ = CARRY((\mux|counter\(2) & !\mux|counter[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(2),
	datad => VCC,
	cin => \mux|counter[1]~15\,
	combout => \mux|counter[2]~16_combout\,
	cout => \mux|counter[2]~17\);

-- Location: LCCOMB_X83_Y64_N10
\mux|counter[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[3]~18_combout\ = (\mux|counter\(3) & (!\mux|counter[2]~17\)) # (!\mux|counter\(3) & ((\mux|counter[2]~17\) # (GND)))
-- \mux|counter[3]~19\ = CARRY((!\mux|counter[2]~17\) # (!\mux|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(3),
	datad => VCC,
	cin => \mux|counter[2]~17\,
	combout => \mux|counter[3]~18_combout\,
	cout => \mux|counter[3]~19\);

-- Location: FF_X83_Y64_N11
\mux|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[3]~18_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(3));

-- Location: LCCOMB_X83_Y64_N12
\mux|counter[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[4]~20_combout\ = (\mux|counter\(4) & (\mux|counter[3]~19\ $ (GND))) # (!\mux|counter\(4) & (!\mux|counter[3]~19\ & VCC))
-- \mux|counter[4]~21\ = CARRY((\mux|counter\(4) & !\mux|counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(4),
	datad => VCC,
	cin => \mux|counter[3]~19\,
	combout => \mux|counter[4]~20_combout\,
	cout => \mux|counter[4]~21\);

-- Location: FF_X83_Y64_N13
\mux|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[4]~20_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(4));

-- Location: LCCOMB_X83_Y64_N14
\mux|counter[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[5]~22_combout\ = (\mux|counter\(5) & (!\mux|counter[4]~21\)) # (!\mux|counter\(5) & ((\mux|counter[4]~21\) # (GND)))
-- \mux|counter[5]~23\ = CARRY((!\mux|counter[4]~21\) # (!\mux|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(5),
	datad => VCC,
	cin => \mux|counter[4]~21\,
	combout => \mux|counter[5]~22_combout\,
	cout => \mux|counter[5]~23\);

-- Location: FF_X83_Y64_N15
\mux|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[5]~22_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(5));

-- Location: LCCOMB_X83_Y64_N16
\mux|counter[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[6]~24_combout\ = (\mux|counter\(6) & (\mux|counter[5]~23\ $ (GND))) # (!\mux|counter\(6) & (!\mux|counter[5]~23\ & VCC))
-- \mux|counter[6]~25\ = CARRY((\mux|counter\(6) & !\mux|counter[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(6),
	datad => VCC,
	cin => \mux|counter[5]~23\,
	combout => \mux|counter[6]~24_combout\,
	cout => \mux|counter[6]~25\);

-- Location: FF_X83_Y64_N17
\mux|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[6]~24_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(6));

-- Location: LCCOMB_X83_Y64_N18
\mux|counter[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[7]~26_combout\ = (\mux|counter\(7) & (!\mux|counter[6]~25\)) # (!\mux|counter\(7) & ((\mux|counter[6]~25\) # (GND)))
-- \mux|counter[7]~27\ = CARRY((!\mux|counter[6]~25\) # (!\mux|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(7),
	datad => VCC,
	cin => \mux|counter[6]~25\,
	combout => \mux|counter[7]~26_combout\,
	cout => \mux|counter[7]~27\);

-- Location: FF_X83_Y64_N19
\mux|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[7]~26_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(7));

-- Location: LCCOMB_X83_Y64_N20
\mux|counter[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[8]~28_combout\ = (\mux|counter\(8) & (\mux|counter[7]~27\ $ (GND))) # (!\mux|counter\(8) & (!\mux|counter[7]~27\ & VCC))
-- \mux|counter[8]~29\ = CARRY((\mux|counter\(8) & !\mux|counter[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(8),
	datad => VCC,
	cin => \mux|counter[7]~27\,
	combout => \mux|counter[8]~28_combout\,
	cout => \mux|counter[8]~29\);

-- Location: FF_X83_Y64_N21
\mux|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[8]~28_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(8));

-- Location: LCCOMB_X83_Y64_N22
\mux|counter[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[9]~30_combout\ = (\mux|counter\(9) & (!\mux|counter[8]~29\)) # (!\mux|counter\(9) & ((\mux|counter[8]~29\) # (GND)))
-- \mux|counter[9]~31\ = CARRY((!\mux|counter[8]~29\) # (!\mux|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(9),
	datad => VCC,
	cin => \mux|counter[8]~29\,
	combout => \mux|counter[9]~30_combout\,
	cout => \mux|counter[9]~31\);

-- Location: FF_X83_Y64_N23
\mux|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[9]~30_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(9));

-- Location: LCCOMB_X83_Y64_N30
\mux|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal1~1_combout\ = (!\mux|counter\(9) & (!\mux|counter\(7) & (!\mux|counter\(8) & !\mux|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(9),
	datab => \mux|counter\(7),
	datac => \mux|counter\(8),
	datad => \mux|counter\(6),
	combout => \mux|Equal1~1_combout\);

-- Location: LCCOMB_X83_Y64_N24
\mux|counter[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[10]~32_combout\ = (\mux|counter\(10) & (\mux|counter[9]~31\ $ (GND))) # (!\mux|counter\(10) & (!\mux|counter[9]~31\ & VCC))
-- \mux|counter[10]~33\ = CARRY((\mux|counter\(10) & !\mux|counter[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|counter\(10),
	datad => VCC,
	cin => \mux|counter[9]~31\,
	combout => \mux|counter[10]~32_combout\,
	cout => \mux|counter[10]~33\);

-- Location: FF_X83_Y64_N25
\mux|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[10]~32_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(10));

-- Location: LCCOMB_X83_Y64_N26
\mux|counter[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|counter[11]~34_combout\ = \mux|counter\(11) $ (\mux|counter[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(11),
	cin => \mux|counter[10]~33\,
	combout => \mux|counter[11]~34_combout\);

-- Location: FF_X83_Y64_N27
\mux|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[11]~34_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(11));

-- Location: LCCOMB_X83_Y64_N0
\mux|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal1~0_combout\ = (!\mux|counter\(3) & (!\mux|counter\(5) & (!\mux|counter\(4) & !\mux|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(3),
	datab => \mux|counter\(5),
	datac => \mux|counter\(4),
	datad => \mux|counter\(1),
	combout => \mux|Equal1~0_combout\);

-- Location: LCCOMB_X83_Y64_N28
\mux|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal1~2_combout\ = (\mux|Equal1~1_combout\ & (!\mux|counter\(10) & (!\mux|counter\(11) & \mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Equal1~1_combout\,
	datab => \mux|counter\(10),
	datac => \mux|counter\(11),
	datad => \mux|Equal1~0_combout\,
	combout => \mux|Equal1~2_combout\);

-- Location: LCCOMB_X82_Y64_N30
\mux|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector1~0_combout\ = (\mux|read_state.PAYLOAD_LENGTH~q\ & ((\mux|counter\(0)) # ((\mux|counter\(2)) # (!\mux|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(0),
	datab => \mux|read_state.PAYLOAD_LENGTH~q\,
	datac => \mux|counter\(2),
	datad => \mux|Equal1~2_combout\,
	combout => \mux|Selector1~0_combout\);

-- Location: FF_X81_Y64_N17
\mux|read_state.PACKET_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mux|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.PACKET_ADDR~q\);

-- Location: LCCOMB_X80_Y66_N12
\mux|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|WideOr0~combout\ = (!\mux|read_state.PACKET_BYTES~q\ & (\mux|read_state.WAIT_FOR_READ~q\ & !\mux|read_state.PACKET_ADDR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|read_state.PACKET_BYTES~q\,
	datab => \mux|read_state.WAIT_FOR_READ~q\,
	datac => \mux|read_state.PACKET_ADDR~q\,
	combout => \mux|WideOr0~combout\);

-- Location: FF_X83_Y64_N7
\mux|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[1]~14_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(1));

-- Location: FF_X83_Y64_N9
\mux|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[2]~16_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(2));

-- Location: LCCOMB_X82_Y64_N6
\mux|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector17~0_combout\ = (\mux|counter\(0) & ((\mux|read_state.PAYLOAD_LENGTH~q\) # ((\mux|counter\(2) & \mux|Equal1~2_combout\)))) # (!\mux|counter\(0) & (\mux|read_state.PAYLOAD_LENGTH~q\ & ((\mux|counter\(2)) # (!\mux|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(0),
	datab => \mux|read_state.PAYLOAD_LENGTH~q\,
	datac => \mux|counter\(2),
	datad => \mux|Equal1~2_combout\,
	combout => \mux|Selector17~0_combout\);

-- Location: FF_X83_Y64_N5
\mux|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|counter[0]~12_combout\,
	sclr => \mux|Selector17~0_combout\,
	ena => \mux|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|counter\(0));

-- Location: LCCOMB_X82_Y64_N24
\mux|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal0~0_combout\ = ((!\mux|Equal1~2_combout\) # (!\mux|counter\(2))) # (!\mux|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(0),
	datac => \mux|counter\(2),
	datad => \mux|Equal1~2_combout\,
	combout => \mux|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y64_N4
\mux|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector2~4_combout\ = (\mux|Selector2~3_combout\ & (\mux|read_state.MAC_DESTINATION~q\ & ((!\mux|Equal0~0_combout\)))) # (!\mux|Selector2~3_combout\ & (((\mux|read_state.MAC_SOURCE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|read_state.MAC_DESTINATION~q\,
	datab => \mux|read_state.MAC_SOURCE~q\,
	datac => \mux|Selector2~3_combout\,
	datad => \mux|Equal0~0_combout\,
	combout => \mux|Selector2~4_combout\);

-- Location: LCCOMB_X81_Y64_N20
\mux|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector2~5_combout\ = (\mux|Selector2~4_combout\ & ((\mux|Equal2~4_combout\) # (!\mux|read_state.PACKET_BYTES~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datac => \mux|Selector2~4_combout\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|Selector2~5_combout\);

-- Location: FF_X81_Y64_N21
\mux|read_state.MAC_SOURCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.MAC_SOURCE~q\);

-- Location: LCCOMB_X81_Y64_N14
\mux|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector3~2_combout\ = (\mux|Selector2~3_combout\ & (((\mux|read_state.MAC_SOURCE~q\ & !\mux|Equal0~0_combout\)))) # (!\mux|Selector2~3_combout\ & (\mux|read_state.PAYLOAD_LENGTH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|read_state.PAYLOAD_LENGTH~q\,
	datab => \mux|read_state.MAC_SOURCE~q\,
	datac => \mux|Selector2~3_combout\,
	datad => \mux|Equal0~0_combout\,
	combout => \mux|Selector3~2_combout\);

-- Location: LCCOMB_X81_Y64_N24
\mux|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector3~3_combout\ = (\mux|Selector3~2_combout\ & ((\mux|Equal2~4_combout\) # (!\mux|read_state.PACKET_BYTES~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datac => \mux|Selector3~2_combout\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|Selector3~3_combout\);

-- Location: FF_X81_Y64_N25
\mux|read_state.PAYLOAD_LENGTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.PAYLOAD_LENGTH~q\);

-- Location: LCCOMB_X82_Y64_N28
\mux|payload_len[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[6]~20_combout\ = (!\mux|counter\(0) & (\mux|read_state.PAYLOAD_LENGTH~q\ & (!\mux|counter\(2) & \mux|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|counter\(0),
	datab => \mux|read_state.PAYLOAD_LENGTH~q\,
	datac => \mux|counter\(2),
	datad => \mux|Equal1~2_combout\,
	combout => \mux|payload_len[6]~20_combout\);

-- Location: LCCOMB_X81_Y64_N26
\mux|payload_len[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[6]~21_combout\ = (\mux|payload_len[6]~16_combout\ & (!\mux|payload_len[6]~17_combout\ & (\mux|read_state.WAIT_FOR_READ~q\ & !\mux|payload_len[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len[6]~16_combout\,
	datab => \mux|payload_len[6]~17_combout\,
	datac => \mux|read_state.WAIT_FOR_READ~q\,
	datad => \mux|payload_len[6]~20_combout\,
	combout => \mux|payload_len[6]~21_combout\);

-- Location: FF_X80_Y64_N1
\mux|payload_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[0]~18_combout\,
	asdata => \mux|Add1~0_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(0));

-- Location: LCCOMB_X80_Y64_N2
\mux|payload_len[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[1]~22_combout\ = (\mux|payload_len\(1) & (\mux|payload_len[0]~19\ & VCC)) # (!\mux|payload_len\(1) & (!\mux|payload_len[0]~19\))
-- \mux|payload_len[1]~23\ = CARRY((!\mux|payload_len\(1) & !\mux|payload_len[0]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(1),
	datad => VCC,
	cin => \mux|payload_len[0]~19\,
	combout => \mux|payload_len[1]~22_combout\,
	cout => \mux|payload_len[1]~23\);

-- Location: FF_X74_Y70_N1
\mac0|receiver|write_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(1));

-- Location: FF_X74_Y71_N17
\mac0|receiver|write_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|current_byte\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(5));

-- Location: M9K_X78_Y69_N0
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mac.ram0_async_read_write_ring_buffer_c1217982.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac:mac0|mac_receiver:receiver|async_read_write_ring_buffer:rx_ram|altsyncram:ram_rtl_0|altsyncram_opm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mac0|receiver|rx_ram|ram~21_combout\,
	portbre => VCC,
	portbaddrstall => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\,
	clk0 => \mac0|receiver|write_ready~clkctrl_outclk\,
	clk1 => \ENET0_RX_CLK~inputclkctrl_outclk\,
	ena0 => \mac0|receiver|rx_ram|ram~21_combout\,
	portadatain => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y67_N28
\mac0|receiver|rx_ram|read_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~4_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ & (((!\mac0|receiver|rx_ram|Equal0~4_combout\) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)) # 
-- (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datac => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \mac0|receiver|rx_ram|Equal0~4_combout\,
	combout => \mac0|receiver|rx_ram|read_data~4_combout\);

-- Location: FF_X79_Y67_N29
\mac0|receiver|rx_ram|read_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(1));

-- Location: LCCOMB_X79_Y64_N2
\mux|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~2_combout\ = (\mac0|receiver|rx_ram|read_data\(1) & (\mux|Add1~1\ & VCC)) # (!\mac0|receiver|rx_ram|read_data\(1) & (!\mux|Add1~1\))
-- \mux|Add1~3\ = CARRY((!\mac0|receiver|rx_ram|read_data\(1) & !\mux|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(1),
	datad => VCC,
	cin => \mux|Add1~1\,
	combout => \mux|Add1~2_combout\,
	cout => \mux|Add1~3\);

-- Location: FF_X80_Y64_N3
\mux|payload_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[1]~22_combout\,
	asdata => \mux|Add1~2_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(1));

-- Location: LCCOMB_X80_Y64_N4
\mux|payload_len[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[2]~24_combout\ = (\mux|payload_len\(2) & ((GND) # (!\mux|payload_len[1]~23\))) # (!\mux|payload_len\(2) & (\mux|payload_len[1]~23\ $ (GND)))
-- \mux|payload_len[2]~25\ = CARRY((\mux|payload_len\(2)) # (!\mux|payload_len[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(2),
	datad => VCC,
	cin => \mux|payload_len[1]~23\,
	combout => \mux|payload_len[2]~24_combout\,
	cout => \mux|payload_len[2]~25\);

-- Location: LCCOMB_X74_Y66_N20
\mac0|receiver|write_byte[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_byte[2]~feeder_combout\ = \mac0|receiver|current_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(2),
	combout => \mac0|receiver|write_byte[2]~feeder_combout\);

-- Location: FF_X74_Y66_N21
\mac0|receiver|write_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|write_byte[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(2));

-- Location: LCCOMB_X77_Y66_N8
\mac0|receiver|write_byte[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_byte[3]~feeder_combout\ = \mac0|receiver|current_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(3),
	combout => \mac0|receiver|write_byte[3]~feeder_combout\);

-- Location: FF_X77_Y66_N9
\mac0|receiver|write_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|write_byte[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(3));

-- Location: M9K_X78_Y66_N0
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mac.ram0_async_read_write_ring_buffer_c1217982.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac:mac0|mac_receiver:receiver|async_read_write_ring_buffer:rx_ram|altsyncram:ram_rtl_0|altsyncram_opm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mac0|receiver|rx_ram|ram~21_combout\,
	portbre => VCC,
	portbaddrstall => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\,
	clk0 => \mac0|receiver|write_ready~clkctrl_outclk\,
	clk1 => \ENET0_RX_CLK~inputclkctrl_outclk\,
	ena0 => \mac0|receiver|rx_ram|ram~21_combout\,
	portadatain => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y66_N2
\mac0|receiver|rx_ram|read_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~3_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ & (((!\mac0|receiver|rx_ram|Equal0~6_combout\) # (!\mac0|receiver|rx_ram|Equal0~4_combout\)) # 
-- (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~4_combout\,
	datac => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datad => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \mac0|receiver|rx_ram|read_data~3_combout\);

-- Location: FF_X79_Y66_N3
\mac0|receiver|rx_ram|read_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(2));

-- Location: LCCOMB_X79_Y64_N4
\mux|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~4_combout\ = (\mac0|receiver|rx_ram|read_data\(2) & ((GND) # (!\mux|Add1~3\))) # (!\mac0|receiver|rx_ram|read_data\(2) & (\mux|Add1~3\ $ (GND)))
-- \mux|Add1~5\ = CARRY((\mac0|receiver|rx_ram|read_data\(2)) # (!\mux|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(2),
	datad => VCC,
	cin => \mux|Add1~3\,
	combout => \mux|Add1~4_combout\,
	cout => \mux|Add1~5\);

-- Location: FF_X80_Y64_N5
\mux|payload_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[2]~24_combout\,
	asdata => \mux|Add1~4_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(2));

-- Location: LCCOMB_X80_Y64_N6
\mux|payload_len[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[3]~26_combout\ = (\mux|payload_len\(3) & (\mux|payload_len[2]~25\ & VCC)) # (!\mux|payload_len\(3) & (!\mux|payload_len[2]~25\))
-- \mux|payload_len[3]~27\ = CARRY((!\mux|payload_len\(3) & !\mux|payload_len[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(3),
	datad => VCC,
	cin => \mux|payload_len[2]~25\,
	combout => \mux|payload_len[3]~26_combout\,
	cout => \mux|payload_len[3]~27\);

-- Location: LCCOMB_X79_Y66_N28
\mac0|receiver|rx_ram|read_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~2_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a3\ & (((!\mac0|receiver|rx_ram|Equal0~5_combout\) # (!\mac0|receiver|rx_ram|Equal0~4_combout\)) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~4_combout\,
	datac => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \mac0|receiver|rx_ram|Equal0~5_combout\,
	combout => \mac0|receiver|rx_ram|read_data~2_combout\);

-- Location: FF_X79_Y66_N29
\mac0|receiver|rx_ram|read_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(3));

-- Location: LCCOMB_X79_Y64_N6
\mux|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~6_combout\ = (\mac0|receiver|rx_ram|read_data\(3) & (\mux|Add1~5\ & VCC)) # (!\mac0|receiver|rx_ram|read_data\(3) & (!\mux|Add1~5\))
-- \mux|Add1~7\ = CARRY((!\mac0|receiver|rx_ram|read_data\(3) & !\mux|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(3),
	datad => VCC,
	cin => \mux|Add1~5\,
	combout => \mux|Add1~6_combout\,
	cout => \mux|Add1~7\);

-- Location: FF_X80_Y64_N7
\mux|payload_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[3]~26_combout\,
	asdata => \mux|Add1~6_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(3));

-- Location: LCCOMB_X80_Y64_N8
\mux|payload_len[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[4]~28_combout\ = (\mux|payload_len\(4) & ((GND) # (!\mux|payload_len[3]~27\))) # (!\mux|payload_len\(4) & (\mux|payload_len[3]~27\ $ (GND)))
-- \mux|payload_len[4]~29\ = CARRY((\mux|payload_len\(4)) # (!\mux|payload_len[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(4),
	datad => VCC,
	cin => \mux|payload_len[3]~27\,
	combout => \mux|payload_len[4]~28_combout\,
	cout => \mux|payload_len[4]~29\);

-- Location: LCCOMB_X79_Y68_N2
\mac0|receiver|rx_ram|read_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~1_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a4\ & (((!\mac0|receiver|rx_ram|Equal0~4_combout\) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)) # (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datac => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \mac0|receiver|rx_ram|Equal0~4_combout\,
	combout => \mac0|receiver|rx_ram|read_data~1_combout\);

-- Location: FF_X79_Y68_N3
\mac0|receiver|rx_ram|read_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(4));

-- Location: LCCOMB_X79_Y64_N8
\mux|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~8_combout\ = (\mac0|receiver|rx_ram|read_data\(4) & ((GND) # (!\mux|Add1~7\))) # (!\mac0|receiver|rx_ram|read_data\(4) & (\mux|Add1~7\ $ (GND)))
-- \mux|Add1~9\ = CARRY((\mac0|receiver|rx_ram|read_data\(4)) # (!\mux|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(4),
	datad => VCC,
	cin => \mux|Add1~7\,
	combout => \mux|Add1~8_combout\,
	cout => \mux|Add1~9\);

-- Location: FF_X80_Y64_N9
\mux|payload_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[4]~28_combout\,
	asdata => \mux|Add1~8_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(4));

-- Location: LCCOMB_X80_Y64_N10
\mux|payload_len[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[5]~30_combout\ = (\mux|payload_len\(5) & (\mux|payload_len[4]~29\ & VCC)) # (!\mux|payload_len\(5) & (!\mux|payload_len[4]~29\))
-- \mux|payload_len[5]~31\ = CARRY((!\mux|payload_len\(5) & !\mux|payload_len[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(5),
	datad => VCC,
	cin => \mux|payload_len[4]~29\,
	combout => \mux|payload_len[5]~30_combout\,
	cout => \mux|payload_len[5]~31\);

-- Location: LCCOMB_X79_Y69_N4
\mac0|receiver|rx_ram|read_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~5_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a5\ & (((!\mac0|receiver|rx_ram|Equal0~4_combout\) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)) # (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datac => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \mac0|receiver|rx_ram|Equal0~4_combout\,
	combout => \mac0|receiver|rx_ram|read_data~5_combout\);

-- Location: FF_X79_Y69_N5
\mac0|receiver|rx_ram|read_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(5));

-- Location: LCCOMB_X79_Y64_N10
\mux|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~10_combout\ = (\mac0|receiver|rx_ram|read_data\(5) & (\mux|Add1~9\ & VCC)) # (!\mac0|receiver|rx_ram|read_data\(5) & (!\mux|Add1~9\))
-- \mux|Add1~11\ = CARRY((!\mac0|receiver|rx_ram|read_data\(5) & !\mux|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(5),
	datad => VCC,
	cin => \mux|Add1~9\,
	combout => \mux|Add1~10_combout\,
	cout => \mux|Add1~11\);

-- Location: FF_X80_Y64_N11
\mux|payload_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[5]~30_combout\,
	asdata => \mux|Add1~10_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(5));

-- Location: LCCOMB_X80_Y64_N12
\mux|payload_len[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[6]~32_combout\ = (\mux|payload_len\(6) & ((GND) # (!\mux|payload_len[5]~31\))) # (!\mux|payload_len\(6) & (\mux|payload_len[5]~31\ $ (GND)))
-- \mux|payload_len[6]~33\ = CARRY((\mux|payload_len\(6)) # (!\mux|payload_len[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(6),
	datad => VCC,
	cin => \mux|payload_len[5]~31\,
	combout => \mux|payload_len[6]~32_combout\,
	cout => \mux|payload_len[6]~33\);

-- Location: LCCOMB_X77_Y67_N16
\mac0|receiver|write_byte[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_byte[6]~feeder_combout\ = \mac0|receiver|current_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(6),
	combout => \mac0|receiver|write_byte[6]~feeder_combout\);

-- Location: FF_X77_Y67_N17
\mac0|receiver|write_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|write_byte[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(6));

-- Location: LCCOMB_X77_Y67_N30
\mac0|receiver|write_byte[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|write_byte[7]~feeder_combout\ = \mac0|receiver|current_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mac0|receiver|current_byte\(7),
	combout => \mac0|receiver|write_byte[7]~feeder_combout\);

-- Location: FF_X77_Y67_N31
\mac0|receiver|write_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|write_byte[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|write_byte\(7));

-- Location: M9K_X78_Y67_N0
\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mac.ram0_async_read_write_ring_buffer_c1217982.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac:mac0|mac_receiver:receiver|async_read_write_ring_buffer:rx_ram|altsyncram:ram_rtl_0|altsyncram_opm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mac0|receiver|rx_ram|ram~21_combout\,
	portbre => VCC,
	portbaddrstall => \mac0|receiver|rx_ram|ALT_INV_Equal0~7_wirecell_combout\,
	clk0 => \mac0|receiver|write_ready~clkctrl_outclk\,
	clk1 => \ENET0_RX_CLK~inputclkctrl_outclk\,
	ena0 => \mac0|receiver|rx_ram|ram~21_combout\,
	portadatain => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y67_N10
\mac0|receiver|rx_ram|read_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~6_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ & (((!\mac0|receiver|rx_ram|Equal0~6_combout\) # (!\mac0|receiver|rx_ram|Equal0~4_combout\)) # 
-- (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~4_combout\,
	datac => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datad => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \mac0|receiver|rx_ram|read_data~6_combout\);

-- Location: FF_X79_Y67_N11
\mac0|receiver|rx_ram|read_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(6));

-- Location: LCCOMB_X79_Y64_N12
\mux|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~12_combout\ = (\mac0|receiver|rx_ram|read_data\(6) & ((GND) # (!\mux|Add1~11\))) # (!\mac0|receiver|rx_ram|read_data\(6) & (\mux|Add1~11\ $ (GND)))
-- \mux|Add1~13\ = CARRY((\mac0|receiver|rx_ram|read_data\(6)) # (!\mux|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(6),
	datad => VCC,
	cin => \mux|Add1~11\,
	combout => \mux|Add1~12_combout\,
	cout => \mux|Add1~13\);

-- Location: FF_X80_Y64_N13
\mux|payload_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[6]~32_combout\,
	asdata => \mux|Add1~12_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(6));

-- Location: LCCOMB_X80_Y64_N14
\mux|payload_len[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[7]~34_combout\ = (\mux|payload_len\(7) & (\mux|payload_len[6]~33\ & VCC)) # (!\mux|payload_len\(7) & (!\mux|payload_len[6]~33\))
-- \mux|payload_len[7]~35\ = CARRY((!\mux|payload_len\(7) & !\mux|payload_len[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(7),
	datad => VCC,
	cin => \mux|payload_len[6]~33\,
	combout => \mux|payload_len[7]~34_combout\,
	cout => \mux|payload_len[7]~35\);

-- Location: LCCOMB_X79_Y67_N8
\mac0|receiver|rx_ram|read_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac0|receiver|rx_ram|read_data~7_combout\ = (\mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a7\ & (((!\mac0|receiver|rx_ram|Equal0~4_combout\) # (!\mac0|receiver|rx_ram|Equal0~6_combout\)) # (!\mac0|receiver|rx_ram|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|Equal0~5_combout\,
	datab => \mac0|receiver|rx_ram|Equal0~6_combout\,
	datac => \mac0|receiver|rx_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \mac0|receiver|rx_ram|Equal0~4_combout\,
	combout => \mac0|receiver|rx_ram|read_data~7_combout\);

-- Location: FF_X79_Y67_N9
\mac0|receiver|rx_ram|read_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mac0|receiver|rx_ram|read_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac0|receiver|rx_ram|read_data\(7));

-- Location: LCCOMB_X79_Y64_N14
\mux|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~14_combout\ = (\mac0|receiver|rx_ram|read_data\(7) & (\mux|Add1~13\ & VCC)) # (!\mac0|receiver|rx_ram|read_data\(7) & (!\mux|Add1~13\))
-- \mux|Add1~15\ = CARRY((!\mac0|receiver|rx_ram|read_data\(7) & !\mux|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(7),
	datad => VCC,
	cin => \mux|Add1~13\,
	combout => \mux|Add1~14_combout\,
	cout => \mux|Add1~15\);

-- Location: FF_X80_Y64_N15
\mux|payload_len[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[7]~34_combout\,
	asdata => \mux|Add1~14_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(7));

-- Location: LCCOMB_X80_Y64_N16
\mux|payload_len[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[8]~36_combout\ = (\mux|payload_len\(8) & ((GND) # (!\mux|payload_len[7]~35\))) # (!\mux|payload_len\(8) & (\mux|payload_len[7]~35\ $ (GND)))
-- \mux|payload_len[8]~37\ = CARRY((\mux|payload_len\(8)) # (!\mux|payload_len[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(8),
	datad => VCC,
	cin => \mux|payload_len[7]~35\,
	combout => \mux|payload_len[8]~36_combout\,
	cout => \mux|payload_len[8]~37\);

-- Location: FF_X79_Y64_N17
\mux|previous_payload_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(0),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(0));

-- Location: LCCOMB_X79_Y64_N16
\mux|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~16_combout\ = (\mux|previous_payload_byte\(0) & ((GND) # (!\mux|Add1~15\))) # (!\mux|previous_payload_byte\(0) & (\mux|Add1~15\ $ (GND)))
-- \mux|Add1~17\ = CARRY((\mux|previous_payload_byte\(0)) # (!\mux|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|previous_payload_byte\(0),
	datad => VCC,
	cin => \mux|Add1~15\,
	combout => \mux|Add1~16_combout\,
	cout => \mux|Add1~17\);

-- Location: FF_X80_Y64_N17
\mux|payload_len[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[8]~36_combout\,
	asdata => \mux|Add1~16_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(8));

-- Location: LCCOMB_X80_Y64_N18
\mux|payload_len[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[9]~38_combout\ = (\mux|payload_len\(9) & (\mux|payload_len[8]~37\ & VCC)) # (!\mux|payload_len\(9) & (!\mux|payload_len[8]~37\))
-- \mux|payload_len[9]~39\ = CARRY((!\mux|payload_len\(9) & !\mux|payload_len[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(9),
	datad => VCC,
	cin => \mux|payload_len[8]~37\,
	combout => \mux|payload_len[9]~38_combout\,
	cout => \mux|payload_len[9]~39\);

-- Location: FF_X79_Y64_N19
\mux|previous_payload_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(1),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(1));

-- Location: LCCOMB_X79_Y64_N18
\mux|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~18_combout\ = (\mux|previous_payload_byte\(1) & (\mux|Add1~17\ & VCC)) # (!\mux|previous_payload_byte\(1) & (!\mux|Add1~17\))
-- \mux|Add1~19\ = CARRY((!\mux|previous_payload_byte\(1) & !\mux|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|previous_payload_byte\(1),
	datad => VCC,
	cin => \mux|Add1~17\,
	combout => \mux|Add1~18_combout\,
	cout => \mux|Add1~19\);

-- Location: FF_X80_Y64_N19
\mux|payload_len[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[9]~38_combout\,
	asdata => \mux|Add1~18_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(9));

-- Location: LCCOMB_X80_Y64_N20
\mux|payload_len[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[10]~40_combout\ = (\mux|payload_len\(10) & ((GND) # (!\mux|payload_len[9]~39\))) # (!\mux|payload_len\(10) & (\mux|payload_len[9]~39\ $ (GND)))
-- \mux|payload_len[10]~41\ = CARRY((\mux|payload_len\(10)) # (!\mux|payload_len[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(10),
	datad => VCC,
	cin => \mux|payload_len[9]~39\,
	combout => \mux|payload_len[10]~40_combout\,
	cout => \mux|payload_len[10]~41\);

-- Location: FF_X79_Y64_N21
\mux|previous_payload_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(2),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(2));

-- Location: LCCOMB_X79_Y64_N20
\mux|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~20_combout\ = (\mux|previous_payload_byte\(2) & ((GND) # (!\mux|Add1~19\))) # (!\mux|previous_payload_byte\(2) & (\mux|Add1~19\ $ (GND)))
-- \mux|Add1~21\ = CARRY((\mux|previous_payload_byte\(2)) # (!\mux|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|previous_payload_byte\(2),
	datad => VCC,
	cin => \mux|Add1~19\,
	combout => \mux|Add1~20_combout\,
	cout => \mux|Add1~21\);

-- Location: FF_X80_Y64_N21
\mux|payload_len[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[10]~40_combout\,
	asdata => \mux|Add1~20_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(10));

-- Location: LCCOMB_X80_Y64_N22
\mux|payload_len[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[11]~42_combout\ = (\mux|payload_len\(11) & (\mux|payload_len[10]~41\ & VCC)) # (!\mux|payload_len\(11) & (!\mux|payload_len[10]~41\))
-- \mux|payload_len[11]~43\ = CARRY((!\mux|payload_len\(11) & !\mux|payload_len[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(11),
	datad => VCC,
	cin => \mux|payload_len[10]~41\,
	combout => \mux|payload_len[11]~42_combout\,
	cout => \mux|payload_len[11]~43\);

-- Location: FF_X79_Y64_N23
\mux|previous_payload_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(3),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(3));

-- Location: LCCOMB_X79_Y64_N22
\mux|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~22_combout\ = (\mux|previous_payload_byte\(3) & (\mux|Add1~21\ & VCC)) # (!\mux|previous_payload_byte\(3) & (!\mux|Add1~21\))
-- \mux|Add1~23\ = CARRY((!\mux|previous_payload_byte\(3) & !\mux|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|previous_payload_byte\(3),
	datad => VCC,
	cin => \mux|Add1~21\,
	combout => \mux|Add1~22_combout\,
	cout => \mux|Add1~23\);

-- Location: FF_X80_Y64_N23
\mux|payload_len[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[11]~42_combout\,
	asdata => \mux|Add1~22_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(11));

-- Location: LCCOMB_X80_Y64_N24
\mux|payload_len[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[12]~44_combout\ = (\mux|payload_len\(12) & ((GND) # (!\mux|payload_len[11]~43\))) # (!\mux|payload_len\(12) & (\mux|payload_len[11]~43\ $ (GND)))
-- \mux|payload_len[12]~45\ = CARRY((\mux|payload_len\(12)) # (!\mux|payload_len[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(12),
	datad => VCC,
	cin => \mux|payload_len[11]~43\,
	combout => \mux|payload_len[12]~44_combout\,
	cout => \mux|payload_len[12]~45\);

-- Location: FF_X79_Y64_N25
\mux|previous_payload_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(4),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(4));

-- Location: LCCOMB_X79_Y64_N24
\mux|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~24_combout\ = (\mux|previous_payload_byte\(4) & ((GND) # (!\mux|Add1~23\))) # (!\mux|previous_payload_byte\(4) & (\mux|Add1~23\ $ (GND)))
-- \mux|Add1~25\ = CARRY((\mux|previous_payload_byte\(4)) # (!\mux|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|previous_payload_byte\(4),
	datad => VCC,
	cin => \mux|Add1~23\,
	combout => \mux|Add1~24_combout\,
	cout => \mux|Add1~25\);

-- Location: FF_X80_Y64_N25
\mux|payload_len[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[12]~44_combout\,
	asdata => \mux|Add1~24_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(12));

-- Location: LCCOMB_X80_Y64_N26
\mux|payload_len[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[13]~46_combout\ = (\mux|payload_len\(13) & (\mux|payload_len[12]~45\ & VCC)) # (!\mux|payload_len\(13) & (!\mux|payload_len[12]~45\))
-- \mux|payload_len[13]~47\ = CARRY((!\mux|payload_len\(13) & !\mux|payload_len[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(13),
	datad => VCC,
	cin => \mux|payload_len[12]~45\,
	combout => \mux|payload_len[13]~46_combout\,
	cout => \mux|payload_len[13]~47\);

-- Location: FF_X79_Y64_N27
\mux|previous_payload_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(5),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(5));

-- Location: LCCOMB_X79_Y64_N26
\mux|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~26_combout\ = (\mux|previous_payload_byte\(5) & (\mux|Add1~25\ & VCC)) # (!\mux|previous_payload_byte\(5) & (!\mux|Add1~25\))
-- \mux|Add1~27\ = CARRY((!\mux|previous_payload_byte\(5) & !\mux|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|previous_payload_byte\(5),
	datad => VCC,
	cin => \mux|Add1~25\,
	combout => \mux|Add1~26_combout\,
	cout => \mux|Add1~27\);

-- Location: FF_X80_Y64_N27
\mux|payload_len[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[13]~46_combout\,
	asdata => \mux|Add1~26_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(13));

-- Location: LCCOMB_X80_Y64_N28
\mux|payload_len[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[14]~48_combout\ = (\mux|payload_len\(14) & ((GND) # (!\mux|payload_len[13]~47\))) # (!\mux|payload_len\(14) & (\mux|payload_len[13]~47\ $ (GND)))
-- \mux|payload_len[14]~49\ = CARRY((\mux|payload_len\(14)) # (!\mux|payload_len[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|payload_len\(14),
	datad => VCC,
	cin => \mux|payload_len[13]~47\,
	combout => \mux|payload_len[14]~48_combout\,
	cout => \mux|payload_len[14]~49\);

-- Location: FF_X79_Y64_N29
\mux|previous_payload_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(6),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(6));

-- Location: LCCOMB_X79_Y64_N28
\mux|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~28_combout\ = (\mux|previous_payload_byte\(6) & ((GND) # (!\mux|Add1~27\))) # (!\mux|previous_payload_byte\(6) & (\mux|Add1~27\ $ (GND)))
-- \mux|Add1~29\ = CARRY((\mux|previous_payload_byte\(6)) # (!\mux|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|previous_payload_byte\(6),
	datad => VCC,
	cin => \mux|Add1~27\,
	combout => \mux|Add1~28_combout\,
	cout => \mux|Add1~29\);

-- Location: FF_X80_Y64_N29
\mux|payload_len[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[14]~48_combout\,
	asdata => \mux|Add1~28_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(14));

-- Location: LCCOMB_X80_Y64_N30
\mux|payload_len[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[15]~50_combout\ = \mux|payload_len\(15) $ (!\mux|payload_len[14]~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(15),
	cin => \mux|payload_len[14]~49\,
	combout => \mux|payload_len[15]~50_combout\);

-- Location: FF_X79_Y64_N31
\mux|previous_payload_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mac0|receiver|rx_ram|read_data\(7),
	sload => VCC,
	ena => \mux|payload_len[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|previous_payload_byte\(7));

-- Location: LCCOMB_X79_Y64_N30
\mux|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Add1~30_combout\ = \mux|previous_payload_byte\(7) $ (!\mux|Add1~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|previous_payload_byte\(7),
	cin => \mux|Add1~29\,
	combout => \mux|Add1~30_combout\);

-- Location: FF_X80_Y64_N31
\mux|payload_len[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|payload_len[15]~50_combout\,
	asdata => \mux|Add1~30_combout\,
	sload => \mux|read_state.PAYLOAD_LENGTH~q\,
	ena => \mux|payload_len[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|payload_len\(15));

-- Location: LCCOMB_X81_Y64_N12
\mux|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal2~3_combout\ = (\mux|payload_len\(13)) # ((\mux|payload_len\(14)) # ((\mux|payload_len\(15)) # (\mux|payload_len\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(13),
	datab => \mux|payload_len\(14),
	datac => \mux|payload_len\(15),
	datad => \mux|payload_len\(12),
	combout => \mux|Equal2~3_combout\);

-- Location: LCCOMB_X81_Y64_N8
\mux|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal2~1_combout\ = (\mux|payload_len\(6)) # ((\mux|payload_len\(7)) # ((\mux|payload_len\(5)) # (\mux|payload_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(6),
	datab => \mux|payload_len\(7),
	datac => \mux|payload_len\(5),
	datad => \mux|payload_len\(4),
	combout => \mux|Equal2~1_combout\);

-- Location: LCCOMB_X81_Y64_N30
\mux|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal2~2_combout\ = (\mux|payload_len\(8)) # ((\mux|payload_len\(10)) # ((\mux|payload_len\(9)) # (\mux|payload_len\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(8),
	datab => \mux|payload_len\(10),
	datac => \mux|payload_len\(9),
	datad => \mux|payload_len\(11),
	combout => \mux|Equal2~2_combout\);

-- Location: LCCOMB_X81_Y64_N18
\mux|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal2~0_combout\ = (\mux|payload_len\(0)) # ((\mux|payload_len\(3)) # ((\mux|payload_len\(2)) # (\mux|payload_len\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len\(0),
	datab => \mux|payload_len\(3),
	datac => \mux|payload_len\(2),
	datad => \mux|payload_len\(1),
	combout => \mux|Equal2~0_combout\);

-- Location: LCCOMB_X81_Y64_N2
\mux|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Equal2~4_combout\ = (\mux|Equal2~3_combout\) # ((\mux|Equal2~1_combout\) # ((\mux|Equal2~2_combout\) # (\mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Equal2~3_combout\,
	datab => \mux|Equal2~1_combout\,
	datac => \mux|Equal2~2_combout\,
	datad => \mux|Equal2~0_combout\,
	combout => \mux|Equal2~4_combout\);

-- Location: LCCOMB_X81_Y64_N0
\mux|payload_len[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[6]~17_combout\ = (\mux|read_state.PACKET_BYTES~q\ & !\mux|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|payload_len[6]~17_combout\);

-- Location: LCCOMB_X81_Y64_N6
\mux|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector1~1_combout\ = ((\mux|payload_len[6]~17_combout\) # ((!\mux|Selector2~3_combout\ & \mux|read_state.MAC_DESTINATION~q\))) # (!\mux|read_state.WAIT_FOR_READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Selector2~3_combout\,
	datab => \mux|read_state.WAIT_FOR_READ~q\,
	datac => \mux|read_state.MAC_DESTINATION~q\,
	datad => \mux|payload_len[6]~17_combout\,
	combout => \mux|Selector1~1_combout\);

-- Location: FF_X81_Y64_N7
\mux|read_state.MAC_DESTINATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.MAC_DESTINATION~q\);

-- Location: LCCOMB_X81_Y64_N10
\mux|payload_len[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|payload_len[6]~16_combout\ = (!\mux|read_state.MAC_DESTINATION~q\ & !\mux|read_state.MAC_SOURCE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|read_state.MAC_DESTINATION~q\,
	datad => \mux|read_state.MAC_SOURCE~q\,
	combout => \mux|payload_len[6]~16_combout\);

-- Location: LCCOMB_X81_Y64_N16
\mux|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector2~2_combout\ = (\mux|read_state.PACKET_ADDR~q\) # (!\mux|read_state.WAIT_FOR_READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.WAIT_FOR_READ~q\,
	datac => \mux|read_state.PACKET_ADDR~q\,
	combout => \mux|Selector2~2_combout\);

-- Location: LCCOMB_X81_Y64_N22
\mux|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector2~3_combout\ = (\mux|Selector2~2_combout\) # ((\mux|Selector1~0_combout\) # ((!\mux|payload_len[6]~16_combout\ & !\mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|payload_len[6]~16_combout\,
	datab => \mux|Selector2~2_combout\,
	datac => \mux|Selector1~0_combout\,
	datad => \mux|Equal0~0_combout\,
	combout => \mux|Selector2~3_combout\);

-- Location: LCCOMB_X81_Y64_N28
\mux|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector5~2_combout\ = (\mux|read_state.PACKET_BYTES~q\ & (\mux|Equal2~4_combout\ & ((\mux|read_state.PACKET_ADDR~q\) # (!\mux|Selector2~3_combout\)))) # (!\mux|read_state.PACKET_BYTES~q\ & (((\mux|read_state.PACKET_ADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Selector2~3_combout\,
	datab => \mux|read_state.PACKET_ADDR~q\,
	datac => \mux|read_state.PACKET_BYTES~q\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|Selector5~2_combout\);

-- Location: FF_X81_Y64_N29
\mux|read_state.PACKET_BYTES\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|read_state.PACKET_BYTES~q\);

-- Location: LCCOMB_X80_Y67_N14
\mux|packet_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~0_combout\ = (\mux|read_state.PACKET_BYTES~q\ & (\mac0|receiver|rx_ram|read_data\(0) & \mux|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datac => \mac0|receiver|rx_ram|read_data\(0),
	datad => \mux|Equal2~4_combout\,
	combout => \mux|packet_data~0_combout\);

-- Location: FF_X80_Y67_N15
\mux|packet_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(0));

-- Location: LCCOMB_X80_Y66_N10
\mux|packet_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data[0]~1_combout\ = (\mux|Equal2~4_combout\ & \mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|Equal2~4_combout\,
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|packet_data[0]~1_combout\);

-- Location: FF_X80_Y66_N11
\mux|packet_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_ready~q\);

-- Location: LCCOMB_X80_Y66_N22
\mux|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector34~0_combout\ = (\mac0|receiver|rx_ram|read_data\(7) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|read_data\(7),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector34~0_combout\);

-- Location: LCCOMB_X80_Y66_N28
\mux|packet_address[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_address[4]~0_combout\ = (\mux|read_state.PACKET_BYTES~q\ & ((!\mux|Equal2~4_combout\))) # (!\mux|read_state.PACKET_BYTES~q\ & (\mux|read_state.PACKET_ADDR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|read_state.PACKET_BYTES~q\,
	datab => \mux|read_state.PACKET_ADDR~q\,
	datac => \mux|Equal2~4_combout\,
	combout => \mux|packet_address[4]~0_combout\);

-- Location: FF_X80_Y66_N23
\mux|packet_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector34~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(7));

-- Location: LCCOMB_X80_Y66_N16
\mux|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector41~0_combout\ = (\mac0|receiver|rx_ram|read_data\(0) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(0),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector41~0_combout\);

-- Location: FF_X80_Y66_N17
\mux|packet_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector41~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(0));

-- Location: LCCOMB_X80_Y66_N8
\mux|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector35~0_combout\ = (\mac0|receiver|rx_ram|read_data\(6) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|read_data\(6),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector35~0_combout\);

-- Location: FF_X80_Y66_N9
\mux|packet_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector35~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(6));

-- Location: LCCOMB_X80_Y66_N6
\mux|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector36~0_combout\ = (\mac0|receiver|rx_ram|read_data\(5) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mac0|receiver|rx_ram|read_data\(5),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector36~0_combout\);

-- Location: FF_X80_Y66_N7
\mux|packet_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector36~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(5));

-- Location: LCCOMB_X80_Y66_N4
\ss|updater~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|updater~1_combout\ = (!\mux|packet_address\(7) & (\mux|packet_address\(0) & (!\mux|packet_address\(6) & !\mux|packet_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|packet_address\(7),
	datab => \mux|packet_address\(0),
	datac => \mux|packet_address\(6),
	datad => \mux|packet_address\(5),
	combout => \ss|updater~1_combout\);

-- Location: LCCOMB_X80_Y66_N26
\mux|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector40~0_combout\ = (\mac0|receiver|rx_ram|read_data\(1) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(1),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector40~0_combout\);

-- Location: FF_X80_Y66_N27
\mux|packet_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector40~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(1));

-- Location: LCCOMB_X80_Y66_N24
\mux|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector39~0_combout\ = (\mac0|receiver|rx_ram|read_data\(2) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(2),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector39~0_combout\);

-- Location: FF_X80_Y66_N25
\mux|packet_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector39~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(2));

-- Location: LCCOMB_X80_Y66_N14
\mux|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector38~0_combout\ = (\mac0|receiver|rx_ram|read_data\(3) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(3),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector38~0_combout\);

-- Location: FF_X80_Y66_N15
\mux|packet_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector38~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(3));

-- Location: LCCOMB_X80_Y66_N0
\mux|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Selector37~0_combout\ = (\mac0|receiver|rx_ram|read_data\(4) & !\mux|read_state.PACKET_BYTES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mac0|receiver|rx_ram|read_data\(4),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|Selector37~0_combout\);

-- Location: FF_X80_Y66_N1
\mux|packet_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|Selector37~0_combout\,
	ena => \mux|packet_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_address\(4));

-- Location: LCCOMB_X80_Y66_N20
\ss|updater~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|updater~0_combout\ = (!\mux|packet_address\(1) & (!\mux|packet_address\(2) & (!\mux|packet_address\(3) & !\mux|packet_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|packet_address\(1),
	datab => \mux|packet_address\(2),
	datac => \mux|packet_address\(3),
	datad => \mux|packet_address\(4),
	combout => \ss|updater~0_combout\);

-- Location: LCCOMB_X80_Y66_N2
\ss|updater~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|updater~2_combout\ = (\mux|packet_ready~q\ & (\ss|updater~1_combout\ & \ss|updater~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|packet_ready~q\,
	datac => \ss|updater~1_combout\,
	datad => \ss|updater~0_combout\,
	combout => \ss|updater~2_combout\);

-- Location: FF_X80_Y67_N1
\ss|hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mux|packet_data\(0),
	sload => VCC,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(0));

-- Location: LCCOMB_X80_Y67_N24
\mux|packet_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~2_combout\ = (\mux|Equal2~4_combout\ & (\mac0|receiver|rx_ram|read_data\(1) & \mux|read_state.PACKET_BYTES~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Equal2~4_combout\,
	datab => \mac0|receiver|rx_ram|read_data\(1),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|packet_data~2_combout\);

-- Location: FF_X80_Y67_N25
\mux|packet_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(1));

-- Location: LCCOMB_X80_Y67_N2
\ss|hex[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|hex[1]~feeder_combout\ = \mux|packet_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|packet_data\(1),
	combout => \ss|hex[1]~feeder_combout\);

-- Location: FF_X80_Y67_N3
\ss|hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \ss|hex[1]~feeder_combout\,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(1));

-- Location: LCCOMB_X80_Y67_N18
\mux|packet_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~3_combout\ = (\mux|Equal2~4_combout\ & (\mac0|receiver|rx_ram|read_data\(2) & \mux|read_state.PACKET_BYTES~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Equal2~4_combout\,
	datab => \mac0|receiver|rx_ram|read_data\(2),
	datad => \mux|read_state.PACKET_BYTES~q\,
	combout => \mux|packet_data~3_combout\);

-- Location: FF_X80_Y67_N19
\mux|packet_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(2));

-- Location: LCCOMB_X80_Y67_N4
\ss|hex[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|hex[2]~feeder_combout\ = \mux|packet_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|packet_data\(2),
	combout => \ss|hex[2]~feeder_combout\);

-- Location: FF_X80_Y67_N5
\ss|hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \ss|hex[2]~feeder_combout\,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(2));

-- Location: LCCOMB_X80_Y67_N16
\mux|packet_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~4_combout\ = (\mux|read_state.PACKET_BYTES~q\ & (\mac0|receiver|rx_ram|read_data\(3) & \mux|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datac => \mac0|receiver|rx_ram|read_data\(3),
	datad => \mux|Equal2~4_combout\,
	combout => \mux|packet_data~4_combout\);

-- Location: FF_X80_Y67_N17
\mux|packet_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(3));

-- Location: LCCOMB_X80_Y67_N30
\ss|hex[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|hex[3]~feeder_combout\ = \mux|packet_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|packet_data\(3),
	combout => \ss|hex[3]~feeder_combout\);

-- Location: FF_X80_Y67_N31
\ss|hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \ss|hex[3]~feeder_combout\,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(3));

-- Location: LCCOMB_X80_Y67_N26
\mux|packet_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~5_combout\ = (\mux|read_state.PACKET_BYTES~q\ & (\mac0|receiver|rx_ram|read_data\(4) & \mux|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|read_state.PACKET_BYTES~q\,
	datac => \mac0|receiver|rx_ram|read_data\(4),
	datad => \mux|Equal2~4_combout\,
	combout => \mux|packet_data~5_combout\);

-- Location: FF_X80_Y67_N27
\mux|packet_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(4));

-- Location: FF_X80_Y67_N29
\ss|hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	asdata => \mux|packet_data\(4),
	sload => VCC,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(4));

-- Location: LCCOMB_X80_Y67_N12
\mux|packet_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~6_combout\ = (\mac0|receiver|rx_ram|read_data\(5) & (\mux|read_state.PACKET_BYTES~q\ & \mux|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(5),
	datab => \mux|read_state.PACKET_BYTES~q\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|packet_data~6_combout\);

-- Location: FF_X80_Y67_N13
\mux|packet_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(5));

-- Location: LCCOMB_X80_Y67_N22
\ss|hex[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|hex[5]~feeder_combout\ = \mux|packet_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|packet_data\(5),
	combout => \ss|hex[5]~feeder_combout\);

-- Location: FF_X80_Y67_N23
\ss|hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \ss|hex[5]~feeder_combout\,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(5));

-- Location: LCCOMB_X80_Y67_N10
\mux|packet_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|packet_data~7_combout\ = (\mac0|receiver|rx_ram|read_data\(6) & (\mux|read_state.PACKET_BYTES~q\ & \mux|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac0|receiver|rx_ram|read_data\(6),
	datab => \mux|read_state.PACKET_BYTES~q\,
	datad => \mux|Equal2~4_combout\,
	combout => \mux|packet_data~7_combout\);

-- Location: FF_X80_Y67_N11
\mux|packet_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \mux|packet_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|packet_data\(6));

-- Location: LCCOMB_X80_Y67_N20
\ss|hex[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss|hex[6]~feeder_combout\ = \mux|packet_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|packet_data\(6),
	combout => \ss|hex[6]~feeder_combout\);

-- Location: FF_X80_Y67_N21
\ss|hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ENET0_RX_CLK~inputclkctrl_outclk\,
	d => \ss|hex[6]~feeder_combout\,
	ena => \ss|updater~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss|hex\(6));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_ENET0_RST_N <= \ENET0_RST_N~output_o\;
END structure;


