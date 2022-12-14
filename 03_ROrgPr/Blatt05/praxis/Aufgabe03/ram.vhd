library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.proc_config.ram_elements_type;

entity ram is
	generic(
		NUM_ELEMENTS      : integer;
		LOG2_NUM_ELEMENTS : integer;
		ELEMENT_WIDTH     : integer);
	port(
		clk               : in  std_logic;
		address           : in  std_logic_vector( LOG2_NUM_ELEMENTS - 1 downto 0 );
		writeEn           : in  std_logic;
		writeData         : in  std_logic_vector( ELEMENT_WIDTH - 1 downto 0 );
		readEn            : in  std_logic;
		readData          : out std_logic_vector( ELEMENT_WIDTH - 1 downto 0 );
		ramElements_debug : out ram_elements_type);
end ram;

architecture behavioral of ram is

	-- Array, das alle Elemente des RAMs enthält
	signal ramElements : ram_elements_type := (others => (others => '0'));

begin

	--- RAM-Beschreibung hier einfügen

	process(clk) is
		begin
			
	
			

			if (readEn = '1') then
				if (clk = '1' and clk'event ) then
					readData <= readData;
				end if;
				
			end if;

			elsif (writeEn = '1') then
				
				if (clk = '1' and clk'event ) then
					Q <= writeData;
				end if;
		
		end process;


	
	-- RAM-Inhalt über den Debug-Port nach außen führen
	ramElements_debug <= ramElements;

end architecture;
