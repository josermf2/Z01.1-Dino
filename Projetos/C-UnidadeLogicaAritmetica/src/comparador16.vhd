-- Elementos de Sistemas
-- by Luciano Soares
-- comparador16.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity comparador16 is
   port(
	     a    : in STD_LOGIC_VECTOR(15 downto 0);
       zr   : out STD_LOGIC;
       ng   : out STD_LOGIC

   );
end comparador16;

architecture rtl of comparador16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
	signal sig_a: signed(15 downto 0);
	
begin
  -- Implementação vem aqui!
  
	sig_a <= signed(a);
  
	zr <= '1' when (a = "0000000000000000") else '0';
	ng <= '1' when (sig_a < "1111111111111111") else '0';

end architecture;
