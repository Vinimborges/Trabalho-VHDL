library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
    port (
		  clk_1Hz_in : in std_logic; 						-- Clock principal
        ATT_in : in std_logic;							-- Flag para acrescendar ao pc
        ZERA_in : in std_logic; 							-- Flag para zerar o valor do pc
        PC_out: out std_logic_vector(3 downto 0)	-- Valor do pc
    );
end entity PC;

architecture behavioral of PC is
	signal sinal_PC : std_logic_vector(3 downto 0) := (others => '0');
	
begin
	 process(clk_1Hz_in, ATT_in)
    begin
        if rising_edge(clk_1Hz_in) then 		-- A cada borda de subida atualiza o valor da posicao que deve ser lida da memória
            -- if ZERA_in = '1' then				-- Caso não esteja com a flag de zerar o pc sempre acrescenta 1 a seu valor atual
            --     sinal_PC <= (others => '0'); 	
					
            -- else 
			-- 		if ATT_in = '1' then        	-- Apenas lê a memória se o sinal ATT estiver ativo
			-- 			sinal_PC <= std_logic_vector(unsigned(sinal_PC) + 1);
			-- 		end if;
            -- end if;


            if ATT_in = '1' then        	-- Apenas lê a memória se o sinal ATT estiver ativo
                sinal_PC <= std_logic_vector(unsigned(sinal_PC) + 1);
            
            elsif ZERA_in = '1' then				-- Caso não esteja com a flag de zerar o pc sempre acrescenta 1 a seu valor atual
                sinal_PC <= (others => '0'); 	
            
            end if;
        end if;
		  PC_out <= sinal_PC;
    end process;
end architecture behavioral;