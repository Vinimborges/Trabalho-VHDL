library ieee;
use ieee.std_logic_1164.all;

entity Controle is 
    port (
        clk_1Hz_in : in std_logic;
		  OPCODE_in : in std_logic_vector(2 downto 0);
        ATT_out, ZERA_out, LER_out, CARREGA_out: out std_logic;
		  OPCODE_out : out std_logic_vector(2 downto 0)
    );
end Controle;

architecture comportamento of Controle is

	 
	 
begin
    ----------------- Síncrono -----------------
    sincrono : process(clk_1Hz_in)
    begin
		  
        if OPCODE_in = "000" then
				
        end if;
		  
		  OPCODE_out <= OPCODE_in;
    end process;
	 
end comportamento;