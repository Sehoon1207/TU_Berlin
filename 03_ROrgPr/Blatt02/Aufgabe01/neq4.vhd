library ieee;
use ieee.std_logic_1164.all;

library ROrgPrSimLib;
use ROrgPrSimLib.all;

use work.all;

entity neq4 is
	port(a : in std_logic_vector(3 downto 0);
		 b : in std_logic_vector(3 downto 0);
		 y : out std_logic);
end neq4;

architecture logic of neq4 is
begin
	
	-- Logikbeschreibung hier einfügen
	y <= 0 when a = b else
	y <= 1;
	
end logic;

architecture netlist of neq4 is
begin
	
	-- Strukturbeschreibung hier einfügen
	c <= a xor b;

	xor_1: entity work.xor2(behavior) 
		port map ( 	a => a,
					b => b,
					y => s1);

	
end netlist;
