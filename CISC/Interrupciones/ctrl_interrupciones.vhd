library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ctrl_interrupciones is
	Port (  IRQn : in STD_LOGIC; -- Conectar a boton de interrupciones internas
			  XIRQn : in STD_LOGIC; -- Conectar a boton de interrupciones externas
			  SET_IRQ : in STD_LOGIC; -- Resetea bandera de IRQ
			  SET_XIRQ : in STD_LOGIC; -- Resetea bandera de XIRQ
			  I  : in STD_LOGIC; -- I del registro de banderas
			  X  : in STD_LOGIC; -- X del registro de banderas
			  DINT  : in STD_LOGIC; -- Deshabilita generacion de la linea INT
			  HINT  : in STD_LOGIC; -- Habilita generacion de la linea INT
			  VECTn  : in STD_LOGIC; -- Linea generada por el secuenciador
			  INT: out std_logic; -- Indica al secuenciador la existencia de interrupciones
			  Y : out STD_LOGIC_VECTOR(11 downto 0); -- Direccion de la microinstruccion a ejecutar
			  clk : in std_logic
			  ); 
end ctrl_interrupciones;

architecture Behavioral of ctrl_interrupciones is
constant dir_IRQ : std_logic_vector(11 downto 0) := X"000"; -- Direccion de microprograma de IRQ
constant dir_XIRQ : std_logic_vector(11 downto 0) := X"200"; -- Direccion de microprograma de XIRQ
signal IRQ_flag : std_logic := '1'; -- Indica si hubo interrupcion interna
signal XIRQ_flag : std_logic := '1'; -- Indcica si hubo interrupcion externa
signal INT_flag : std_logic := '1'; -- Bandera INT


begin

	INT <= ((I or IRQ_flag) nand (X or XIRQ_flag)) and INT_flag;

	-- Controla la generacion de la bandera interna IRQ_flag
	CTRL_IRQ : process (clk, IRQn, SET_IRQ)
	begin	
		if rising_edge(clk) then
			if not(IRQn) = '0' and SET_IRQ = '0' then 
				IRQ_flag <= IRQ_flag;
			elsif not(IRQn) = '0' and SET_IRQ = '1' then
				IRQ_flag <= '1';
			elsif not(IRQn) = '1' and SET_IRQ = '0' then
				IRQ_flag <= '0';
			else
				IRQ_flag <= '0';
			end if;
		end if;
	end process;
	
	-- COntrola la generacion de la bandera interna XIRQ_flag
	CTRL_XIRQ : process (clk, XIRQn, SET_XIRQ)
	begin		
		if rising_edge(clk) then
			if not(XIRQn) = '0' and SET_XIRQ = '0' then 
				XIRQ_flag <= XIRQ_flag;
			elsif not(XIRQn) = '0' and SET_XIRQ = '1' then
				XIRQ_flag <= '1';
			elsif not(XIRQn) = '1' and SET_XIRQ = '0' then
				XIRQ_flag <= '0';
			else
				XIRQ_flag <= '0';
			end if;
		end if;
	end process;
	
	-- COntrola la generacion de la direccion de la interrupcion
	CTRL_Y : process (IRQ_flag, XIRQ_flag, I, X, VECTn)
	begin
		if(VECTn = '0') then	
			if IRQ_flag = '0' and I = '0' then -- Hay interrupcion interna y estan habilitadas las interrupciones IRQ en Reg. Banderas y VECT = 0
				Y <= dir_IRQ;
			elsif XIRQ_flag = '0' and X = '0' then -- Hay interrupcion externa y estan habilitadas las interrupciones XIRQ en Reg. Banderas y VECT = 0
				Y <= dir_XIRQ;
			else 
				Y <= (others => 'Z');
			end if;
		else 
			Y <= (others => 'Z');
		end if;
	end process;
	
	-- COntrola la generacion de la bandera INT_flag (Habilita o Deshabilita la generacion de la linea INT)
	CTRL_INT_DH : process (clk, DINT, HINT)
	begin	
		if rising_edge(clk) then
			if DINT = '0' and HINT = '0' then 
				INT_flag <= INT_flag;
			elsif DINT = '0' and HINT = '1' then 
				INT_flag <= '1';
			elsif DINT = '1' and HINT = '0' then 
				INT_flag <= '0';
			else
				INT_flag <= '0';
			end if;
		end if;
	end process;
	
	
end Behavioral;