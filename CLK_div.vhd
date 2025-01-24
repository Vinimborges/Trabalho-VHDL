library ieee;
use ieee.std_logic_1164.all;

entity CLK_div is -- Declaração da entidade segundos.
    port (

          clock_50Mhz : in std_logic; -- Entrada do clock de 50 MHz.
          clock_1hz : out std_logic   -- Saída do clock de 1 Hz gerado a partir do clock de 50 MHz.
    );
end CLK_div;

architecture comportamento of CLK_div is 

    signal contador : integer := 0; -- Sinal contador para dividir a frequência do clock (inicializado em 0). 

     signal led_status : std_logic := '0'; -- Sinal para armazenar o estado atual do LED (inicializado em 0).

    begin
     process(clock_50Mhz)
    begin
        if rising_edge(clock_50Mhz) then -- Verifica a borda de subida do clock de 50 MHz.
            --if contador = 50e6 then -- Se o contador atingir 50e6 (alcançando o ciclo desejado).
				if contador = 1 then -- Se o contador atingir 50e6 (alcançando o ciclo desejado).
                    contador <= 0; -- Reseta o contador.
                    led_status <= not led_status; -- Alterna o estado do LED (liga/desliga).
                else -- Caso contrário.
                    contador <= contador + 1; -- Incrementa o contador.
                end if;
        end if;
    end process;

     clock_1hz <= led_status; -- A saída clock_1hz segue o estado do LED, criando o efeito de um clock de 1 Hz.
end comportamento;