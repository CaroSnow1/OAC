--	Practica 3 - memoria
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
port (dir: in std_logic_vector(5 downto 0);
		data: out std_logic_vector(5 downto 0)
		);
end memory;

architecture behavioral of memory is
	type mem is array(0 to 61) of std_logic_vector(5 downto 0);
	signal internal_mem : mem;
	
	begin
	--ESTADO 000
	--*0*
	internal_mem(0)  <= "001" & "101";
	internal_mem(8)  <= "001" & "101";
	internal_mem(32) <= "001" & "101";
	internal_mem(40) <= "001" & "101";
	--*1*
	internal_mem(16) <= "011" & "000";
	internal_mem(24) <= "011" & "000";
	internal_mem(48) <= "011" & "000";
	internal_mem(56) <= "011" & "000";
	
	--ESTADO 001
	--***
	internal_mem(1)  <= "010" & "111";
	internal_mem(9)  <= "010" & "111";
	internal_mem(17) <= "010" & "111";
	internal_mem(25) <= "010" & "111";
	internal_mem(33) <= "010" & "111";
	internal_mem(41) <= "010" & "111";
	internal_mem(49) <= "010" & "111";
	internal_mem(57) <= "010" & "111";
	
	--ESTADO 010
	--**0
	internal_mem(2)  <= "010" & "000";
	internal_mem(18) <= "010" & "000";
	internal_mem(34) <= "010" & "000";
	internal_mem(50) <= "010" & "000";
	--0*1
	internal_mem(10) <= "100" & "000";
	internal_mem(26) <= "100" & "000";
	--1*1
	internal_mem(42) <= "101" & "000";
	internal_mem(58) <= "101" & "000";
	
	--ESTADO 011
	--0**
	internal_mem(3)  <= "011" & "011";
	internal_mem(11) <= "011" & "011";
	internal_mem(19) <= "011" & "011";
	internal_mem(27) <= "011" & "011";
	--1**
	internal_mem(35) <= "101" & "011";
	internal_mem(43) <= "101" & "011";
	internal_mem(51) <= "101" & "011";
	internal_mem(59) <= "101" & "011";
	
	--ESTADO 100
	--***
	internal_mem(4)  <= "000" & "010";
	internal_mem(12) <= "000" & "010";
	internal_mem(20) <= "000" & "010";
	internal_mem(28) <= "000" & "010";
	internal_mem(36) <= "000" & "010";
	internal_mem(44) <= "000" & "010";
	internal_mem(52) <= "000" & "010";
	internal_mem(60) <= "000" & "010";

	--ESTADO 101
	--***
	internal_mem(5)  <= "000" & "100";
	internal_mem(13) <= "000" & "100";
	internal_mem(21) <= "000" & "100";
	internal_mem(29) <= "000" & "100";
	internal_mem(37) <= "000" & "100";
	internal_mem(45) <= "000" & "100";
	internal_mem(53) <= "000" & "100";
	internal_mem(61) <= "000" & "100";
	
	process(dir)
		begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
end behavioral;
	
