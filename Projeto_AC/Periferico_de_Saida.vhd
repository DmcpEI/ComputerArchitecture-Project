library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Periferico_de_Saida is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_de_Saida;

architecture Behavioral of Periferico_de_Saida is

begin

	process(Operando1, ESCR_P, clk)
	begin
		
		-- Se o sinal ESCR_P está a 1
		if ESCR_P = '1' then
			
			-- Se está na transição ascendente do relógio
			if rising_edge(clk) then
				
				-- Atribui o valor da entrada Operando1 á saída POUT
				POUT <= Operando1;
			
			end if;
		
		end if;
	
	end process;

end Behavioral;

