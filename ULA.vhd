library ieee;
use ieee.std_logic_1164.all;

entity ULA is 
    port (
        X, Y : in std_logic_vector(3 downto 0);
        OPcode : in std_logic_vector(7 downto 0);
        resultado : out std_logic_vector(3 downto 0);
        sinal_halt : out std_logic
    );
end ULA;

architecture comportamento of ULA is
    signal sinal_halt : std_logic := '0';
	 
begin
    process(X,Y,OPcode)
    begin

    case OPcode is 
        when "001" => -- Operação X+Y
            resultado <= unsigned(X) + unsigned(Y);
        when "010" => -- Operação X and Y
            resultado <= X and Y;
        when "011" => -- Operação X or Y
            resultado <= X or Y;
        when "100" => -- Operação Not X
            resultado < not X;
        when "101" => -- Operação Y
            resultado <= Y;
        when "110" => -- Operação HALT (stop)
            sinal_halt <= "1";
			
    end case;
   
	end process;
end comportamento;