library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_de_Descodificacao is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P : out  STD_LOGIC;
           SEL_Dados : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0));
end ROM_de_Descodificacao;

architecture Behavioral of ROM_de_Descodificacao is

begin

	process(opcode)
	begin
		case opcode is
		
		--Periféricos 
			-- LDP Ri
			when "00000" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "01"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- STP Ri
			when "00001" => SEL_ALU <= "XXXX"; ESCR_P <= '1'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			
		--Leitura e Escrita
			-- LD Ri, constante
			when "00010" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "11"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- LD Ri, [constante]
			when "00011" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "10"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- ST [constante], Ri
			when "00100" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '1'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			
		--Lógica e Aritmética
			-- ADD Ri, Rj
			when "000101" => SEL_ALU <= "0000"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- SUB Ri, Rj
			when "00110" => SEL_ALU <= "0001"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- AND Ri, Rj
			when "00111" => SEL_ALU <= "0010"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- NAND Ri, Rj
			when "01000" => SEL_ALU <= "0011"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- OR Ri, Rj
			when "01001" => SEL_ALU <= "0100"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- NOR Ri, Rj
			when "01010" => SEL_ALU <= "0101"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- XOR Ri, Rj
			when "01011" => SEL_ALU <= "0110"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- XNOR Ri, Rj
			when "01100" => SEL_ALU <= "0111"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- CMP Ri, Rj
			when "01101" => SEL_ALU <= "1000"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "10"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			
		--Salto
			-- JL constante
			when "01110" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "000";
			-- JLE constante
			when "01111" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "001";
			-- JE constante
			when "10000" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "010";
			-- JGE constante
			when "10001" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "011";
			-- JG constante
			when "10010" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "100";
			-- JMP constante
			when "10011" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "001"; SEL_FLAG <= "XXX";
			-- JZ Ri, constante
			when "10100" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "100"; SEL_FLAG <= "XXX";
			-- JN, Ri, constante
			when "10101" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "011"; SEL_FLAG <= "XXX";
			
		--Outros
			when others => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			
		end case;
			
	end process;
		
end Behavioral;

