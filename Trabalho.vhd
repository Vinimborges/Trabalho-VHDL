library ieee;
use ieee.std_logic_1164.all;

entity Trabalho is
    port (
        reset, CLK : in std_logic;
        controle_BCD, saida_BCD : out std_logic;
		  valor_PC : out std_logic_vector(3 downto 0);
		  valor_Memoria : out std_logic_vector(15 downto 0);
		  valor_OPCODE : out std_logic_vector(2 downto 0);
		  valor_Y : out std_logic_vector(7 downto 0)
    );
end entity Trabalho;

architecture behavioral of Trabalho is

	 signal clk_1Hz_out : std_logic;
	 signal sinal_ATT : std_logic;
	 signal sinal_ATT_final : std_logic;
	 signal sinal_ZERA : std_logic;
	 signal sinal_ZERA_final : std_logic;
	 signal sinal_LER : std_logic;
	 signal sinal_LER_final : std_logic;
	 signal sinal_CARREGA : std_logic;
	 signal sinal_PC : std_logic_vector(3 downto 0);
	 signal signal_instrucao_in : std_logic_vector(15 downto 0);
	 signal signal_instrucao_out : std_logic_vector(2 downto 0);
	 signal signal_REG_out : std_logic_vector(7 downto 0);
	 signal sinal_resultado_out : std_logic_vector(7 downto 0);
	 
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
	 
	 COMPONENT Controle                         
        PORT(
				clk_1Hz_in : in std_logic;
				OPCODE_in : in std_logic_vector(2 downto 0);
				ATT_out, ZERA_out, LER_out, CARREGA_out: out std_logic;
				OPCODE_out : out std_logic_vector(2 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT ULA                         
        PORT(
			  X, Y : in std_logic_vector(7 downto 0);
			  OPCODE : in std_logic_vector(2 downto 0);
			  resultado_out : out std_logic_vector(7 downto 0)
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
			ATT_in     => sinal_ATT_final,
			ZERA_in    => sinal_ZERA,
			PC_out     => sinal_PC
    );
	 
	 ------- Instância DECODER ------
    Decoder_ini : Decoder port map (
        instrucao_in => signal_instrucao_in(15 downto 8),
        instrucao_out => signal_instrucao_out
    );
	 
	 ------- Instância Memoria ------
    MEM_ini : MEM port map (
         clk_1Hz_in => clk_1Hz_out,
			LER_in     => sinal_LER_final,
			PC_in      => sinal_PC,
			instrucao_out => signal_instrucao_in
    );
	 
    ------- Instância Controle ------
    Controle_ini : Controle port map (
         clk_1Hz_in => clk_1Hz_out,
			OPCODE_in  => signal_instrucao_out,
			ATT_out    => sinal_ATT, 
			ZERA_out   => sinal_ZERA, 
			LER_out    => sinal_LER, 
			CARREGA_out=> sinal_CARREGA,
			OPCODE_out => signal_instrucao_out
    );
	 
	  ------- Instância ULA ------
	 ULA_ini : ULA port map (
         X => signal_REG_out,
			Y => signal_instrucao_in(7 downto 0),
		   OPCODE => signal_instrucao_out,
		   resultado_out => sinal_resultado_out
			
    );
	 
	 ------- Instância Registrador ------
	 --REG_ini : REG port map (
			--clk_1Hz_in => clk_1Hz_out,
         --CARREGA_in => sinal_CARREGA,
			--resultado_in => sinal_resultado_out,
			--REG_out => signal_REG_out
    --);

	    ----------------- Síncrono -----------------
    sincrono : process(clk_1Hz_out, reset)
    begin
		  
        if reset = '1' then
            --sinal_ATT_final <= '1'; -- Força ATT para 0 no reset
				sinal_LER_final <= '1';
				sinal_ZERA_final <= '0';
		  else
				sinal_ATT_final <= sinal_ATT; -- Segue o valor do Controle
				sinal_ZERA_final <= sinal_ZERA;
				sinal_LER_final <= sinal_LER;
		  end if;
				
        --elsif rising_edge(clk_1Hz_out) then 
				
        --end if;
    end process;
	 valor_Y <= signal_instrucao_in(7 downto 0);
	 valor_PC <= sinal_PC;
	 valor_Memoria <= signal_instrucao_in;
	 valor_OPCODE <= signal_instrucao_out;
end architecture behavioral;