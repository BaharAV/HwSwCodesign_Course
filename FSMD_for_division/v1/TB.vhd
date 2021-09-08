library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
library work;
use work.std_logic_arithext.all;


--datapath entity
entity TB is
port(
   x:out std_logic_vector(7 downto 0);
   y:out std_logic_vector(7 downto 0);
   start:out std_logic
);
end TB;


--signal declaration
architecture RTL of TB is
signal x_int:std_logic_vector(7 downto 0);
signal y_int:std_logic_vector(7 downto 0);
signal start_int:std_logic;


begin


--combinational logics
dpCMB: process (x_int,y_int,start_int)
   begin
      x_int <= (others=>'0');
      y_int <= (others=>'0');
      start_int <= '0';
      x <= (others=>'0');
      y <= (others=>'0');
      start <= '0';

      x <= x_int;
      y <= y_int;
      start <= start_int;
      x_int <= conv_std_logic_vector(12,8);
      y_int <= conv_std_logic_vector(15,8);
      start_int <= '1';
   end process dpCMB;
end RTL;
