library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.ALL;

entity upa is
	Port( UPA_C : in std_logic_vector(9 downto 0); -- Lineas de control
			A : in std_logic_vector(7 downto 0); -- Entrada A
			B : in std_logic_vector(7 downto 0); -- B
			D : in std_logic_vector(7 downto 0); -- D
			nDUPA : in std_logic; -- DUPA
			nOEUPA : in std_logic; -- OEUPA
			Cin : in std_logic; -- Acarreo de entrada
			Q7 : out std_logic;
			Q0 : out std_logic;
			Y7 : out std_logic;
			Y0 : out std_logic;
			C : out std_logic; -- Acarreo
			N : out std_logic; -- Signo
			V : out std_logic; -- Overflow
			Z : out std_logic; -- Zero
			H : out std_logic; -- Half carry
			FC : out std_logic; -- FC
			Yupa: out std_logic_vector(7 downto 0);
			Yupa2: out std_logic_vector(7 downto 0);
			Debug_Yupa: out std_logic_vector(7 downto 0);
			Debug_Q: out std_logic_vector(7 downto 0);
			clk : in std_logic
			);
end upa;

architecture Behavioral of upa is
	signal contador : std_logic_vector(2 downto 0) := B"000";
	signal R : std_logic_vector(7 downto 0) := X"00";
	signal S : std_logic_vector(7 downto 0) := X"00";
	signal Q : std_logic_vector(7 downto 0) := X"00";
	signal F : std_logic_vector(8 downto 0) := B"000000000"; -- Un bit extra para el overflow y acarreo
	signal Banderas : std_logic_vector(4 downto 0) := B"00000"; -- Banderas
	signal reset : std_logic := '0';
	signal incrementa : std_logic := '0';
	signal Yupa_interno : std_logic_vector(7 downto 0) := X"00";
	
	constant ZERO : std_logic_vector(7 downto 0) := X"00";
	
	begin	
	
	FC <= and_reduce(contador);
	Debug_Yupa <= Yupa_interno;
	Debug_Q <= Q;
	
	-- Seleccion de entrada
	UPA_Entrada : process(UPA_C, A, B, Q, D)
	begin
		case UPA_C(3 downto 0) is
			when B"0000" =>
				R <= A;
				S <= ZERO;
				reset <= '0';
				incrementa <= '0';
			when B"0001" =>
				R <= A;
				S <= B;
				reset <= '0';
				incrementa <= '0';
			when B"0010" =>
				R <= Q;
				S <= ZERO;
				reset <= '0';
				incrementa <= '0';
			when B"0011" =>
				R <= B;
				S <= ZERO;
				reset <= '0';
				incrementa <= '0';
			when B"0100" =>
				R <= ZERO;
				S <= A;
				reset <= '0';
				incrementa <= '0';
			when B"0101" =>
				R <= D;
				S <= A;
				reset <= '0';
				incrementa <= '0';
			when B"0110" =>
				R <= D;
				S <= Q;
				reset <= '0';
				incrementa <= '0';
			when B"0111" =>
				R <= D;
				S <= ZERO;
				reset <= '0';
				incrementa <= '0';
			when B"1000" =>
				R <= D;
				S <= B;
				reset <= '0';
				incrementa <= '0';
			when B"1001" =>
				R <= Q;
				S <= B;
				reset <= '0';
				incrementa <= '0';
			when B"1010" =>
				R <= R;
				S <= S;
				reset <= '1';
				incrementa <= '0';
			when B"1011" =>
				R <= R;
				S <= S;
				reset <= '0';
				incrementa <= '1';
			when B"1100" =>
				R <= Q;
				S <= A;
				reset <= '0';
				incrementa <= '0';
			when others =>
				R <= R;
				S <= S;
				reset <= '0';
				incrementa <= '0';
		end case;
	end process;
	
	
	-- Operacion
	UPA_Op : process (UPA_C, R, S, Cin)
	begin
		case UPA_C(6 downto 4) is
			when B"000" =>
				F <= ('0' & R) + ('0' & S) + Cin;
			when B"001" =>
				F <= ('0' & S) - ('0' & R) - not(Cin);
			when B"010" =>
				F <= ('0' & R) - ('0' & S) - not(Cin);
			when B"011" =>
				F <= ('0' & R) or ('0' & S);
			when B"100" =>
				F <= ('0' & R) and ('0' & S);
			when B"101" =>
				F <= not('0' & R) and ('0' & S);
			when B"110" =>
				F <= ('0' & R) xor ('0' & S);
			when B"111" =>
				F <= not(('0' & R) xor ('0' & S));
		end case;
	end process;
	
	
	-- Destinos y desplazamientos
	UPA_Dest : process(clk, F, A, B, nDUPA)
	begin
		if(rising_edge(clk) and nDUPA = '1') then
			case UPA_C(9 downto 7) is
				when B"000" =>
						Yupa_interno <= F(7 downto 0);
						Q <= F(7 downto 0);
						
				when B"001" =>
						Yupa_interno <= F(7 downto 0);
						Q <= Q;
						
				when B"010" =>
						Yupa_interno <= A;
						Q <= Q;
						
				when B"011" =>
						Yupa_interno <= B;
						Q <= Q;
						
				when B"100" => -- Corrimiento derecha
						Yupa_interno <= Yupa_interno(0) & Yupa_interno(7 downto 1);
						Q <= Q;
						
				when B"101" =>
						Yupa_interno <= Yupa_interno;
						Q <= Q(0) & Q(7 downto 1);
						
				when B"110" => -- Corrimiento izquierda
						Yupa_interno <= Yupa_interno(6 downto 0) & Yupa_interno(7);
						Q <= Q;
						
				when B"111" =>
						Yupa_interno <= Yupa_interno;
						Q <= Q(6 downto 0) & Q(7);
						
			end case;
			Banderas <= F(4) & F(8) & F(7) & F(8) & not(or_reduce(F(7 downto 0))); -- Half Acarreo Signo Overflow Cero
		end if;
	end process;
	
	
	-- COntador
	UPA_CONT : process (clk, reset, incrementa)
	begin
		if reset = '1' then
			contador <= B"000";
		elsif rising_edge(clk) and incrementa = '1' then
			contador <= contador + 1;
		end if;
	end process;
	
	
	-- Habilitacion de las salidas
	UPA_TRI_STATE: process (nOEUPA, Yupa_interno, banderas, Q)
	begin
		if (nOEUPA = '0') then 
			Yupa <= Yupa_interno;
			Yupa2 <= Yupa_interno;
		else 
			Yupa <= (others => 'Z');
			Yupa2 <= (others => 'Z');
		end if;
		H <= Banderas(4);
		C <= Banderas(3);
		N <= Banderas(2);
		V <= Banderas(1);
		Z <= Banderas(0);
		Y7 <= Yupa_interno(7);
		Y0 <= Yupa_interno(0);
		Q7 <= Q(7);
		Q0 <= Q(0);
	end process;
	
		
end Behavioral;
