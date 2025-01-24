library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MEM is
    port (
        clk_1Hz_in : in std_logic; -- Clock principal
        LER_in : in std_logic; -- Clock principal
        PC_in : in std_logic_vector(3 downto 0); -- Ponteiro para acessar a memória
        instrucao_out: out std_logic_vector(15 downto 0)
    );
end entity MEM;

architecture behavioral of MEM is

    -- Representacao da Memoria
    type mem_array is array (0 to 15) of std_logic_vector(15 downto 0);
    constant mem : mem_array := (
    "0000000100000111",  --ADD X, Y
    "0000010100000010",  --LOAD Y
    "0000000100000101",  --ADD X, Y
    "0000000100001000",  --ADD X, Y
    "0000001000000101",  --AND X, Y
    "0000010000000000",  --NOT X
    "0000001000001111",  --AND X, Y
    "0000001100000100",  --OR X, Y
    "0000010110101010",  --LOAD Y
    "0000000101000100",  --ADD X, 4
    "0000000100000001",  --ADD X, 1
    "0000000100000001",  --ADD X, 1
    "0000010111111111",  --LOAD Y
    "0000000100000001",  --ADD X, Y
    "0000010100001010",  --LOAD Y
    "0000011000000000"   --HALT
    );

    -- Sinal interno para armazenar a instrução atual       
    signal instrucao_atual : std_logic_vector(15 downto 0);

begin
    process(clk_1Hz_in, LER_in)
    begin
        if rising_edge(clk_1Hz_in) then -- A cada borda de subida atualiza o valor da instrucao lida
            if LER_in = '1' then -- Apenas lê a memória se o sinal LER estiver ativo
                instrucao_atual <= mem(to_integer(unsigned(PC_in)));
            end if;
        end if;
    end process;

     -- Saída da instrução
    instrucao_out <= instrucao_atual;
end architecture behavioral;


   