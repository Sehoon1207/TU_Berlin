library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leftShifter is
	generic(
		WIDTH 			: integer; 
		SHIFT_AMOUNT 	: integer
	);
	port(
		number 			: in std_logic_vector(WIDTH - 1 downto 0); 
		shiftedNumber 	: out std_logic_vector(WIDTH - 1 downto 0)
	);
end leftShifter;

architecture behavioral of leftShifter is  
begin
	process(number)
	variable l : integer := 0;
	begin
		for i in WIDTH - 1 - SHIFT_AMOUNT downto 0 loop
			shiftedNumber(i + SHIFT_AMOUNT) <= number(i);
		end loop;
		
		while (l < SHIFT_AMOUNT) loop
			shiftedNumber(l) <= '0';
			l := l + 1;
		end loop;
		
	end process;
end architecture;


-- w=8 SA=3
-- 0011 1100
-- UUUU UUUU

-- 1110 0000
