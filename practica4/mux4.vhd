--Multiplexor4 - Multiplexor de entradas
library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
port( sel: in std_logic_vector(1 downto 0);
		I0: in std_logic; --X
		I1: in std_logic; --Y
		I2: in std_logic; --Z
		I3: in std_logic; --W
		O: out std_logic
);
end mux4;

architecture Behavioral of mux4 is
begin
	process(sel,I0,I1,I2,I3)
	begin
		if sel = "00" then
			O <= I0;
		elsif sel = "01" then
			O <= I1;
		elsif sel = "10" then
			O <= I2;
		elsif sel = "11" then
			O <= I3;
		end if;
	end process;
end Behavioral;