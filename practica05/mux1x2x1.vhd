----	Practica 5 - mux1x2x1_3 - Mux de salidas
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux1x2x1 is
Port(  
		prueba: in std_logic; -- Carga
		e0: in std_logic_vector(3 downto 0); --Incremento
		e1: in std_logic_vector(3 downto 0);  --Salto
		salida: out std_logic_vector(3 downto 0) --Edo. presente 
	);
end mux1x2x1; 

architecture Behavioral of mux1x2x1 is
begin
process (prueba, e0, e1)
	begin
		if prueba = '0' then
			salida <= e0;
		elsif prueba  = '1' then
			salida <= e1;
		end if;
end process;
end Behavioral;
