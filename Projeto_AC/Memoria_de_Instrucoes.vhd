library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Memoria_de_Instrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC_VECTOR (5 downto 0));
end Memoria_de_Instrucoes;

architecture Behavioral of Memoria_de_Instrucoes is

begin



end Behavioral;

