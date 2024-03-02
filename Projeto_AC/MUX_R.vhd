library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_R is
    Port ( SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end MUX_R;

architecture Behavioral of MUX_R is

begin

	process(SEL_Dados, Constante, Dados_M, Dados_IN, Resultado)
	begin
		
		-- Início da estrutura de seleção de casos dependendo do valor de SEL_Dados
		case SEL_Dados is
			
			-- Atribui um valor á saída Dados_R dependendo do valor de SEL_Dados
			when "00" => Dados_R <= Resultado;
			when "01" => Dados_R <= Dados_IN;
			when "10" => Dados_R <= Dados_M;
			when "11" => Dados_R <= Constante;
			-- Para qualquer outro valor de SEL_Dados, atribui 'X' a Dados_R
			when others => Dados_R <= (others => 'X');
			
		end case;
	
	end process;

end Behavioral;

