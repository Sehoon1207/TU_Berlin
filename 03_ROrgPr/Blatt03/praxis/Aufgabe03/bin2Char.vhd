library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2Char is
	port(bin : in std_logic_vector(3 downto 0);
		 bitmask : out std_logic_vector(6 downto 0));
		 
	type result is array (15 downto 0) of std_logic_vector(6 downto 0);
	constant cArray : result := 
	
end bin2Char;

architecture behavioral of bin2Char is
begin
	with bin select
		bitmask <= 	"0111111" when "0000", --0
	 			"0000110" when "0001", --1
	 			"1011011" when "0010", --2
	 			"1001111" when "0011", --3
	 			"1100110" when "0100", --4
	 			"1101101" when "0101", --5
	 			"1111101" when "0110", --6
	 			"0000111" when "0111", --7
	 			"1111111" when "1000", --8
	 			"1101111" when "1001", --9
	 			"1110111" when "1010", --A
	 			"1111100" when "1011", --b
	 			"0111001" when "1100", --C
	 			"1011110" when "1101", --d
	 			"1111001" when "1110", --E
	 			"1110001" when "1111", --F
	 			"XXXXXXX" when others;
	 
	 -- bitmask <= result(0);
	 
end behavioral;
