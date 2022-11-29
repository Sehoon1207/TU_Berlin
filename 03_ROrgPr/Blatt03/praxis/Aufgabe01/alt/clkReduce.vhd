library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clkReduce is
	generic( divisor : integer := 1 );
	port( clk_in  : in  std_logic;
	      clk_out : out std_logic );
end clkReduce;

architecture behavioral of clkReduce is
begin

	-- Taktteiler-Beschreibung hier einfügen
	process(clk_in)
	variable temp : integer range 0 to 10000 := 0;
		begin
			if(clk_in'event and clk_in = '0') then -- 상승 모서리 동작 (clock_in'event and clock_in = '1')로 바꿔도 된다.
				if(temp = divisor*2 -1)then -- temp가 count -1 에서 clock_out 값이 high가 되고 temp가 0으로 초기화
				temp := 0;
				clk_out <='1';
				else
				temp := temp +1;
				clk_out <= '0';
				end if;
			end if;
	
	end Process;




end behavioral;
