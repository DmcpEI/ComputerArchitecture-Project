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

	process(clk, reset, ESCR_PC, Constante)
	-- Declaração da variavel contagem
	variable contagem : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   begin

		-- Se está na transição ascendente do relógio
		if rising_edge(clk) then
		
			-- Se o sinal do reset for 0
			if reset = '0' then

				-- Se o sinal do ESCR_PC for 0 aumenta em um o valor da variável contagem
				if ESCR_PC = '0' then
					
					contagem := contagem + "00000001";
				
				-- Se o sinal do ESCR_PC for 1 atribui o valor da entrada Constante á variável contagem
				else 
				 
					contagem := Constante;
					  
				end if;
			
			-- Se o sinal do reset for 1 o valor da variável contagem passa a zero
			else 

			 contagem := "00000000";
				 
			end if;

			-- Atribui o valor da variável contagem á saída Endereco
			Endereco <= contagem;
			
		end if;
		
    end process;

end Behavioral;

