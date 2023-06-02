library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bufferDataBus is
    port(PortL,PortR: inout std_logic_vector(7 downto 0);
          nRW: in std_logic;
			 BD: in std_logic);
end bufferDataBus;

architecture Behavioral of bufferDataBus is

begin

 PortR <= PortL when (nRW = '0' and BD = '1') else (others => 'Z');
 PortL <= PortR when (nRW = '1' and BD = '1') else (others => 'Z');

end Behavioral;