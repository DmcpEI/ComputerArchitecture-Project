library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Memoria_de_Dados is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end Memoria_de_Dados;

architecture Behavioral of Memoria_de_Dados is

begin


end Behavioral;

