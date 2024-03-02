library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Periferico_de_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_de_Entrada;

architecture Behavioral of Periferico_de_Entrada is

begin

	process(ESCR_P, PIN)
	begin
		
		-- Se o sinal ESCR_P está a 0
		if ESCR_P = '0' then
			
			-- Atribui o valor da entrada PIN á saída Dados_IN
			Dados_IN <= PIN;
			
		end if;
	
	end process;

end Behavioral;

