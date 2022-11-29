library ieee;
use ieee.std_logic_1164.all;

entity xor2_tb is
    end xor2_tb;

architecture test of xor2_tb is
    
    component xor2
        port(   a: in std_logic;
                b: in std_logic;
                y: out std_logic);
    end component;

    signal a, b, y : std_ulogic;
begin
    adder: xor2 port map (a => a, b => b, y => y);

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