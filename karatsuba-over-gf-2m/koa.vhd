library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity koa is
generic (M: integer:= 233);
port (
  a, b: in std_logic_vector(M-1 downto 0);
  d: out std_logic_vector(2*M-2 downto 0)
);
end koa;


architecture simple of koa is

	component koa is
	generic (M: integer:= 233);
	port (
	a, b: in std_logic_vector(M-1 downto 0);
	d: out std_logic_vector(2*M-2 downto 0)
	);
	end component koa;

   component nokoa is
	generic (M: integer:= 233);
	port (
	a, b: in std_logic_vector(M-1 downto 0);
	d: out std_logic_vector(2*M-2 downto 0)
	);
   end component nokoa;

	component multiplier_m is
	generic(M:integer);
	PORT(
	A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
	B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;

  constant half_M :integer := (M+1)/2;
  constant half_M_odd :integer := M/2;

  signal x0y0, x01y01: std_logic_vector(2*half_M-2 downto 0);
  signal x1y1: std_logic_vector(2*half_M_odd-2 downto 0);
  signal x0_p_x1, y0_p_y1: std_logic_vector(half_M-1 downto 0);

begin

  ifn10: if M <= 20 generate
  mun10: multiplier_m GENERIC MAP(M) port map(a,b,d);
  end generate;

  ifn:if M>20 generate

	  mult1: koa generic map(M => half_M) port map(a => a(half_M-1 downto 0), b => b(half_M-1 downto 0), d=> x0y0);
	  mult2: koa generic map(M => half_M_odd)	port map(a => a(M-1 downto half_M), b => b(M-1 downto half_M), d=> x1y1);
	  mult3: koa generic map(M => half_M) port map(a => x0_p_x1, b => y0_p_y1, d=> x01y01);

	  gen_x0x1y0y1: for i in 0 to half_M-2 generate
		   x0_p_x1(i) <= a(i) xor a(i + half_M);
		   y0_p_y1(i) <= b(i) xor b(i + half_M);       
	  end generate;
	  
	  ifModd: if M mod 2 = 1 generate
			x0_p_x1(half_M-1) <= a(half_M-1);
			y0_p_y1(half_M-1) <= b(half_M-1);   
	  end generate;
	  
	  ifMeven: if M mod 2 = 0 generate
		   x0_p_x1(half_M-1) <= a(half_M-1) xor a(M-1);
			y0_p_y1(half_M-1) <= b(half_M-1) xor b(M-1);   
	  end generate;
	  
	  gen_prod1: for i in 0 to half_M-2 generate
			d(half_M + i) <= x01y01(i) xor x0y0(i) xor x1y1(i) xor x0y0(i+half_M);
	  end generate;
	  
	  d(2*half_M-1) <= x01y01(half_M-1) xor x0y0(half_M-1) xor x1y1(half_M-1);
	  
	  gen_prod2: for i in half_M to 2*half_M_odd-2 generate
			d(half_M + i) <= x01y01(i) xor x0y0(i) xor x1y1(i) xor x1y1(i-half_M) ;
	  end generate;
	  
	  ifModd1: if M mod 2 = 1 generate
			d(3*half_M-3) <= x01y01(2*half_M-3) xor x0y0(2*half_M-3) xor x1y1(half_M-3);
			d(3*half_M-2) <= x01y01(2*half_M-2) xor x0y0(2*half_M-2) xor x1y1(half_M-2);
	  end generate;  
	  
	  d(3*half_M-1) <= x1y1(half_M-1);
	  d(half_M-1 downto 0) <= x0y0(half_M-1 downto 0);
	  d(2*M-2 downto 3*half_M) <= x1y1(2*half_M_odd-2 downto half_M);    

	end generate;
  
end simple;
