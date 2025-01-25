library ieee;
use ieee.std_logic_1164.all;

entity REG is
    port (
        clk_1Hz_in, CARREGA_in : in std_logic;					-- Clock principal e Flag para carregar do registrador
        resultado_in : in std_logic_vector(7 downto 0);		-- Resultado gerado na ULA
        REG_out : out std_logic_vector(7 downto 0)				-- Saida do registrador
    );
end entity REG;

architecture behavioral of REG is
begin
    process(clk_1Hz_in)
    begin
        if rising_edge(clk_1Hz_in) then 	-- Detecta a borda de subida do clock
            if CARREGA_in = '1' then		-- Quando a flag está em nível alto o valor do registrador é carregado
                REG_out <= resultado_in;
            end if;
        end if;
    end process;
	 
end architecture behavioral;