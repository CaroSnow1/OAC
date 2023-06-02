library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.ALL;

entity contador_ID is
	Port( Control : in std_logic_vector(2 downto 0); -- Lineas de control
			C : inout std_logic_vector(7 downto 0); -- BUS C
			D : inout std_logic_vector(7 downto 0); -- BUS D
			E : out std_logic_vector(15 downto 0); -- BUS E
			ENA0 : in std_logic; -- Habilitacion Bus D (E0)
			ENA1 : in std_logic; -- Habilitacion BUS C (E1)
			ENA2 : in std_logic; -- Habilitacion Bus E (E2)
			R15 : inout std_logic;
			R0 : inout std_logic;
			Z : out std_logic;
			N : out std_logic;
			Debug: out std_logic_vector(15 downto 0);
			clk : in std_logic;
			nCS : in std_logic; -- Bit de habilitacion del registro
			RESET: in std_logic
			);
end contador_ID;

architecture Behavioral of contador_ID is
	signal data_out : std_logic_vector(15 downto 0) := X"0000";
	
	begin	
	
	
	process (data_out, nCS) 
	begin
		if ( nCS = '0') then
			Z <= not(or_reduce(data_out));
			N <= data_out(15);
		else
			Z <= 'Z';
			N <= 'Z';
		end if;
		Debug <= data_out;
	end process;
	
	
	-- Write Block
	ACC_WRITE: process (RESET, Control, clk, R15, R0, C, D, nCS) 
	begin
		if(RESET = '0') then
			data_out <= X"0000";
		elsif (rising_edge(clk) and nCS = '0') then
			if (Control = "001") then -- Incrementa en 1
				data_out <= data_out + 1;
			elsif (Control = "010") then -- Decrementa en 1
				data_out <= data_out - 1;
			elsif (Control = "011") then -- Carga parte baja
				data_out(7 downto 0) <= D;
			elsif (Control = "100") then -- Carga parte alta
				data_out(15 downto 8) <= C;
			elsif (Control = "101") then -- Carga 16 bits
				data_out <= C & D;
			elsif (Control = "110") then -- Corrimiento izquierda
				data_out <= data_out(14 downto 0) & R0;
			elsif (Control = "111") then -- Corrimiento derecha
				data_out <= R15 & data_out(15 downto 1);
			end if;
		end if;
	end process;

	TRI_STATE_D: process (ENA0, data_out, Control, nCS)
	begin
		if (ENA0 = '0' and Control = "000" and nCS = '0') then -- Lectura
			D <= data_out(7 downto 0); -- Parte baja
		else 
			D <= (others => 'Z');
		end if;
	end process;
	
	
	TRI_STATE_C: process (ENA1, ENA2, data_out, Control, nCS)
	begin
		if (ENA1 = '0' and Control = "000" and nCS = '0') then -- Lectura
			C <= data_out(15 downto 8); -- Parte alta
		else 
			C <= (others => 'Z');
		end if;
	end process;
	
	
	TRI_STATE_E: process (ENA2, data_out, Control, nCS)
	begin
		if (ENA2 = '0' and Control = "000" and nCS = '0') then -- Lectura
			E <= data_out;
		else 
			E <= (others => 'Z');
		end if;
	end process;
	
	TRI_STATE_Rs: process (data_out, Control, nCS)
	begin
		if (Control = "000" and nCS = '0') then -- Lectura
			R15 <= data_out(15);
			R0  <= data_out(0);
		else 
			R15 <= 'Z';
			R0 <= 'Z';
		end if;
	end process;
	
		
end Behavioral;
