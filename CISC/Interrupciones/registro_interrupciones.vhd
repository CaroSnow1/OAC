library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.ALL;

entity registro_interrupciones is
	Port( --Control : in std_logic_vector(2 downto 0); -- Lineas de control
			C : inout std_logic_vector(7 downto 0); -- BUS C
			D : inout std_logic_vector(7 downto 0); -- BUS D
			--E : out std_logic_vector(15 downto 0); -- BUS E
			--ENA0 : in std_logic; -- Habilitacion Bus D (E0)
			--ENA1 : in std_logic; -- Habilitacion BUS C (E1)
			--ENA2 : in std_logic; -- Habilitacion Bus E (E2)
			--R15 : inout std_logic;
			--R0 : inout std_logic;
			--Z : out std_logic;
			--N : out std_logic;
			Debug: out std_logic_vector(15 downto 0);
			clk : in std_logic;
			--nCS : in std_logic; -- Bit de habilitacion del registro
			nE: in std_logic;
			nW: in std_logic;
			RESET: in std_logic
			);
end registro_interrupciones;

architecture Behavioral of registro_interrupciones is
	signal data_out : std_logic_vector(15 downto 0) := X"0008";
	
	begin	
	
	
	process (data_out, nE) 
	begin
		Debug <= data_out;
	end process;
	
	
	-- Write Block
	ACC_WRITE: process (RESET, nW, nE) 
	begin
		if(RESET = '0') then
			data_out <= X"0008";
		elsif (rising_edge(clk) and nE = '0') then
			if (nW = '0') then
				data_out <= C & D;
			end if;
		end if;
	end process;

	TRI_STATE_D: process (data_out, nW, nE)
	begin
		if (nW = '1' and nE = '0') then -- Lectura
			D <= data_out(7 downto 0); -- Parte baja
		else 
			D <= (others => 'Z');
		end if;
	end process;
	
	
	TRI_STATE_C: process (data_out, nW, nE)
	begin
		if (nW = '1' and nE = '0') then -- Lectura
			C <= data_out(15 downto 8); -- Parte alta
		else 
			C <= (others => 'Z');
		end if;
	end process;
	
		
end Behavioral;
