--Multiplexor - Multiplexor de salidas
library ieee;
use ieee.std_logic_1164.all;

entity mux2_5 is
port( sel: in std_logic;
		I0: in std_logic_vector(3 downto 0); --Salidas falsas
		I1: in std_logic_vector(3 downto 0); --Salidas verdaderas
		O: out std_logic_vector(3 downto 0)
);
end mux2_5;

architecture Behavioral of mux2_5 is
begin
	process(sel,I0,I1)
	begin
		if sel = '0' then
			O <= I0;
		elsif sel = '1' then
			O <= I1;
		end if;
	end process;
end Behavioral;