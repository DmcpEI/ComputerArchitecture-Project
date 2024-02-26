library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is

begin

	process(clk, reset, Constante, ESCR_PC)
	variable contagem : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	begin
	
		if rising_edge(clk) then
			if reset = '0' then
				if ESCR_PC = '0' then
					contagem := contagem + 1;
				else
					contagem := Constante;
				end if;
			else
				contagem := "00000000";
			end if;
			
			Endereco <= contagem;
		end if;
	
	end process;

end Behavioral;
