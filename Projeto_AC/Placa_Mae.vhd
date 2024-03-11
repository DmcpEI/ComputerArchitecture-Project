library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Placa_Mae is
    Port ( reset : in  STD_LOGIC;
           clk : in STD_LOGIC;				
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Placa_Mae;

architecture Struct of Placa_Mae is

Component Processador is
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
end Component;

Component Memoria_de_Dados is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Memoria_de_Instrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC_VECTOR (5 downto 0));
end Component;

signal WR : STD_LOGIC;
signal opcode : STD_LOGIC_VECTOR(4 downto 0);
signal SEL_R : STD_LOGIC_VECTOR(5 downto 0);
signal Endereco, Constante_IN, Constante_OUT, Dados_M, Operando1 : STD_LOGIC_VECTOR(7 downto 0);

begin

	Processador_PM : Processador port map (reset, opcode, SEL_R, Constante_IN, Dados_M, PIN, clk, Constante_OUT, Endereco, WR, Operando1, POUT);
	Memoria_de_Dados_PM : Memoria_de_Dados port map (Constante_OUT, WR, clk, Operando1, Dados_M);
	Memoria_de_Instrucoes_PM : Memoria_de_Instrucoes port map (Endereco, opcode, Constante_IN, SEL_R);

end Struct;

