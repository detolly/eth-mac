library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity async_read_write_ring_buffer is
    generic(DATA_WIDTH : positive;
            NUM_DATA   : positive);

    port(n_reset           : in  std_logic;
         
         read_clk          : in  std_logic;
         read_en           : in  std_logic;
         read_data         : out std_logic_vector(DATA_WIDTH - 1 downto 0);
         read_available    : out std_logic;

         write_clk         : in  std_logic;
         write_en          : in  std_logic;
         write_transaction : in  std_logic;
         write_data        : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
         write_discard     : in  std_logic);
end entity;

architecture rtl of async_read_write_ring_buffer is
    type buffer_t is array (0 to NUM_DATA - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal ram : buffer_t := (others => (others => '0'));

    attribute ramstyle : string;
    attribute ramstyle of ram : signal is "M9K";

    signal read_avail           : std_logic := '0';

    -- registers
    signal read_addr            : integer range 0 to NUM_DATA - 1 := 0;

    signal write_addr           : integer range 0 to NUM_DATA - 1 := 0;
    signal last_good_write_addr : integer range 0 to NUM_DATA - 1 := 0;
    signal is_writing           : std_logic := '0';
begin
    read_available <= read_avail;

    reader: process(read_clk) is
    begin
        if rising_edge(read_clk) then
            if n_reset = '0' then
                read_addr <= 0;
                read_data <= (others => '0');
            elsif read_en = '1' and read_avail = '1' then
                read_data <= ram(read_addr);
                if read_addr = NUM_DATA - 1 then
                    read_addr <= 0;
                else
                    read_addr <= read_addr + 1;
                end if;
            else
                read_data <= (others => '0');
            end if;
        end if;
end process;

    writer: process(write_clk) is
    begin
        if rising_edge(write_clk) then
            if last_good_write_addr /= read_addr then read_avail <= '1'; else read_avail <= '0'; end if;

            if n_reset = '0' then
                write_addr <= 0;
                last_good_write_addr <= 0;
                is_writing <= '0';
            elsif write_transaction = '0' and is_writing = '1' then
                if write_discard = '1' then
                    write_addr <= last_good_write_addr;
                else
                    last_good_write_addr <= write_addr;
                    read_avail <= '1';
                end if;
                is_writing <= '0';
            elsif write_en = '1' and write_transaction = '1' then
                ram(write_addr) <= write_data;

                if is_writing = '0' then
                    is_writing <= '1';
                end if;

                if write_addr = NUM_DATA - 1 then
                    write_addr <= 0;
                else
                    write_addr <= write_addr + 1;
                end if;
            end if;
        end if;
    end process;
end architecture;
