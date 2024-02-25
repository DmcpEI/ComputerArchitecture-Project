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


end Behavioral;

