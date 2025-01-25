library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is 
    port (
        X, Y : in std_logic_vector(7 downto 0);				-- Entrada X e Y
        OPCODE : in std_logic_vector(2 downto 0);			-- Operação a ser realizada
        resultado_out : out std_logic_vector(7 downto 0)	-- Resultado gerado pela ULA
    );
end ULA;

architecture comportamento of ULA is

begin
    process(X,Y,OPCODE)
    begin

    case OPCODE is 
        when "001" => -- Operação X+Y
            resultado_out <= std_logic_vector(unsigned(X) + unsigned(Y));
        when "010" => -- Operação X and Y
            resultado_out <= X and Y;
        when "011" => -- Operação X or Y
            resultado_out <= X or Y;
        when "100" => -- Operação Not X
            resultado_out <= not X;
        when "101" => -- Operação Y
            resultado_out <= Y;
        when "110" => -- Operação HALT (stop)
				resultado_out <= std_logic_vector(unsigned(X) + unsigned(Y));
		  when others =>
				resultado_out <= "00000000";
    end case;

    end process;
end comportamento;