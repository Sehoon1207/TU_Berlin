library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signExtend is  
	generic(
		INPUT_WIDTH 	: integer; 
		OUTPUT_WIDTH 	: integer
	);
	port(
		number 			: in signed(INPUT_WIDTH - 1 downto 0); 
		signExtNumber 	: out signed(OUTPUT_WIDTH - 1 downto 0)
	);
end signExtend;

	architecture behavioral of signExtend is
begin
	process(number)
	begin
		signExtNumber(INPUT_WIDTH-1 downto 0) <= number(INPUT_WIDTH-1 downto 0);
		for i in INPUT_WIDTH to OUTPUT_WIDTH-1 loop	
			signExtNumber(i) <= number(INPUT_WIDTH - 1);
		end loop;
	end process;
end architecture;

--Beispiel : -15(d) 8bit -> 16bit

--der Anfang
--8bit  : 1111 0001
--16bit : UUUU UUUU UUUU UUUU

--erst Schritte
--16bit : UUUU UUUU 1111 0001

--zweite Schritte
--16bit : 1111 1111 1111 0001  8비트의 첫번째 숫자가 2er komplement 에서는 부호를 의미 하기 때문에 그걸 복사해서 남은 칸을 채운다.