library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador_entradas is
	Port ( e0 : in STD_LOGIC;
			 e1 : in STD_LOGIC;
			 e2 : in STD_LOGIC;
			 e3 : in STD_LOGIC;
			 e4 : in STD_LOGIC;
			 e5 : in STD_LOGIC;
			 e6 : in STD_LOGIC;
			 e7 : in STD_LOGIC;
			 e8 : in STD_LOGIC;
			 e9 : in STD_LOGIC;
			 e10 : in STD_LOGIC;
			 e11 : in STD_LOGIC;
			 e12 : in STD_LOGIC;
			 e13 : in STD_LOGIC;
			 e14 : in STD_LOGIC;
			 e15 : in STD_LOGIC;
			 e16 : in STD_LOGIC;
			 e17 : in STD_LOGIC;
			 e18 : in STD_LOGIC;
			 e19 : in STD_LOGIC;
			 e20 : in STD_LOGIC;
			 e21 : in STD_LOGIC;
			 e22 : in STD_LOGIC;
			 e23 : in STD_LOGIC;
			 e24 : in STD_LOGIC;
			 e25 : in STD_LOGIC;
			 e26 : in STD_LOGIC;
			 e27 : in STD_LOGIC;
			 e28 : in STD_LOGIC;
			 e29 : in STD_LOGIC;
			 e30 : in STD_LOGIC;
			 e31 : in STD_LOGIC;
			 data: out STD_LOGIC_VECTOR(31 downto 0));
end concatenador_entradas;

architecture Behavioral of concatenador_entradas is
begin
	process(e0, e1, e2, e3, e4, e5, e6, e7,
			  e8, e9, e10, e11, e12, e13, e14, e15,
			  e16, e17, e18, e19, e20, e21, e22, e23,
			  e24, e25, e26, e27, e28, e29, e30, e31)
	begin
		data <= e31 & e30 & e29 & e28 & e27 & e26 & e25 & e24 & 
				  e23 & e22 & e21 & e20 & e19 & e18 & e17 & e16 & 
				  e15 & e14 & e13 & e12 & e11 & e10 & e9 & e8 & 
				  e7 & e6 & e5 & e4 & e3 & e2 & e1 & e0;
	end process;
end Behavioral;