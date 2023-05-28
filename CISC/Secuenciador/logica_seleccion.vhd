library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity logica_seleccion is
	Port (  inst : in STD_LOGIC_VECTOR(1 downto 0);
			  CC : in STD_LOGIC;
			  SELECTOR : out STD_LOGIC;
			  PL : out STD_LOGIC;
			  MAP1 : Out STD_LOGIC;
			  VECT : out STD_LOGIC);
end logica_seleccion;

architecture Behavioral of logica_seleccion is
begin
	process (inst, CC)
	begin		
		if inst = "00" then 
			SELECTOR <= '0';
			PL <= '0';
			MAP1 <= '0';
			VECT <= '0';
		elsif (inst = "01" and CC = '1') then 
			SELECTOR <= '1';
			PL <= '1';
			MAP1 <= '0';
			VECT <= '0';
		elsif (inst = "01" and CC = '0') then 
			SELECTOR <= '0';
			PL <= '1';
			MAP1 <= '0';
			VECT <= '0';
		elsif inst = "10" then 
			SELECTOR <= '1';
			PL <= '0';
			MAP1 <= '1';
			VECT <= '0';
		elsif (inst = "11" and CC = '1') then 
			SELECTOR <= '1';
			PL <= '0';
			MAP1 <= '0';
			VECT <= '1';
		elsif (inst = "11" and CC = '0') then 
			SELECTOR <= '0';
			PL <= '0';
			MAP1 <= '0';
			VECT <= '1';
		end if;
	end process;
end Behavioral;