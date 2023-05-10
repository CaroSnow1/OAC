-- Practica 06 - Divisor de datos
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
Port( 
	entrada: 	in  std_logic_vector(14 downto 0);
	liga: 		out std_logic_vector(3 downto 0); --liga 
	inst:			out std_logic_vector(1 downto 0); -- instruccion MI
	prueba: 		out std_logic_vector(1 downto 0); --prueba
	vf:			out std_logic;--valor falso
	salidas:		out std_logic_vector(5 downto 0) --salidas 
);
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
		begin
			prueba <= entrada(14 downto 13);
			vf <= entrada(12);
			inst <= entrada(11 downto 10);
			liga <= entrada(9 downto 6);
			salidas <= entrada(5 downto 0);
	end process;
end behavioral;