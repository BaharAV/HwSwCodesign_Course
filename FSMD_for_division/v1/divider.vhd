library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
library work;
use work.std_logic_arithext.all;


--datapath entity
entity divider is
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
end divider;


--signal declaration
architecture RTL of divider is
signal reg_y:std_logic_vector(7 downto 0);
signal reg_y_wire:std_logic_vector(7 downto 0);
signal reg_start:std_logic;
signal reg_start_wire:std_logic;
signal reg_q:std_logic_vector(9 downto 0);
signal reg_q_wire:std_logic_vector(9 downto 0);
signal reg_r:std_logic_vector(7 downto 0);
signal reg_r_wire:std_logic_vector(7 downto 0);
signal counter:std_logic_vector(3 downto 0);
signal counter_wire:std_logic_vector(3 downto 0);
signal z:std_logic_vector(9 downto 0);
signal a:std_logic_vector(7 downto 0);
signal b:std_logic_vector(7 downto 0);
signal qin:std_logic;
signal rin:std_logic_vector(7 downto 0);
signal sig_0:std_logic_vector(3 downto 0);
signal sig_1:std_logic_vector(9 downto 0);
signal sig_2:std_logic_vector(9 downto 0);
signal sig_5:std_logic;
signal sig_6:std_logic;
signal sig_9:std_logic;
signal sig_10:std_logic_vector(9 downto 0);
signal sig_11:std_logic_vector(9 downto 0);
signal sig_12:std_logic_vector(10 downto 0);
signal sig_13:std_logic_vector(10 downto 0);
signal q_int:std_logic_vector(9 downto 0);
signal r_int:std_logic_vector(7 downto 0);
signal done_int:std_logic;
signal sig_14:std_logic;
signal sig_4:std_logic_vector(6 downto 0);
signal sig_8:std_logic_vector(6 downto 0);
type STATE_TYPE is (s0,s1);
signal STATE:STATE_TYPE;
type CONTROL is (alwaysgoingmain_divide
, alwaysgoinginit
, alwaysstopinginit
);
signal cmd : CONTROL;


begin
--register updates
dpREG: process (CLK,RST)
   begin
      if (RST = '1') then
         reg_y <= (others=>'0');
         reg_start <= '0';
         reg_q <= (others=>'0');
         reg_r <= (others=>'0');
         counter <= (others=>'0');
      elsif CLK' event and CLK = '1' then
         reg_y <= reg_y_wire;
         reg_start <= reg_start_wire;
         reg_q <= reg_q_wire;
         reg_r <= reg_r_wire;
         counter <= counter_wire;

      end if;
   end process dpREG;


