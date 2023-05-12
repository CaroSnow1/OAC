library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.ALL;

entity acumulador is
	Port( E : in std_logic_vector(1 downto 0);
			A : inout std_logic_vector(7 downto 0);
			B : inout std_logic_vector(7 downto 0);
			C : inout std_logic_vector(7 downto 0);
			nW : in std_logic;
			clk : in std_logic;
			Z : out std_logic;
			N : out std_logic;
			Debug : out std_logic_vector(7 downto 0)
			);
end acumulador;

architecture Behavioral of acumulador is
	signal data_out : std_logic_vector(7 downto 0) := X"00";
	
	begin	
	
	Z <= not(or_reduce(data_out));
	N <= data_out(7);
	Debug <= data_out;
	
	-- Write Block
	ACC_WRITE: process (E, clk, nW, A, B, C) 
	begin
		if (rising_edge(clk) and nW = '0') then
			if (E = "01") then
				data_out <= A;
			elsif (E = "10") then
				data_out <= B;
			elsif (E = "11") then
				data_out <= C;
			end if;
		end if;
	end process;

	TRI_STATE: process (E, nW, data_out)
	begin
		if (E = "01" and nW = '1') then
			A <= data_out;
			B <= (others => 'Z');
			C <= (others => 'Z');
		elsif (E = "10" and nW = '1') then
			B <= data_out;
			A <= (others => 'Z');
			C <= (others => 'Z');
		elsif (E = "11" and nW = '1') then
			C <= data_out;
			A <= (others => 'Z');
			B <= (others => 'Z');
		else 
			A <= (others => 'Z');
			B <= (others => 'Z');
			C <= (others => 'Z');
		end if;
	end process;
		
end Behavioral;
