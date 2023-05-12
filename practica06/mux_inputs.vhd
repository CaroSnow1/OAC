-- Practica 6
-- Multiplexor2_5 - Multiplexor de prueba
library ieee;
use ieee.std_logic_1164.all;

entity mux_inputs is
port( 
	sel: in std_logic_vector(1 downto 0); -- 2 bits
	I0: in std_logic; -- X
	I1: in std_logic; -- Y
	I2: in std_logic; -- INT
	I3: in std_logic; -- Qaux
	O: out std_logic
);
end mux_inputs;

architecture Behavioral of mux_inputs is
begin
	process(sel,I0,I1,I2)
	begin
		if sel = "00" then
			O <= I0;	-- X
		elsif sel = "01" then
			O <= I1; -- Y
		elsif sel = "10" then
			O <= I2; -- INT
		elsif sel = "11" then
			O <= I3; -- Qaux
		end if;
	end process;
end Behavioral;