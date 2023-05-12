library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
	Port( address : in std_logic_vector(15 downto 0);
			data : inout std_logic_vector(7 downto 0);
			Wn : in std_logic;
			CSn : in std_logic;
			clk: in std_logic
			);
end ram;

architecture Behavioral of ram is
	type memory is array(0 to 255) of std_logic_vector(7 downto 0);
	signal mem : memory;
	
	attribute ram_init_file : string;
	attribute ram_init_file of mem : signal is "mem_content.mif";
	
	begin
	
	-- Memory Write Block
	MEM_WRITE: process (CSn, Wn, clk) 
	begin
		if (falling_edge(clk)) then		
			if (CSn = '0' and Wn = '0') then
				mem(conv_integer(unsigned(address))) <= data;
			end if;
		end if;
	end process;
	
 -- Memory Read Block
	MEM_READ: process (CSn, Wn, clk) 
	begin
	--data <= (others => 'Z');
	if (falling_edge(clk)) then
		if (CSn = '0' and Wn = '1') then
			data <= mem(conv_integer(unsigned(address)));
		else
			data <= (others => 'Z');
		end if;
	--else
		
	end if;
	end process;
	
end Behavioral;