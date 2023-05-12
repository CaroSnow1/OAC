library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
	Port (  sel1 : in STD_LOGIC;
			  sel0 : in STD_LOGIC;
			  I0 : in STD_LOGIC;
			  I1 : in STD_LOGIC;
			  I2 : in STD_LOGIC;
			  I3 : in STD_LOGIC;
			  output  : out STD_LOGIC);
end mux2;

architecture Behavioral of mux2 is
begin
	process (sel0, sel1, I0, I1, I2, I3)
	begin		
		if sel1 = '0' and sel0 = '0' then 
			output <= I0;
		elsif sel1 = '0' and sel0 = '1' then 
			output <= I1;
		elsif sel1 = '1' and sel0 = '0' then 
			output <= I2;
		elsif sel1 = '1' and sel0 = '1' then 
			output <= I3;
		else
			output <= '0';
		end if;
	end process;
end Behavioral;