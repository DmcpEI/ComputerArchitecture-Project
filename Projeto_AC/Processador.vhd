library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Processador is
    Port ( reset : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Constante_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk : STD_LOGIC;
			  Constante_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           WR : out  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Processador;

architecture Struct of Processador is

Component PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component MUX_PC is
    Port ( zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
           S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
			  NOR_Operando1 : in STD_LOGIC;
           ESCR_PC : out  STD_LOGIC);
end Component;

Component Registo_Flags is
    Port ( clk : in  STD_LOGIC;
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG : out  STD_LOGIC);
end Component;

Component ROM_de_Descodificacao is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P : out  STD_LOGIC;
           SEL_Dados : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0));
end Component;

Component ALU is
    Port ( SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           E_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Banco_de_Registos is
    Port ( ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component MUX_R is
    Port ( SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Periferico_de_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Periferico_de_Saida is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component NOR_Operando is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           NOR_Operando1 : out  STD_LOGIC);
end Component;

signal ESCR_PC, S_FLAG, ESCR_P, NOR_Operando1 : STD_LOGIC;
signal ESCR_R, SEL_Dados : STD_LOGIC_VECTOR (1 downto 0);
signal SEL_FLAG, SEL_PC : STD_LOGIC_VECTOR (2 downto 0);
signal SEL_ALU : STD_LOGIC_VECTOR (3 downto 0);
signal E_FLAG : STD_LOGIC_VECTOR (4 downto 0);
signal Sinal_Operando1, Operando2, Resultado, Dados_R, Dados_IN : STD_LOGIC_VECTOR (7 downto 0);

begin
	
	PC_P : PC port map (clk, reset, Constante_IN, ESCR_PC, Endereco);
	MUX_PC_P : MUX_PC port map ('0', '1', S_FLAG, Sinal_Operando1, SEL_PC, NOR_Operando1, ESCR_PC);
	Registo_Flags_P : Registo_Flags port map (clk, E_FLAG, ESCR_R, SEL_FLAG, S_FLAG);
	ROM_de_Descodificacao_P : ROM_de_Descodificacao port map (opcode, WR, ESCR_P, SEL_Dados, ESCR_R, SEL_ALU, SEL_FLAG, SEL_PC);
	MUX_R_P : MUX_R port map (SEL_Dados, Constante_IN, Dados_M, Dados_IN, Resultado, Dados_R);
	Banco_de_Registos_P : Banco_de_Registos port map (ESCR_R, clk, SEL_R, Dados_R, Sinal_Operando1, Operando2);
	ALU_P : ALU port map (SEL_ALU, Sinal_Operando1, Operando2, E_FLAG, Resultado);
	Periferico_de_Entrada_P : Periferico_de_Entrada port map (ESCR_P, PIN, Dados_IN);
	Periferico_de_Saida_P : Periferico_de_Saida port map (Sinal_Operando1, ESCR_P, clk, POUT);
	NOR_Operando_P : NOR_Operando port map (Sinal_Operando1, NOR_Operando1);
	
	Constante_OUT <= Constante_IN;
	Operando1 <= Sinal_Operando1;

end Struct;

