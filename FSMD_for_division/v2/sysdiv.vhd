library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
library work;
use work.std_logic_arithext.all;


--datapath entity
entity sysdiv is
port(
   RST : in std_logic;
   CLK : in std_logic

);
end sysdiv;


--signal declaration
architecture RTL of sysdiv is
signal x:std_logic_vector(7 downto 0);
signal y:std_logic_vector(7 downto 0);
signal r:std_logic_vector(7 downto 0);
signal q:std_logic_vector(9 downto 0);
signal start:std_logic;
signal done:std_logic;


--component map declaration
component TB
port(
   x:out std_logic_vector(7 downto 0);
   y:out std_logic_vector(7 downto 0);
   start:out std_logic);
end component;
component divider
port(
   x:in std_logic_vector(7 downto 0);
   y:in std_logic_vector(7 downto 0);
   start:in std_logic;
   q:out std_logic_vector(9 downto 0);
   r:out std_logic_vector(7 downto 0);
   done:out std_logic;
   RST : in std_logic;
   CLK : in std_logic
);
end component;


begin


--portmap
label_TB : TB port map (
      x => x,
      y => y,
      start => start   );
label_divider : divider port map (
      x => x,
      y => y,
      start => start,
      q => q,
      r => r,
      done => done,
      RST => RST,
      CLK => CLK
   );
end RTL;
