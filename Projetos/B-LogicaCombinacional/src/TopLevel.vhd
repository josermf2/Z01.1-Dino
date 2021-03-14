--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin
	
	-- LEDR(0) <= SW(0); -- igualando o bit 0 do vetor LEDR ao bit 0 da chave SW
	-- Fazer a saida LEDR(0) ser igual ao inverso da entrada SW(0)
	-- LEDR(0) <= SW(0) or SW(1); -- fazendo a saida LEDR(0) ser igual a entrada SW(0) ou SW(1)
	
	-- LEDR(0) <= SW(0) or SW(1); -- Fazer com que a saida LEDR(0) seja igual a entrada SW(0) ou SW(1) 
	-- LEDR(1) <= SW(1); -- E com que a saida LEDR(1) seja igual a chave SW(1)
	
	LEDR(0) <= SW(0);
	LEDR(1) <= SW(1);
	LEDR(2) <= SW(2);
	LEDR(3) <= SW(3);
	LEDR(4) <= SW(4);
	LEDR(5) <= SW(5);
	LEDR(6) <= SW(6);
	LEDR(7) <= SW(7);
	LEDR(8) <= SW(8);
	LEDR(9) <= SW(9);

end rtl;

