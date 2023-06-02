library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux3 is
	Port (  sel2 : in STD_LOGIC;
			  sel1 : in STD_LOGIC;
			  sel0 : in STD_LOGIC;
			  I0 : in STD_LOGIC;
			  I1 : in STD_LOGIC;
			  I2 : in STD_LOGIC;
			  I3 : in STD_LOGIC;
			  I4 : in STD_LOGIC;
			  I5 : in STD_LOGIC;
			  I6 : in STD_LOGIC;
			  I7 : in STD_LOGIC;
			  output  : out STD_LOGIC);
end mux3;

architecture Behavioral of mux3 is
begin
	process (sel0, sel1, sel2, I0, I1, I2, I3, I4, I5, I6, I7)
	begin		
		if sel2 = '0' and sel1 = '0' and sel0 = '0' then 
			output <= I0;
		elsif sel2 = '0' and sel1 = '0' and sel0 = '1' then 
			output <= I1;
		elsif sel2 = '0' and sel1 = '1' and sel0 = '0' then 
			output <= I2;
		elsif sel2 = '0' and sel1 = '1' and sel0 = '1' then 
			output <= I3;
		elsif sel2 = '1' and sel1 = '0' and sel0 = '0' then 
			output <= I4;
		elsif sel2 = '1' and sel1 = '0' and sel0 = '1' then 
			output <= I5;
		elsif sel2 = '1' and sel1 = '1' and sel0 = '0' then 
			output <= I6;
		elsif sel2 = '1' and sel1 = '1' and sel0 = '1' then 
			output <= I7;
		else
			output <= '0';
		end if;
	end process;
end Behavioral;