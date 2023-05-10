-- Practica 6 - Registro1 - Registro de Transformación , interrupción y MicroPC
library ieee;
use ieee.std_logic_1164.all;


entity registro_1 is 
Port( 
		clk : in std_logic;
		reset :  in std_logic;
		ena: in std_logic;
		data_in: in std_logic_vector(3 downto 0); --LIGA
		data_out: out std_logic_vector(3 downto 0) --Edo
	);
end registro_1;

architecture behavioral of registro_1 is
	signal internal_value: std_logic:= '0';
	constant alta_impedancia : std_logic:= 'Z';
	constant zero: std_logic := '0';
	begin
		process(clk, reset, data_in)
			begin 
			if reset = '0' then
				internal_value <= zero;
			elsif rising_edge(clk) then 
				internal_value <= data_in;
			end if;
		end process;
		
	process(internal_value)
		begin
			data_out <= internal_value;
	end process;
end behavioral;