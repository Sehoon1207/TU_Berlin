library ieee;
use ieee.std_logic_1164.all;

entity mux2_tb is
    end mux2_tb;

architecture test of mux2_tb is
    
    component mux2
        port(   
            a: in std_logic;
            b: in std_logic;
            s: in std_logic;
            y: out std_logic
        );
    end component;

    signal a, b, s, y : std_ulogic;
begin
    multiplexer: mux2 port map (a => a, b => b, s => s ,y => y);

    process begin
        
        s <= 'X' ;
        a <= 'X' ; --x ist unknown signal
        b <= 'X' ;
        wait for 1 ns;

        s <= '0';
        a <= '0';
        b <= '0';
        wait for 1 ns;

        s <= '0';
        a <= '0';
        b <= '1';
        wait for 1 ns;

        s <= '0';
        a <= '1';
        b <= '0';
        wait for 1 ns;

        s <= '0';
        a <= '1';
        b <= '1';
        wait for 1 ns;

        s <= 'X' ;
        a <= 'X' ; --x ist unknown signal
        b <= 'X' ;
        wait for 1 ns;

        s <= '1';
        a <= '0';
        b <= '0';
        wait for 1 ns;

        s <= '1';
        a <= '0';
        b <= '1';
        wait for 1 ns;

        s <= '1';
        a <= '1';
        b <= '0';
        wait for 1 ns;

        s <= '1';
        a <= '1';
        b <= '1';
        wait for 1 ns;

        assert false report "Reached end of test";
        wait;  -- end forever

    end process;    

end test;