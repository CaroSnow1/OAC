--	Practica 3 - memoria
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
port (dir: in std_logic_vector(2 downto 0);
		data: out std_logic_vector(17 downto 0)
		);
end memory;

architecture behavioral of memory is
	type mem is array(0 to 8) of std_logic_vector(17 downto 0);
	signal internal_mem : mem;
	
	begin
	--ESTADO 000 -A
	internal_mem(0) <= "00" & "001" & "001" & "00011"& "00011"; --Con A
	--ESTADO 001 - B
	internal_mem(1) <= "10" & "010" & "100" & "10001"& "10011";
	--ESTADO 010 - C
	internal_mem(2) <= "00" & "011" & "011" & "00011"& "00011"; --Con A
	--ESTADO 011 - D
	internal_mem(3) <= "00" & "101" & "110" & "00101"& "00100";
	--ESTADO 100 - E
	internal_mem(4) <= "11" & "001" & "010" & "01000"& "01010";
	--ESTADO 101 - F
	internal_mem(5) <= "00" & "011" & "011" & "00010"& "00010"; --Con A
	--ESTADO 110 - G
	internal_mem(6) <= "01" & "101" & "010" & "10011"& "11011";
	
	
	process(dir)
		begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
end behavioral;
	
