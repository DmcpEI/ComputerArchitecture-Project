library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memoria_de_Dados is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end Memoria_de_Dados;

architecture Behavioral of Memoria_de_Dados is

begin

	process(Constante, WR, clk, Operando1)
	type memoria is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0); -- Guardar os dados
	variable Mem : memoria ;
	begin
		
		if WR = '1' then
		
			-- Se está na transição ascendente do relógio
			if rising_edge(clk) then
		
				-- Guarda os dados do Operando1 na posição de memória indicada pelo sinal de entrada Constante
				Mem(to_integer(unsigned(Constante))) := Operando1;
				
			end if;
			
		else -- WR = '0'
			
			-- Atribui o valor da posição de memória indicada pelo Sinal Constante à saída Dados_M
			Dados_M <= Mem(to_integer(unsigned(Constante)));
		
		end if;
			
	end process;

end Behavioral;

