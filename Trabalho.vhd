library ieee;
use ieee.std_logic_1164.all;

entity Trabalho is
    port (
        reset, CLK : in std_logic;
        controle_BCD, saida_BCD : out std_logic
    );
end entity Trabalho;

architecture behavioral of Trabalho is

	 signal clk_1Hz_out : std_logic;
	 signal sinal_ATT : std_logic;
	 signal sinal_ZERA : std_logic;
	 signal sinal_LER : std_logic;
	 signal sinal_CARREGA : std_logic;
	 signal sinal_PC : std_logic_vector(3 downto 0);
	 signal signal_instrucao_in : std_logic_vector(7 downto 0);
	 signal signal_instrucao_out : std_logic_vector(2 downto 0);
	 
    COMPONENT CLK_div                          -- Declaração do componente Divisor de Clock
        PORT(
            clock_50Mhz : in std_logic;
            clock_1hz : out std_logic
        );
    END COMPONENT;
	 
	  COMPONENT Decoder                          
        PORT(
				instrucao_in : in std_logic_vector(7 downto 0);
				instrucao_out : out std_logic_vector(2 downto 0)
        );
    END COMPONENT;
	 
	  COMPONENT PC                         
        PORT(
            clk_1Hz_in : in std_logic; 
				ATT_in : in std_logic;
				ZERA_in : in std_logic; 
				PC_out: out std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT MEM                         
        PORT(
				clk_1Hz_in : in std_logic; -- Clock principal
				ler_in : in std_logic; -- Clock principal
				PC_in : in std_logic_vector(3 downto 0); -- Ponteiro para acessar a memória
				instrucao_out: out std_logic_vector(15 downto 0)
        );
    END COMPONENT;

    
	
begin
		
    ------- Instância do divisor de clock ------
    clock_div : CLK_div port map (
        clock_50Mhz => CLK,
        clock_1hz => clk_1Hz_out
    );
	 
    ------- Instância PC ------
    PC_in : PC port map (
         clk_1Hz_in => clk_1Hz_out,
			ATT_in     => sinal_ATT,
			ZERA_in    => sinal_ZERA,
			PC_out     => sinal_PC
    );
	 
	 ------- Instância DECODER ------
    Decoder_ini : Decoder port map (
        instrucao_in => signal_instrucao_in,
        instrucao_out => signal_instrucao_out
    );
	 
	 ------- Instância DECODER ------
    MEM_ini : MEM port map (
         clk_1Hz_in => clk_1Hz_out,
			LER_in     => sinal_LER,
			PC_in      => sinal_PC,
			instrucao_out => signal_instrucao_in
    );

	    ----------------- Síncrono -----------------
    sincrono : process(clk_1Hz_out, reset)
    begin
		  
        if reset = '0' then                      -- Ao resetar os semaforos ficam no tempo de segurança no vermelho
				
        elsif rising_edge(clk_1Hz_out) then 
				
        end if;
    end process;
	 
end architecture behavioral;