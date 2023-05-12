library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity registro_instruccion is
	Port (  RELOJ : in STD_LOGIC;
			  RESET : in STD_LOGIC;
			  ENTRADA  : in STD_LOGIC_VECTOR(7 downto 0);
			  SALIDA : out STD_LOGIC_VECTOR(11 downto 0));
end registro_instruccion;

architecture Behavioral of registro_instruccion is
signal valor_interno : std_logic_vector (11 downto 0) := X"000";
begin
	process (RELOJ, RESET, ENTRADA)
	begin		
		if RESET = '0' then 
			valor_interno <= X"000";
		elsif rising_edge (RELOJ) then
			valor_interno <= ENTRADA & X"0";
		end if;
	end process;
	
	process (valor_interno)
	begin
		SALIDA <= valor_interno;
	end process;
end Behavioral;