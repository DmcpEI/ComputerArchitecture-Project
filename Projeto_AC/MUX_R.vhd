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


end Behavioral;