--combinational logics
dpCMB: process (reg_y,reg_start,reg_q,reg_r,counter,z,a,b,qin,rin
,sig_0,sig_1,sig_2,sig_5,sig_6,sig_9,sig_10,sig_11,sig_12,sig_13
,q_int,r_int,done_int,x,y,start,cmd,STATE)
   begin
      reg_y_wire <= reg_y;
      reg_start_wire <= reg_start;
      reg_q_wire <= reg_q;
      reg_r_wire <= reg_r;
      counter_wire <= counter;
      z <= (others=>'0');
      a <= (others=>'0');
      b <= (others=>'0');
      qin <= '0';
      rin <= (others=>'0');
      sig_0 <= (others=>'0');
      sig_1 <= (others=>'0');
      sig_2 <= (others=>'0');
      sig_5 <= '0';
      sig_6 <= '0';
      sig_9 <= '0';
      sig_10 <= (others=>'0');
      sig_11 <= (others=>'0');
      sig_12 <= (others=>'0');
      sig_13 <= (others=>'0');
      q_int <= (others=>'0');
      r_int <= (others=>'0');
      done_int <= '0';
      sig_4 <= "1111111";
      sig_8 <= "1111111";
      q <= (others=>'0');
      r <= (others=>'0');
      done <= '0';



      case cmd is
         when alwaysgoingmain_divide =>
            q <= q_int;
            r <= r_int;
            q_int <= reg_q;
            r_int <= reg_r;
            reg_start_wire <= start;
            done <= done_int;
            done_int <= '0';
            sig_0 <= unsigned(counter) - unsigned(conv_std_logic_vector(1,4));
            a <= reg_r;
            b <= reg_y;
            sig_1 <= conv_std_logic_vector(2,10) * unsigned(a);
            sig_2 <= unsigned(sig_1) - unsigned(conv_std_logic_vector(unsigned(b),10));
            z <= sig_2;
            if (unsigned(z) > unsigned(sig_4)) then
               sig_5 <= '1';
            else
               sig_5 <= '0';
            end if;
            if (sig_5 = '1') then
               sig_6 <= '0';
            else
               sig_6 <= '1';
            end if;
            qin <= sig_6;
            if (unsigned(z) > unsigned(sig_8)) then
               sig_9 <= '1';
            else
               sig_9 <= '0';
            end if;
            sig_10 <= conv_std_logic_vector(2,10) * unsigned(a);
            if (sig_9 = '1') then
               sig_11 <= sig_10;
            else
               sig_11 <= z;
            end if;
            rin <= sig_11(7 downto 0);
            sig_12 <= conv_std_logic_vector(shl(conv_unsigned(unsigned(reg_q),11),conv_unsigned(1,11)),11);
            sig_13 <= sig_12 or logic_zero_ext(qin,11);
            counter_wire <= sig_0;
            reg_q_wire <= sig_13(9 downto 0);
            reg_r_wire <= rin;
         when alwaysgoinginit =>
            q <= q_int;
            r <= r_int;
            q_int <= reg_q;
            r_int <= reg_r;
            reg_start_wire <= start;
            done <= done_int;
            done_int <= '0';
            reg_r_wire <= x;
            reg_y_wire <= y;
            reg_q_wire <= conv_std_logic_vector(0,10);
            counter_wire <= conv_std_logic_vector(8,4);
         when alwaysstopinginit =>
            q <= q_int;
            r <= r_int;
            q_int <= reg_q;
            r_int <= reg_r;
            reg_start_wire <= start;
            done <= done_int;
            done_int <= '1';
            reg_r_wire <= x;
            reg_y_wire <= y;
            reg_q_wire <= conv_std_logic_vector(0,10);
            counter_wire <= conv_std_logic_vector(8,4);
         when others=>
      end case;
   end process dpCMB;


--controller reg
fsmREG: process (CLK,RST)
   begin
      if (RST = '1') then
         STATE <= s0;
      elsif CLK' event and CLK = '1' then
         STATE <= STATE;
         case STATE is
            when s0 => 
               if (reg_start = '1') then
                       STATE <= s1;
               else
                       STATE <= s0;
               end if;
            when s1 => 
               if (sig_14 = '1') then
                       STATE <= s0;
               else
                       STATE <= s1;
               end if;
            when others=>
         end case;
      end if;
   end process fsmREG;


--controller cmb
fsmCMB: process (reg_y,reg_start,reg_q,reg_r,counter,z,a,b,qin,rin
,sig_0,sig_1,sig_2,sig_5,sig_6,sig_9,sig_10,sig_11,sig_12,sig_13
,q_int,r_int,done_int,sig_14,x,y,start,cmd,STATE)
   begin
   sig_14 <= '0';
   if (unsigned(counter) = 0) then
      sig_14 <= '1';
   else
      sig_14 <= '0';
   end if;
   cmd <= alwaysgoingmain_divide;
   case STATE is
      when s0 => 
         if (reg_start = '1') then
                 cmd <= alwaysgoingmain_divide;
         else
                 cmd <= alwaysgoinginit;
         end if;
      when s1 => 
         if (sig_14 = '1') then
                 cmd <= alwaysstopinginit;
         else
                 cmd <= alwaysgoingmain_divide;
         end if;
      when others=>
      end case;
end process fsmCMB;
end RTL;
