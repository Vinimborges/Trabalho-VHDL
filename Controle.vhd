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
		  CARREGA_out <= '0';
		  ZERA_out    <= '0';
		  LER_out     <= '0'; 
        ATT_out     <= '1';
		  
		  if OPCODE_in = "000" then 
				LER_out     <= '1';
				
        elsif OPCODE_in = "001" then   -- Add X + Y
				CARREGA_out <= '1';
				LER_out     <= '1';
				
        elsif OPCODE_in = "010" then   -- X AND Y
				CARREGA_out <= '1';
				LER_out     <= '1';
 
        elsif OPCODE_in = "011" then   -- X OR Y
				CARREGA_out <= '1';
				LER_out     <= '1';

		  elsif OPCODE_in = "100" then	-- NOT X
				CARREGA_out <= '1';
				LER_out     <= '1';

        elsif OPCODE_in = "101" then	-- Y
				CARREGA_out <= '1';
				LER_out     <= '1';

        elsif OPCODE_in = "110" then   -- HALT
				CARREGA_out <= '0';
				LER_out  	<= '0';
				ATT_out     <= '0';
				ZERA_out 	<= '1';
				
		  else 
			   CARREGA_out <= '0';
			   ZERA_out    <= '0';
			   LER_out     <= '0';
			   ATT_out     <= '0';
			
        end if;
		  
		  OPCODE_out <= OPCODE_in;
    end process;
	 
end comportamento;