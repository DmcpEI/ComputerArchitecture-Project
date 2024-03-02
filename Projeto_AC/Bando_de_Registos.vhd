library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
	begin
	
		if ESCR_R(0) = '1' then
			case SEL_R is
				when "000" =>
	
	end process;

end Behavioral;

