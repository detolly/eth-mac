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

-- DATE "09/11/2026 14:21:31"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(2 DOWNTO 0);
	ENET0_MDC : BUFFER std_logic;
	ENET0_MDIO : BUFFER std_logic;
	ENET0_RST_N : BUFFER std_logic;
	ENET0_RX_CLK : IN std_logic;
	ENET0_RX_COL : IN std_logic;
	ENET0_RX_CRS : IN std_logic;
	ENET0_RX_DATA : IN std_logic_vector(3 DOWNTO 0);
	ENET0_RX_DV : IN std_logic;
	ENET0_RX_ER : IN std_logic;
	ENET0_TX_CLK : IN std_logic;
	ENET0_TX_DATA : BUFFER std_logic_vector(3 DOWNTO 0);
	ENET0_TX_EN : BUFFER std_logic;
	ENET0_TX_ER : BUFFER std_logic
	);
END fpga;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDC	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RST_N	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_EN	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_ER	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ENET0_MDC : std_logic;
SIGNAL ww_ENET0_MDIO : std_logic;
SIGNAL ww_ENET0_RST_N : std_logic;
SIGNAL ww_ENET0_RX_CLK : std_logic;
SIGNAL ww_ENET0_RX_COL : std_logic;
SIGNAL ww_ENET0_RX_CRS : std_logic;
SIGNAL ww_ENET0_RX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET0_RX_DV : std_logic;
SIGNAL ww_ENET0_RX_ER : std_logic;
SIGNAL ww_ENET0_TX_CLK : std_logic;
SIGNAL ww_ENET0_TX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET0_TX_EN : std_logic;
SIGNAL ww_ENET0_TX_ER : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ENET0_RX_COL~input_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~input_o\ : std_logic;
SIGNAL \ENET0_RX_ER~input_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DV~input_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~input_o\ : std_logic;
SIGNAL \ENET0_MDIO~input_o\ : std_logic;
SIGNAL \ENET0_MDIO~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \ENET0_MDC~output_o\ : std_logic;
SIGNAL \ENET0_RST_N~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[0]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[1]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[2]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[3]~output_o\ : std_logic;
SIGNAL \ENET0_TX_EN~output_o\ : std_logic;
SIGNAL \ENET0_TX_ER~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ENET0_MDC <= ww_ENET0_MDC;
ENET0_MDIO <= ww_ENET0_MDIO;
ENET0_RST_N <= ww_ENET0_RST_N;
ww_ENET0_RX_CLK <= ENET0_RX_CLK;
ww_ENET0_RX_COL <= ENET0_RX_COL;
ww_ENET0_RX_CRS <= ENET0_RX_CRS;
ww_ENET0_RX_DATA <= ENET0_RX_DATA;
ww_ENET0_RX_DV <= ENET0_RX_DV;
ww_ENET0_RX_ER <= ENET0_RX_ER;
ww_ENET0_TX_CLK <= ENET0_TX_CLK;
ENET0_TX_DATA <= ww_ENET0_TX_DATA;
ENET0_TX_EN <= ww_ENET0_TX_EN;
ENET0_TX_ER <= ww_ENET0_TX_ER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y73_N2
\ENET0_MDIO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ENET0_MDIO~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\ENET0_MDC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_MDC~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\ENET0_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \ENET0_RST_N~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\ENET0_TX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\ENET0_TX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\ENET0_TX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\ENET0_TX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[3]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\ENET0_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_EN~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\ENET0_TX_ER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_ER~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

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

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\ENET0_RX_COL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_COL,
	o => \ENET0_RX_COL~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\ENET0_RX_CRS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CRS,
	o => \ENET0_RX_CRS~input_o\);

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

-- Location: IOIBUF_X60_Y73_N8
\ENET0_TX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_TX_CLK,
	o => \ENET0_TX_CLK~input_o\);

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

-- Location: IOIBUF_X87_Y73_N1
\ENET0_MDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_MDIO,
	o => \ENET0_MDIO~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_ENET0_MDC <= \ENET0_MDC~output_o\;

ww_ENET0_RST_N <= \ENET0_RST_N~output_o\;

ww_ENET0_TX_DATA(0) <= \ENET0_TX_DATA[0]~output_o\;

ww_ENET0_TX_DATA(1) <= \ENET0_TX_DATA[1]~output_o\;

ww_ENET0_TX_DATA(2) <= \ENET0_TX_DATA[2]~output_o\;

ww_ENET0_TX_DATA(3) <= \ENET0_TX_DATA[3]~output_o\;

ww_ENET0_TX_EN <= \ENET0_TX_EN~output_o\;

ww_ENET0_TX_ER <= \ENET0_TX_ER~output_o\;

ww_ENET0_MDIO <= \ENET0_MDIO~output_o\;
END structure;


