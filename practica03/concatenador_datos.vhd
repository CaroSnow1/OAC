--Practica 3 - concatenador de datos
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity concatenador_datos is
Port( A: in std_logic_vector(2 downto 0); --Entrada
		B: in std_logic_vector(2 downto 0); --Edo siguiente
		salida: out std_logic_vector(5 downto 0)
);
end concatenador_datos;

architecture behavioral of concatenador_datos is
begin
	process(A,B)
		begin
			salida <= B & A; --Liga y entradas
	end process;
end behavioral;
			