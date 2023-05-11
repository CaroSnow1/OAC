--Practica 6 --Lógica interna

library ieee;
use ieee.std_logic_1164.all;

entity logica_interna is
	Port (	
			instruccion: in std_logic_vector(1 downto 0); --4MI
			ncc: in std_logic; --Compuerta XOR
			sel: out std_logic; --Seleccion Incrementador Salto
			npl: out std_logic; --Activa la liga
			nmap: out std_logic; --Activa RT
			nvect: out std_logic --Activa RI
	);
end logica_interna;

architecture Behavioral of logica_interna is
begin
	process (instruccion, ncc)
	begin	
		if instruccion = "00" then
			sel 	<= '0';
			npl 	<= '1';
			nmap	<= '1';
			nvect <= '1';
		elsif instruccion = "01" then
			if ncc = '0' then 
				sel <= '1';
			else 
				sel <= '0';
			end if;
			npl 	<= '0';
			nmap 	<= '1';
			nvect <= '1';
		elsif instruccion = "10" then
			sel 	<= '1';
			npl 	<= '1';
			nmap	<= '0';
			nvect <= '1';
		elsif instruccion = "11" then
			if ncc = '0' then 
				sel <= '1';
			else 
				sel <= '0';
			end if;
			npl 	<= '1';
			nmap 	<= '1';
			nvect <= '0';
		end if;
	end process;
end behavioral;