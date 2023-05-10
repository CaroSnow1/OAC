-- Practica 6 - Registro1 - Registro de Transformación , interrupción y MicroPC
-- Registro para Salidas
library ieee;
use ieee.std_logic_1164.all;

entity registro_outs is 
Port( 
		clk : in std_logic;
		reset :  in std_logic;
		ena: in std_logic;
		data_in: in std_logic_vector(5 downto 0); --LIGA
		data_out: out std_logic_vector(5 downto 0) --Edo
	);
end registro_outs;

architecture behavioral of registro_outs is
	signal internal_value: std_logic_vector(5 downto 0) := "000000";
	constant alta_impedancia: std_logic_vector(5 downto 0):= "ZZZZZZ";
	constant zero: std_logic_vector(5 downto 0) := "000000";
	
	begin
		process(clk, reset, data_in)
			begin 
			if reset = '0' then
				internal_value <= zero;
			elsif rising_edge(clk) then 
				internal_value <= data_in;
			end if;
		end process;
		
	process(internal_value, ena)
		begin
			if ena = '1' then
				data_out <= alta_impedancia;
			else 
				data_out <= internal_value;
			end if;
	end process;
end behavioral;