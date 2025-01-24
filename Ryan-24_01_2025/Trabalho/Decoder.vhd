library ieee;
use ieee.std_logic_1164.all;
entity Decoder is
    port (
        instrucao_in : in std_logic_vector(7 downto 0);
        instrucao_out : out std_logic_vector(2 downto 0)
    );
end entity Decoder;

architecture behavioral of Decoder is
begin

    instrucao_out <= instrucao_in(2 downto 0);
	 
end architecture behavioral;