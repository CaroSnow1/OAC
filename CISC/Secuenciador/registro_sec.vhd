library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_sec is
Port ( CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 ENTRADA : in STD_LOGIC_VECTOR(97 downto 0);
		 prueba: out std_logic_vector(4 downto 0);
		 vf: out std_logic;
		 instruccion: out std_logic_vector(1 downto 0);
		 liga: out std_logic_vector(11 downto 0);
		 nCRI: out std_logic;
		 EB: out std_logic_vector(1 downto 0);
		 nWB: out std_logic;
		 EA: out std_logic_vector(1 downto 0);
		 nWA: out std_logic;
		 selbus: out std_logic;
		 UPA: out std_logic_vector(9 downto 0);
		 nOEUPA: out std_logic;
		 nDUPA: out std_logic;
		 selmux: out std_logic;
		 nEX2: out std_logic;
		 nEX1: out std_logic;
		 nEX0: out std_logic;
		 X: out std_logic_vector(2 downto 0);
		 enaY: out std_logic;
		 nERA2: out std_logic;
		 nERA1: out std_logic;
		 nERA0: out std_logic;
		 RA: out std_logic_vector(2 downto 0);
		 nEAP2: out std_logic;
		 nEAP1: out std_logic;
		 nEAP0: out std_logic;
		 AP: out std_logic_vector(2 downto 0);
		 nEPC2: out std_logic;
		 nEPC1: out std_logic;
		 nEPC0: out std_logic;
		 PC: out std_logic_vector(2 downto 0);
		 nCBD: out std_logic;
		 nWX: out std_logic;
		 nEX: out std_logic;
		 nWI: out std_logic;
		 nEI: out std_logic;
		 nAS: out std_logic;
		 nRW: out std_logic;
		 BD: out std_logic;
		 DINT: out std_logic;
		 HINT: out std_logic;
		 SET_IRQ: out std_logic;
		 SET_XIRQ: out std_logic;
		 B9: out std_logic;
		 B8: out std_logic;
		 B7: out std_logic;
		 B6: out std_logic;
		 B5: out std_logic;
		 B4: out std_logic;
		 B3: out std_logic;
		 B2: out std_logic;
		 B1: out std_logic;
		 B0: out std_logic;
		 CC: out std_logic;
		 CN: out std_logic;
		 CV: out std_logic;
		 CZ: out std_logic;
		 CI: out std_logic;
		 CH: out std_logic;
		 CX: out std_logic;
		 CS: out std_logic;
		 nHB: out std_logic;
		 ACCSEC: out std_logic);
end registro_sec;

architecture Behavioral of registro_sec is

--signal prueba: std_logic_vector(4 downto 0):= "00000";
--signal vf: std_logic:= '0';
--signal instruccion: std_logic_vector(1 downto 0):= "00";
--signal liga: std_logic_vector(11 downto 0):= "000000000000";
--signal nCRI: std_logic:= '1'; -- Carga en Registro de instrucciones
--signal EB: std_logic_vector(1 downto 0):= "00"; -- Señales de control de ACCB
--signal nWB: std_logic:= '1'; -- Escritura en ACCB
--signal EA: std_logic_vector(1 downto 0):= "00"; -- Señales de control de ACCA
--signal nWA: std_logic:= '1'; -- Escritura en ACCA
--signal selbus: std_logic:= '0'; -- selecciona bus de entrada D de UPA
--signal UPA: std_logic_vector(9 downto 0):= "0000000000"; -- Lineas de control de UPA
--signal nOEUPA: std_logic:= '1'; -- Habilita salida Yupa de UPA
--signal nDUPA: std_logic:= '1'; -- Deshabilita UPA
--signal selmux: std_logic:= '0'; -- Selecciona acarreo
--signal nEX2: std_logic:= '1'; -- Habilita puerto 2 de INX
--signal nEX1: std_logic:= '1'; -- Habilita puerto 1 de INX
--signal nEX0: std_logic:= '1'; -- Habilita puerto 0 de INX
--signal X: std_logic_vector(2 downto 0):= "000"; -- Lineas de control de INX
--signal enaY: std_logic:= '0'; -- Señal de habilitacion de INY
--signal nERA2: std_logic:= '1'; -- Habilita puerto 2 de Reg Aux
--signal nERA1: std_logic:= '1'; -- Habilita puerto 1 de Reg Aux
--signal nERA0: std_logic:= '1'; -- Habilita puerto 0 de Reg Aux
--signal RA: std_logic_vector(2 downto 0):= "000"; -- Lineas de control de Reg Aux
--signal nEAP2: std_logic:= '1'; -- Habilita puerto 2 de Reg Apuntador de Pila
--signal nEAP1: std_logic:= '1'; -- Habilita puerto 1 de Reg Apuntador de Pila
--signal nEAP0: std_logic:= '1'; -- Habilita puerto 0 de Reg Apuntador de Pila
--signal AP: std_logic_vector(2 downto 0):= "000"; -- Lineas de control de Reg Apuntador de Pila
--signal nEPC2: std_logic:= '1'; -- Habilita puerto 2 de Reg Program Counter
--signal nEPC1: std_logic:= '1'; -- Habilita puerto 1 de Reg Program Counter
--signal nEPC0: std_logic:= '1'; -- Habilita puerto 0 de Reg Program Counter
--signal PC: std_logic_vector(2 downto 0):= "000"; -- Lineas de control de Reg Program Counter
--signal nCBD: std_logic:= '1'; -- Carga en registro de direcciones
--signal nAS: std_logic:= '1'; -- Habilita puerto de memoria externa
--signal nRW: std_logic:= '1'; -- Escritura en memoria externa
--signal BD: std_logic:= '0'; -- Selecciona bus de datos alto o bajo
--signal DINT: std_logic:= '0'; -- deshabilita generacion de señal INT
--signal HINT: std_logic:= '0'; -- habilita la generacion de señal INT
--signal SET_IRQ: std_logic:= '0'; -- habilita interrupciones internas
--signal SET_XIRQ: std_logic:= '0'; -- habilita interrupciones externas
--signal B9: std_logic:= '0'; -- control de registro de banderas
--signal B8: std_logic:= '0'; -- control de registro de banderas
--signal B7: std_logic:= '0'; -- control de registro de banderas
--signal B6: std_logic:= '0'; -- control de registro de banderas
--signal B5: std_logic:= '0'; -- control de registro de banderas
--signal B4: std_logic:= '0'; -- control de registro de banderas
--signal B3: std_logic:= '0'; -- control de registro de banderas
--signal B2: std_logic:= '0'; -- control de registro de banderas
--signal B1: std_logic:= '0'; -- control de registro de banderas
--signal B0: std_logic:= '0'; -- control de registro de banderas
--signal CC: std_logic:= '0'; -- clock de registro de banderas
--signal CN: std_logic:= '0'; -- clock de registro de banderas
--signal CV: std_logic:= '0'; -- clock de registro de banderas
--signal CZ: std_logic:= '0'; -- clock de registro de banderas
--signal CI: std_logic:= '0'; -- clock de registro de banderas
--signal CH: std_logic:= '0'; -- clock de registro de banderas
--signal CX: std_logic:= '0'; -- clock de registro de banderas
--signal CS: std_logic:= '0'; -- clock de registro de banderas
--signal nHB: std_logic:= '1'; -- Habilita puerto de registro de banderas
--signal ACCSEC: std_logic:= '0'; -- Acarrero personalizado


