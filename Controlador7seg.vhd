library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Controlador7seg is
    Port ( bcd_in : in  STD_LOGIC_VECTOR (15 downto 0); -- Entrada de 16 bits (4 dígitos BCD)
			  clock_1Hz_in : in STD_LOGIC;
           seg1 : out STD_LOGIC_VECTOR (6 downto 0);  -- Saída do display 1
           seg2 : out STD_LOGIC_VECTOR (6 downto 0);  -- Saída do display 2
           seg3 : out STD_LOGIC_VECTOR (6 downto 0);  -- Saída do display 3
           seg4 : out STD_LOGIC_VECTOR (6 downto 0)   -- Saída do display 4
           );
end Controlador7seg;

architecture Comportamento of Controlador7seg is
    
	 
    function bcd_to_seg(digit: in STD_LOGIC_VECTOR (3 downto 0)) return STD_LOGIC_VECTOR is -- Tabela de conversão BCD para os segmentos
    begin
        case digit is
            when "0000" => return "0000001"; -- 0
            when "0001" => return "1001111"; -- 1
            when "0010" => return "0010010"; -- 2
            when "0011" => return "0000110"; -- 3
            when "0100" => return "1001100"; -- 4
            when "0101" => return "0100100"; -- 5
            when "0110" => return "0100000"; -- 6
            when "0111" => return "0001111"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0000100"; -- 9
            when others => return "1111111"; -- Desligado (erro)
        end case;
    end function;

    
    signal digit1, digit2, digit3, digit4: STD_LOGIC_VECTOR (3 downto 0); -- Sinais para os 4 dígitos BCD
begin
	 process(clock_1Hz_in)
	 begin
		 -- Divisão do número binário de 16 bits em 4 dígitos BCD de 4 bits cada
		 digit1 <= bcd_in(15 downto 12); -- Primeiro dígito (mais significativo)
		 digit2 <= bcd_in(11 downto 8);  -- Segundo dígito
		 digit3 <= bcd_in(7 downto 4);   -- Terceiro dígito
		 digit4 <= bcd_in(3 downto 0);   -- Quarto dígito (menos significativo)

		 -- Converte os dígitos BCD para os sinais dos segmentos para cada display
		 seg1 <= bcd_to_seg(digit1);
		 seg2 <= bcd_to_seg(digit2);
		 seg3 <= bcd_to_seg(digit3);
		 seg4 <= bcd_to_seg(digit4);
	 end process;

end Comportamento;