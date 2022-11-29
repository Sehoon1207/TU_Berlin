library ieee;
use ieee.std_logic_1164.all;

entity adder is
	generic(WIDTH : integer := 32);
	port ( a,b  : in  std_logic_vector(WIDTH-1 downto 0);
	       sum  : out std_logic_vector(WIDTH-1 downto 0);
	       cout : out std_logic);
end entity;

architecture behavioral of adder is
begin

	--- Addierer-Beschreibung hier einfuegen

end architecture behavioral;
