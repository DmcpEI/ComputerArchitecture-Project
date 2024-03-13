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
	type array_r is array (0 to 7) of STD_LOGIC_VECTOR (7 downto 0); -- Guardar os dados
	variable registos : array_r;
	begin
	
		-- Se o sinal do bit menos significativo de ESCR_P está a 1
		if ESCR_R(0) = '1' then
	
			-- Se está na transição ascendente do relógio
			if rising_edge(clk) then
				
				registos(to_integer(unsigned(SEL_R (2 downto 0)))) := Dados_R;
				
			end if;
			
		end if;
		
		Operando1 <= registos(to_integer(unsigned(SEL_R (2 downto 0))));
		Operando2 <= registos(to_integer(unsigned(SEL_R (5 downto 3))));
	
	end process;

end Behavioral;