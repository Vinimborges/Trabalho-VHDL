library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
    port (
		  clk_1Hz_in : in std_logic; 
        ATT_in : in std_logic;
        ZERA_in : in std_logic; 
        PC_out: out std_logic_vector(3 downto 0)
    );
end entity PC;

architecture behavioral of PC is
	signal sinal_PC : std_logic_vector(3 downto 0) := (others => '0');
	
begin

	 process(clk_1Hz_in, ATT_in)
    begin
        if rising_edge(clk_1Hz_in) then -- A cada borda de subida atualiza o valor da instrucao lida
				if ZERA_in = '1' then
					sinal_PC <= (others => '0'); 
					
            else 
					if ATT_in = '1' then        -- Apenas lê a memória se o sinal ATT estiver ativo
						sinal_PC <= std_logic_vector(unsigned(sinal_PC) + 1);
					end if;
            end if;
        end if;
		  PC_out <= sinal_PC;
    end process;

end architecture behavioral;