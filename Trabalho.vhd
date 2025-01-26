-------------------- AVISO --------------------
-- O clock está como 50e6, ou seja, no simulador é impossível de ver a mudança dos valores. Caso queria ver os valores mudando, troque no arquivo CLK_div.vhd o valor de 50e6 para 1.
-- Além disso, arquivo vai ter algumas variáveis comentadas, elas forma utilizadas para realizar teste e caso queira ver os resultados, o senhor pode descomentar-lás caso queira ver os testes.
-------------------- AVISO --------------------


library ieee;
use ieee.std_logic_1164.all;

entity Trabalho is
    port (
        reset, CLK : in std_logic;
        controle_BCD : out std_logic;
		  saida_BCD : out std_logic_vector(15 downto 0)
		  --valor_PC : out std_logic_vector(3 downto 0);
		  --valor_Memoria : out std_logic_vector(15 downto 0);
		  --valor_OPCODE : out std_logic_vector(2 downto 0);
		  --valor_Y : out std_logic_vector(7 downto 0);
		  --valor_X : out std_logic_vector(7 downto 0);
		  --valor_ULA : out std_logic_vector(7 downto 0);
		  --valor_CLOCK : out std_logic;
		  --valor_seg1 : out std_logic_vector (6 downto 0); 
		  --valor_seg2 : out std_logic_vector (6 downto 0);
		  --valor_seg3 : out std_logic_vector (6 downto 0);
		  --valor_seg4 : out std_logic_vector (6 downto 0);
		  
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
	 signal signal_bcd_out : std_logic_vector(15 downto 0);
    signal signal_seg1_out : std_logic_vector(6 downto 0);
	 signal signal_seg2_out : std_logic_vector(6 downto 0);
	 signal signal_seg3_out : std_logic_vector(6 downto 0);
	 signal signal_seg4_out : std_logic_vector(6 downto 0);
	 
	 
	 -- Declaração do componente Divisor de Clock
    COMPONENT CLK_div                          
        PORT(
            clock_50Mhz : in std_logic;
            clock_1hz : out std_logic
        );
    END COMPONENT;
	 
	 -- Declaração do componente Decoder
	  COMPONENT Decoder                          
        PORT(
				instrucao_in : in std_logic_vector(7 downto 0);
				instrucao_out : out std_logic_vector(2 downto 0)
        );
    END COMPONENT;
	 
	 -- Declaração do componente Program Counter
	  COMPONENT PC                         
        PORT(
            clk_1Hz_in : in std_logic; 
				ATT_in : in std_logic;
				ZERA_in : in std_logic; 
				PC_out: out std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 -- Declaração do componente Memória
	 COMPONENT MEM                         
        PORT(
				clk_1Hz_in : in std_logic; -- Clock principal
				ler_in : in std_logic; -- Clock principal
				PC_in : in std_logic_vector(3 downto 0); -- Ponteiro para acessar a memória
				instrucao_out: out std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 -- Declaração do componente Controle
	 COMPONENT Controle                         
        PORT(
				clk_1Hz_in : in std_logic;
				OPCODE_in : in std_logic_vector(2 downto 0);
				ATT_out, ZERA_out, LER_out, CARREGA_out: out std_logic;
				OPCODE_out : out std_logic_vector(2 downto 0)
        );
    END COMPONENT;
	 
	 -- Declaração do componente Unidade Lógica Aritmética
	 COMPONENT ULA                         
        PORT(
			  X, Y : in std_logic_vector(7 downto 0);
			  OPCODE : in std_logic_vector(2 downto 0);
			  resultado_out : out std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	
	-- Declaração do componente Registrador
	COMPONENT REG                         
	   PORT(
			clk_1Hz_in, CARREGA_in : in std_logic;
			resultado_in : in std_logic_vector(7 downto 0);
			REG_out : out std_logic_vector(7 downto 0)
	   );
	END COMPONENT;
	
	-- Declaração do Binary to Binary Codded Decimal
	COMPONENT Bin2BCD                         
	   PORT(
			bin_in: in std_logic_vector(7 downto 0);
			bcd_out: out std_logic_vector(15 downto 0)
			
	   );
	END COMPONENT;
	
	-- Declaração do Controlador de 7 segmentos
	COMPONENT Controlador7seg                         
	   PORT(
			bcd_in: in std_logic_vector(15 downto 0);
			clock_1Hz_in : in std_logic;
			seg1, seg2, seg3, seg4: out std_logic_vector(6 downto 0)
			
	   );
	END COMPONENT;
	
begin
		
    ------- Instância do divisor de clock ------
    clock_div : CLK_div port map (
        clock_50Mhz => CLK,
        clock_1hz   => clk_1Hz_out
    );
	 
    ------- Instância PC ------
    PC_in : PC port map (
         clk_1Hz_in => clk_1Hz_out,
			ATT_in     => sinal_ATT_final,
			ZERA_in    => sinal_ZERA_final,
			PC_out     => sinal_PC
    );
	 
	 ------- Instância DECODER ------
    Decoder_ini : Decoder port map (
        instrucao_in  => signal_instrucao_in(15 downto 8),
        instrucao_out => signal_instrucao_out
    );
	 
	 ------- Instância Memoria ------
    MEM_ini : MEM port map (
         clk_1Hz_in    => clk_1Hz_out,
			LER_in        => sinal_LER_final,
			PC_in         => sinal_PC,
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
         X             => signal_REG_out,
			Y             => signal_instrucao_in(7 downto 0),
		   OPCODE        => signal_instrucao_out,
		   resultado_out => sinal_resultado_out
			
    );
	 
	 ----- Instância Registrador ------
	 REG_ini : REG port map (
			clk_1Hz_in   => clk_1Hz_out,
         CARREGA_in   => sinal_CARREGA,
			resultado_in => sinal_resultado_out,
			REG_out      => signal_REG_out
    );
	 
	 	 ----- Instância Binary to Binary Codded Decimal ------
	 Bin2BCD_ini : Bin2BCD port map (
			bin_in  => signal_REG_out,
         bcd_out   => signal_bcd_out
    );
	 
	 	 ----- Instância Controlador de 7 Segmentos------
	 Controlador7seg_ini : Controlador7seg port map (
			bcd_in => signal_bcd_out,
			clock_1Hz_in => clk_1Hz_out,
         seg1 => signal_seg1_out, 
			seg2 => signal_seg2_out, 
			seg3 => signal_seg3_out, 
			seg4 => signal_seg4_out
    );

	    ----------------- Síncrono -----------------
    sincrono : process(clk_1Hz_out, reset)
    begin
		  
        if reset = '1' then
				sinal_LER_final  <= '1';
				sinal_ATT_final  <= '1';
				sinal_ZERA_final <= '0';
				
		  else
				sinal_ATT_final  <= sinal_ATT; -- Segue o valor do Controle
				sinal_ZERA_final <= sinal_ZERA;
				sinal_LER_final  <= sinal_LER;
		  end if;
				

    end process;
	 --valor_CLOCK <= clk_1Hz_out;
	 --valor_ULA <= sinal_resultado_out;
	 --valor_Y <= signal_instrucao_in(7 downto 0);
	 --valor_X <= signal_REG_out;
	 --valor_PC <= sinal_PC;
	 --valor_Memoria <= signal_instrucao_in;
	 --valor_OPCODE <= signal_instrucao_out;
	 saida_BCD <= signal_bcd_out;
	 --valor_seg1 <= signal_seg1_out;
	 --valor_seg2 <= signal_seg2_out;
	 --valor_seg3 <= signal_seg3_out;
	 --valor_seg4 <= signal_seg4_out;
end architecture behavioral;