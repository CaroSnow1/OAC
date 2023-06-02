library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador_datos is
	Port ( d0 : in STD_LOGIC;
			 d1 : in STD_LOGIC;
			 d2 : in STD_LOGIC;
			 d3 : in STD_LOGIC;
			 d4 : in STD_LOGIC;
			 d5 : in STD_LOGIC;
			 d6 : in STD_LOGIC;
			 d7 : in STD_LOGIC;
			 data: out STD_LOGIC_VECTOR(7 downto 0));
end concatenador_datos;

architecture Behavioral of concatenador_datos is
begin
	process(d0, d1, d2, d3, d4, d5, d6, d7)
	begin
		data <= d7 & d6 & d5 & d4 & d3 & d2 & d1 & d0;
	end process;
end Behavioral;