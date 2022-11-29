library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
    generic(DATA_WIDTH : integer := 32);
	port( a, b, c, d : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
	      x	 	 : in  std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => 'X');
	      sel        : in  std_logic_vector(1 downto 0);
	      y          : out std_logic_vector(DATA_WIDTH - 1 downto 0) );
end mux4;

architecture behavioral of mux4 is
begin
	with sel select 
	y <= 	a when "00",
		b when "01",
		c when "10",
		d when "11",
		x when others;
		
end behavioral;
