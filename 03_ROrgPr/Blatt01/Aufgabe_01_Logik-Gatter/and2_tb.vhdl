library ieee;
use ieee.std_logic_1164.all;

entity and2_tb is
    end and2_tb;

architecture test of and2_tb is
    
    component and2
        port(   a: in std_logic;
                b: in std_logic;
                y: out std_logic);
    end component;

    signal a, b, y : std_ulogic;
begin
    adder: and2 port map (a => a, b => b, y => y);

    process begin
        
        a <= 'X' ; --x ist unknown signal
        b <= 'X' ;
        wait for 1 ns;

        a <= '0';
        b <= '0';
        wait for 1 ns;

        a <= '0';
        b <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '0';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        wait for 1 ns;

        assert false report "Reached end of test";
        wait;  -- end forever

    end process;    

end test;