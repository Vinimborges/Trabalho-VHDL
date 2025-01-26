library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Bin2BCD is
    Port ( bin_in : in STD_LOGIC_VECTOR(7 downto 0); -- Entrada binária de 8 bits
           bcd_out : out STD_LOGIC_VECTOR(15 downto 0) -- Saída BCD de 16 bits

    );
end Bin2BCD;

architecture Comportamento of Bin2BCD is

    
begin
    process(bin_in)
    variable temp_bcd_var : STD_LOGIC_VECTOR(15 downto 0); -- Variável para manipulação de BCD
   
    begin
        
        temp_bcd_var := (others => '0'); -- Inicializando a variável interna
      

        -- Loop para deslocar cada bit do binário
        for i in 7 downto 0 loop
            -- Verifica se é maior do que 5 e ajusta (somando +3) os 4 bits mais significativos de cada bloco BCD
            if temp_bcd_var(3 downto 0) >= "0101" then
                temp_bcd_var(3 downto 0) := temp_bcd_var(3 downto 0) + 3;
            end if;
            if temp_bcd_var(7 downto 4) >= "0101" then
                temp_bcd_var(7 downto 4) := temp_bcd_var(7 downto 4) + 3;
            end if;
            if temp_bcd_var(11 downto 8) >= "0101" then
                temp_bcd_var(11 downto 8) := temp_bcd_var(11 downto 8) + 3;
            end if;
            if temp_bcd_var(15 downto 12) >= "0101" then
                temp_bcd_var(15 downto 12) := temp_bcd_var(15 downto 12) + 3;
            end if;

            -- Deslocamento à esquerda: Move os bits à esquerda e insere o próximo bit
            temp_bcd_var := temp_bcd_var(14 downto 0) & bin_in(i); -- Desloca e insere o bit mais significativo
            

        end loop;

        
        bcd_out <= temp_bcd_var; -- Saída final com 16 bits
      
    end process;
end Comportamento;
