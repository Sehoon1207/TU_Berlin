library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clkReduce is
	generic( divisor : integer := 4 );
	port( clk_in  : in  std_logic;
	      clk_out : out std_logic := '0');
end clkReduce;




architecture behavioral of clkReduce is
begin
	process(clk_in)
		variable cClock : integer := 0;
		
	begin
		cClock := cClock + 1;
		if (cClock = divisor) then 
			clk_out <= NOT clk_out;
			cClock := 0;
			
		end if;
	end process;
end behavioral;
