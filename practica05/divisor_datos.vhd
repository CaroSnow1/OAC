--Divisor de datos
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
Port( entrada: in std_logic_vector(14 downto 0);
		prueba: out std_logic_vector(1 downto 0); --prueba
		vf: OUT std_logic_vector(0 downto 0);
		liga: out std_logic_vector(2 downto 0); --liga 
		salidas_f: out std_logic_vector(3 downto 0); --salidas verdaderas
		salidas_v: out std_logic_vector(3 downto 0) --salidas falsas
);
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
		begin
			prueba <= entrada(14 downto 12);
			vf <= entrada(11 downto 11);
			liga <= entrada(10 downto 8);
			salidas_f <= entrada(7 downto 4);
			salidas_v <= entrada(3 downto 0);
	end process;
end behavioral;