begin

   -- P4 P3 P2 P1 P0 VF I1 I0 L11 L10 L9 L8 L7 L6 L5 L4 L3 L2 L1 L0 nCRI EB1 EB0 nWB EA1 EA0 nWA selbus UPA9 UPA8 UPA7 UPA6 UPA5 UPA4 UPA3 UPA2 UPA1 UPA0 nOEUPA nDUPA selmux nEX2 nEX1 nEX0 X2 X1 X0 EnaY nERA2 nERA1 nERA0 RA2 RA1 RA0 nEAP2 nEAP1 nEAP0 AP2 AP1 AP0 nEPC2 nEPC1 nEPC0 PC2 PC1 PC0 nCBD nAS nRW BD DINT HINT SET_IRQ SET_XIRQ B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 CC CN CV CZ CI CH CX CS nHB ACCSEC

	process (CLK, RESET, ENTRADA)
	begin
		if RESET = '0' then
			prueba <= "00000";
			vf <= '0';
			instruccion <= "00";
			liga <= "000000000000";
			nCRI <= '1'; -- Carga en Registro de instrucciones
			EB <= "00"; -- Señales de control de ACCB
			nWB <= '1'; -- Escritura en ACCB
			EA <= "00"; -- Señales de control de ACCA
			nWA <= '1'; -- Escritura en ACCA
			selbus <= '0'; -- selecciona bus de entrada D de UPA
			UPA <= "0000000000"; -- Lineas de control de UPA
			nOEUPA <= '1'; -- Habilita salida Yupa de UPA
			nDUPA <= '1'; -- Deshabilita UPA
			selmux <= '0'; -- Selecciona acarreo
			nEX2 <= '1'; -- Habilita puerto 2 de INX
			nEX1 <= '1'; -- Habilita puerto 1 de INX
			nEX0 <= '1'; -- Habilita puerto 0 de INX
			X <= "000"; -- Lineas de control de INX
			enaY <= '0'; -- Señal de habilitacion de INY
			nERA2 <= '1'; -- Habilita puerto 2 de Reg Aux
			nERA1 <= '1'; -- Habilita puerto 1 de Reg Aux
			nERA0 <= '1'; -- Habilita puerto 0 de Reg Aux
			RA <= "000"; -- Lineas de control de Reg Aux
			nEAP2 <= '1'; -- Habilita puerto 2 de Reg Apuntador de Pila
			nEAP1 <= '1'; -- Habilita puerto 1 de Reg Apuntador de Pila
			nEAP0 <= '1'; -- Habilita puerto 0 de Reg Apuntador de Pila
			AP <= "000"; -- Lineas de control de Reg Apuntador de Pila
			nEPC2 <= '1'; -- Habilita puerto 2 de Reg Program Counter
			nEPC1 <= '1'; -- Habilita puerto 1 de Reg Program Counter
			nEPC0 <= '1'; -- Habilita puerto 0 de Reg Program Counter
			PC <= "000"; -- Lineas de control de Reg Program Counter
			nCBD <= '1'; -- Carga en registro de direcciones
			nWX <= '1'; -- Carga en registro de direcciones
			nEX <= '1'; -- Carga en registro de direcciones
			nWI <= '1'; -- Carga en registro de direcciones
			nEI <= '1'; -- Carga en registro de direcciones
			nAS <= '1'; -- Habilita puerto de memoria externa
			nRW <= '1'; -- Escritura en memoria externa
			BD <= '0'; -- Selecciona bus de datos alto o bajo
			DINT <= '0'; -- deshabilita generacion de señal INT
			HINT <= '0'; -- habilita la generacion de señal INT
			SET_IRQ <= '0'; -- habilita interrupciones internas
			SET_XIRQ <= '0'; -- habilita interrupciones externas
			B9 <= '0'; -- control de registro de banderas
			B8 <= '0'; -- control de registro de banderas
			B7 <= '0'; -- control de registro de banderas
			B6 <= '0'; -- control de registro de banderas
			B5 <= '0'; -- control de registro de banderas
			B4 <= '0'; -- control de registro de banderas
			B3 <= '0'; -- control de registro de banderas
			B2 <= '0'; -- control de registro de banderas
			B1 <= '0'; -- control de registro de banderas
			B0 <= '0'; -- control de registro de banderas
			CC <= '0'; -- clock de registro de banderas
			CN <= '0'; -- clock de registro de banderas
			CV <= '0'; -- clock de registro de banderas
			CZ <= '0'; -- clock de registro de banderas
			CI <= '0'; -- clock de registro de banderas
			CH <= '0'; -- clock de registro de banderas
			CX <= '0'; -- clock de registro de banderas
			CS <= '0'; -- clock de registro de banderas
			nHB <= '1'; -- Habilita puerto de registro de banderas
			ACCSEC <= '0'; -- Acarrero personalizado
		elsif rising_edge (CLK) then
			prueba <= ENTRADA(97 downto 93);
			vf <= ENTRADA(92);
			instruccion <= ENTRADA(91 downto 90);
			liga <= ENTRADA(89 downto 78);
			nCRI <= ENTRADA(77);
			EB <= ENTRADA(76 downto 75);
			nWB <= ENTRADA(74);
			EA <= ENTRADA(73 downto 72);
			nWA <= ENTRADA(71);
			selbus <= ENTRADA(70);
			UPA <= ENTRADA(69 downto 60);
			nOEUPA <= ENTRADA(59);
			nDUPA <= ENTRADA(58);
			selmux <= ENTRADA(57);
			nEX2 <= ENTRADA(56);
			nEX1 <= ENTRADA(55);
			nEX0 <= ENTRADA(54);
			X <= ENTRADA(53 downto 51);
			enaY <= ENTRADA(50);
			nERA2 <= ENTRADA(49);
			nERA1 <= ENTRADA(48);
			nERA0 <= ENTRADA(47);
			RA <= ENTRADA(46 downto 44);
			nEAP2 <= ENTRADA(43);
			nEAP1 <= ENTRADA(42);
			nEAP0 <= ENTRADA(41);
			AP <= ENTRADA(40 downto 38);
			nEPC2 <= ENTRADA(37);
			nEPC1 <= ENTRADA(36);
			nEPC0 <= ENTRADA(35);
			PC <= ENTRADA(34 downto 32);
			nCBD <= ENTRADA(31); --27
			nWX <= ENTRADA(30);
			nEX <= ENTRADA(29);
			nWI <= ENTRADA(28);
			nEI <= ENTRADA(27);
			nAS <= ENTRADA(26);
			nRW <= ENTRADA(25);
			BD <= ENTRADA(24);
			DINT <= ENTRADA(23);
			HINT <= ENTRADA(22);
			SET_IRQ <= ENTRADA(21);
			SET_XIRQ <= ENTRADA(20);
			B9 <= ENTRADA(19);
			B8 <= ENTRADA(18);
			B7 <= ENTRADA(17);
			B6 <= ENTRADA(16);
			B5 <= ENTRADA(15);
			B4 <= ENTRADA(14);
			B3 <= ENTRADA(13);
			B2 <= ENTRADA(12);
			B1 <= ENTRADA(11);
			B0 <= ENTRADA(10);
			CC <= ENTRADA(9);
			CN <= ENTRADA(8);
			CV <= ENTRADA(7);
			CZ <= ENTRADA(6);
			CI <= ENTRADA(5);
			CH <= ENTRADA(4);
			CX <= ENTRADA(3);
			CS <= ENTRADA(2);
			nHB <= ENTRADA(1);
			ACCSEC <= ENTRADA(0);
		end if;
	end process;
	
end Behavioral;