--	Practica 5 - memoria
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
port (dir: in std_logic_vector(3 downto 0);
		data: out std_logic_vector(14 downto 0)
		);
end memory;

architecture behavioral of memory is
	type mem is array(0 to 16) of std_logic_vector(14 downto 0);
	signal internal_mem : mem;
	-- EDITAR LOS ESTADOS 
	begin
						 --  PRUEBA  VF     MI    	LIGA  	OUTS
	--ESTADO 0000 
	internal_mem(0)  <= "00" & "0" & "00" & "0000"& "000001"; 
	--ESTADO 0001 
	internal_mem(1)  <= "00" & "1" & "01" & "0111"& "001111";
	--ESTADO 0010 
	internal_mem(2)  <= "00" & "0" & "00" & "0000"& "000011"; 
	--ESTADO 0011 
	internal_mem(3)  <= "00" & "0" & "00" & "0000"& "001010";
	--ESTADO 0100 
	internal_mem(4)  <= "00" & "0" & "10" & "0000"& "010000";
	--ESTADO 0101 
	internal_mem(5)  <= "01" & "0" & "01" & "1010"& "010010"; 
	--ESTADO 0110 
	internal_mem(6)  <= "11" & "0" & "01" & "0010"& "001001";
	--ESTADO 0111 
	internal_mem(7)  <= "10" & "0" & "11" & "0000"& "010000";
	--ESTADO 1000 
	internal_mem(8)  <= "11" & "0" & "01" & "0001"& "100000";
	--ESTADO 1001 
	internal_mem(9)  <= "10" & "1" & "11" & "0000"& "001010";
	--ESTADO 1010 
	internal_mem(10) <= "11" & "0" & "01" & "0000"& "000000";
	--ESTADO 1011 
	internal_mem(11) <= "00" & "0" & "10" & "0000"& "000100";
	--ESTADO 1100 
	internal_mem(12) <= "11" & "0" & "01" & "0000"& "000100";
	--ESTADO 1101 
	internal_mem(13) <= "11" & "0" & "01" & "0000"& "101000";
	--ESTADO 1110 
	internal_mem(14) <= "11" & "0" & "01" & "0000"& "010011";
	
	process(dir)
		begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
end behavioral;
	
