library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2Char is
	port(bin : in std_logic_vector(3 downto 0);
		 bitmask : out std_logic_vector(6 downto 0));
end bin2Char;

architecture behavioral of bin2Char is   
begin
	
	-- bin2Char-Beschreibung hier einfügen
	process(bin)
	begin
		case bin is
								 -- -- 0 --
								 -- |	  |
								 -- 5     1
								 -- |	  |
								 -- -- 6 --
								 -- |	  |
								 -- 4     2
								 -- |	  |
								 -- -- 3 --

		---------------------------0123456
		when "0000" => bitmask <= "1111110"  	--0
		when "0001" => bitmask <= "1100000"		--1
		when "0010" => bitmask <= "1101101"		--2
		when "0011" => bitmask <= "1111001"		--3
		when "0100" => bitmask <= "0110011"		--4
		when "0101" => bitmask <= "1011011"		--5
		when "0110" => bitmask <= "1011111"		--6
		when "0111" => bitmask <= "1110000"		--7
		when "1000" => bitmask <= "1111111"		--8
		when "1001" => bitmask <= "1111011"		--9
		when "1010" => bitmask <= "1110111"		--A
		when "1011" => bitmask <= "0011111"		--b
		when "1100" => bitmask <= "0011110"		--C
		when "1101" => bitmask <= "0111101"		--d
		when "1110" => bitmask <= "1001111"		--E
		when "1111" => bitmask <= "1000111"		--F
	end case;
	end process;
		

	 
end behavioral;
