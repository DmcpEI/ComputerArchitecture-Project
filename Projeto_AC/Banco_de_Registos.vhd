library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Banco_de_Registos is
    Port ( ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Banco_de_Registos;

architecture Behavioral of Banco_de_Registos is

begin

	process(ESCR_R, clk, SEL_R, Dados_R)
	
	-- Array que contem o 8 registos de 8 bits
	type array_r is array (0 to 7) of STD_LOGIC_VECTOR (7 downto 0); -- Guardar os dados
	variable registos : array_r;
	
	variable R0, R1, R2, R3, R4, R5, R6, R7 : STD_LOGIC_VECTOR (7 downto 0);
	
	begin
	
		-- Se o sinal do bit menos significativo de ESCR_P está a 1
		if ESCR_R(0) = '1' then
	
			-- Se está na transição ascendente do relógio
			if rising_edge(clk) then

				-- Atribui os valores aos registos dependendo dos três bits menos significativos de SEL_R
				case SEL_R (2 downto 0) is
				
					when "000" => R0 := Dados_R;
					when "001" => R1 := Dados_R;
					when "010" => R2 := Dados_R;
					when "011" => R3 := Dados_R;
					when "100" => R4 := Dados_R;
					when "101" => R5 := Dados_R;
					when "110" => R6 := Dados_R;
					when "111" => R7 := Dados_R;
					when others => R0 := "00000000"; 
					R1 := "00000000"; 
					R2 := "00000000"; 
					R3 := "00000000"; 
					R4 := "00000000"; 
					R5 := "00000000"; 
					R6 := "00000000"; 
					R7 := "00000000";
				
				end case;
				
			end if;
			
		end if;
		
		-- Atribui o valor do registo correspondente a cada operando
		
		case SEL_R (2 downto 0) is
				
			when "000" => Operando1 <= R0;
			when "001" => Operando1 <= R1;
			when "010" => Operando1 <= R2;
			when "011" => Operando1 <= R3;
			when "100" => Operando1 <= R4;
			when "101" => Operando1 <= R5;
			when "110" => Operando1 <= R6;
			when "111" => Operando1 <= R7;
			-- Para qualquer outro valor dos 3 bits menos significativos de SEL_R, atribui 'X' a Operando1
			when others => Operando1 <= (others => 'X');
		
		end case;
		
		case SEL_R (5 downto 3) is
				
			when "000" => Operando2 <= R0;
			when "001" => Operando2 <= R1;
			when "010" => Operando2 <= R2;
			when "011" => Operando2 <= R3;
			when "100" => Operando2 <= R4;
			when "101" => Operando2 <= R5;
			when "110" => Operando2 <= R6;
			when "111" => Operando2 <= R7;
			-- Para qualquer outro valor dos 3 bits mais significativos de SEL_R, atribui 'X' a Operando2
			when others => Operando2 <= (others => 'X');
		
		end case;
	
	end process;

end Behavioral;