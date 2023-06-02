library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
			 d0: out STD_LOGIC;
			 d1: out STD_LOGIC;
			 d2: out STD_LOGIC;
			 d3: out STD_LOGIC;
			 d4: out STD_LOGIC;
			 d5: out STD_LOGIC;
			 d6: out STD_LOGIC;
			 d7: out STD_LOGIC;
			 gnd: out STD_LOGIC);
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	gnd <= '0';
	process(input)
	begin
		d0 <= input(0);
		d1 <= input(1);
		d2 <= input(2);
		d3 <= input(3);
		d4 <= input(4);
		d5 <= input(5);
		d6 <= input(6);
		d7 <= input(7);
	end process;
end Behavioral;