--	Practica 5 - memoria
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
port (dir: in std_logic_vector(2 downto 0);
		data: out std_logic_vector(14 downto 0)
		);
end memory;

architecture behavioral of memory is
	type mem is array(0 to 8) of std_logic_vector(14 downto 0);
	signal internal_mem : mem;
	
	begin
	--ESTADO 000 
	internal_mem(0) <= "010" & "1" & "110" & "0011"& "0101"; 
	--ESTADO 001 
	internal_mem(1) <= "000" & "0" & "111" & "1011"& "1000";
	--ESTADO 010 
	internal_mem(2) <= "001" & "0" & "101" & "1010"& "1111"; 
	--ESTADO 011 
	internal_mem(3) <= "100" & "1" & "100" & "0101"& "0101";
	--ESTADO 100 
	internal_mem(4) <= "011" & "1" & "010" & "1111"& "1111";
	--ESTADO 101 
	internal_mem(5) <= "100" & "0" & "011" & "1011"& "1011"; --Con A
	--ESTADO 110 
	internal_mem(6) <= "100" & "0" & "100" & "0101"& "0101";
	--ESTADO 111 
	internal_mem(7) <= "100" & "0" & "001" & "0000"& "0000";
	
	process(dir)
		begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
end behavioral;
	
