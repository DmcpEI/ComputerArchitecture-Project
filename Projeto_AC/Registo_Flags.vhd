library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registo_Flags is
    Port ( clk : in  STD_LOGIC;
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG : out  STD_LOGIC);
end Registo_Flags;

architecture Behavioral of Registo_Flags is

begin

	process(clk, E_FLAG, ESCR_R, SEL_FLAG)
	
	-- Declaração da variavel registo
	variable registo: STD_LOGIC_VECTOR (4 downto 0);
	
	begin
	
		-- Se está na transição ascendente do relógio
		if rising_edge(clk) then
		
			-- Se o bit mais significativo de ESCR_R está a 1
			if ESCR_R(1) = '1' then
				
				-- Guarda o valor da entrada E_FLAG na variável registo
				registo := E_FLAG;
			
			end if;
		
		end if;
		
		-- Início da estrutura de seleção de casos dependendo do valor de SEL_FLAG
		case SEL_FLAG is
		
			-- Atribui o valor de um bit da variavel registo á saída S_FLAG dependendo do valor de SEL_FLAG	
			when "000" => S_FLAG <= registo(0);
			when "001" => S_FLAG <= registo(1);
			when "010" => S_FLAG <= registo(2);
			when "011" => S_FLAG <= registo(3);
			when "100" => S_FLAG <= registo(4);
			-- Para qualquer outro valor de SEL_FLAG, atribui 'X' a S_FLAG
			when others => S_FLAG <= 'X';
		
		end case;
	
	end process;

end Behavioral;

