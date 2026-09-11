library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_receiver is
	port(-- RX_COL  : in  std_logic;
		 -- RX_CRS  : in  std_logic;
		 RX_CLK  : in  std_logic;
		 RX_DATA : in  std_logic_vector(3 downto 0);
		 RX_DV 	 : in  std_logic;
		 RX_ER   : in  std_logic;
		 
		 write_clk  : out std_logic;
		 write_en   : out std_logic;
		 write_data : out std_logic_vector(7 downto 0));
end entity;

architecture rtl of mac_receiver is	
	type receive_state is (IDLE, PREAMBLE_SFD, FIRST, SECOND);
	signal current_receive_state : receive_state := IDLE;
	
	type frame_state is (IDLE, MAC_DESTINATION, MAC_SOURCE, LEN, PAYLOAD, CRC);
	signal current_frame_state : frame_state := IDLE;
	
	signal byte_clock : std_logic := '0';
	signal current_byte : std_logic_vector(7 downto 0) := (others => '0');
	
	signal receiver_go_idle_on_next : std_logic := '0';
	signal start_parsing_frame : std_logic := '0';
begin
	write_data <= current_byte;
	write_clk <= byte_clock;
	
	receiver: process (RX_CLK)
	begin
		if rising_edge(RX_CLK) then
			write_en <= '0';
			start_parsing_frame <= '0';
			
			case current_receive_state is
			when IDLE =>
				if RX_DV = '1' then
					current_receive_state <= PREAMBLE_SFD;
				end if;
			when PREAMBLE_SFD =>
				if RX_DATA = "1011" then
					write_en <= '1';
					start_parsing_frame <= '1';
					current_receive_state <= FIRST;
				end if;
			when FIRST =>
				byte_clock <= '0';
				write_en <= '1';
				if receiver_go_idle_on_next = '1' then
					current_receive_state <= IDLE;
				else
					current_byte(7 downto 4) <= RX_DATA;
					current_receive_state <= SECOND;
				end if;
			when SECOND =>
				write_en <= '1';
				current_byte(3 downto 0) <= RX_DATA;
				current_receive_state <= FIRST;
				byte_clock <= '1';
			end case;
		end if;
	end process;
	
	byte_processor: process(byte_clock)
		variable counter : integer range 0 to 2**16-1 := 0;
		variable payload_length : integer range 0 to 2**16-1 := 0;
		variable payload_length_vector : std_logic_vector(15 downto 0) := (others => '0');
	begin
		if rising_edge(byte_clock) then
			receiver_go_idle_on_next <= '0';
		
			case current_frame_state is
			when IDLE =>
				counter := 0;
				payload_length := 0;
				payload_length_vector := (others => '0');
				
				if start_parsing_frame = '1' then
					current_frame_state <= MAC_DESTINATION;
				end if;
			when MAC_DESTINATION =>
				counter := counter + 1;
				if counter = 6 then
					counter := 0;
					current_frame_state <= MAC_SOURCE;
				end if;
			when MAC_SOURCE =>
				counter := counter + 1;
				if counter = 6 then
					counter := 0;
					current_frame_state <= LEN;
				end if;
			when LEN =>
				counter := counter + 1;
				if counter = 1 then
					payload_length_vector(15 downto 8) := current_byte;
				else
					payload_length_vector(7 downto 0) := current_byte;
					payload_length := to_integer(unsigned(payload_length_vector));
					counter := 0;
					current_frame_state <= PAYLOAD;
				end if;
			when PAYLOAD =>
				counter := counter + 1;
				if counter = payload_length then
					counter := 0;
					current_frame_state <= CRC;
				end if;
			when CRC =>
				counter := counter + 1;
				if counter = 4 then
					counter := 0;
					current_frame_state <= IDLE;
					receiver_go_idle_on_next <= '1';
				end if;
			end case;
		end if;
	end process;
end architecture;

