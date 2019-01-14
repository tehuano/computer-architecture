library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nokoa is
generic (M: integer:= 5);
port (
  a, b: in std_logic_vector(M-1 downto 0);
  d: out std_logic_vector(2*M-2 downto 0)
);
end nokoa;

architecture simple of nokoa is

	component nokoa is
	generic (M: integer:= 5);
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

  component koa is
	  generic (M: integer:= 233);
	  port (
		 a, b: in std_logic_vector(M-1 downto 0);
		 d: out std_logic_vector(2*M-2 downto 0)
	  );
  end component koa;

  constant half_M :integer := (M+1)/2;
  constant half_M_odd :integer := M/2;

  signal x0,y0: std_logic_vector(half_M-1 downto 0);
  signal x1,y1: std_logic_vector(half_M_odd-1 downto 0);

  signal x0y0, x01y01: std_logic_vector(2*half_M-2 downto 0);
  signal x1y1: std_logic_vector(2*half_M_odd-2 downto 0);
  signal x0_p_x1, y0_p_y1: std_logic_vector(half_M-1 downto 0);

begin

  ifn10: if M <=20 generate
		mun10: multiplier_m GENERIC MAP(M) port map(a,b,d);
  end generate;

  ifn:if M>20 generate

	  fordiv: for i in 0 to half_M-1 generate
			x0(i)<=a(2*i);
			y0(i)<=b(2*i);
	  end generate;

  	  fordiv_odd: for i in 0 to half_M_odd-1 generate
			x1(i)<=a(2*i+1);
			y1(i)<=b(2*i+1);
	  end generate;

	  mult1: nokoa generic map(M => half_M) 		port map(x0,y0,x0y0);
	  mult2: nokoa generic map(M => half_M_odd)	port map(x1,y1,x1y1);
	  mult3: nokoa generic map(M => half_M) 		port map(x0_p_x1,y0_p_y1,x01y01);

	  gen_x0x1y0y1: for i in 0 to half_M-2 generate
		   x0_p_x1(i) <= x0(i) xor x1(i);
		   y0_p_y1(i) <= y0(i) xor y1(i);       
	  end generate;

	  ifModd: if M mod 2 = 1 generate
			x0_p_x1(half_M-1) <= x0(half_M-1);
			y0_p_y1(half_M-1) <= y0(half_M-1);   
	  end generate;

	  ifMeven: if M mod 2 = 0 generate
		   x0_p_x1(half_M-1) <= x0(half_M-1) xor x1(half_M-1);
			y0_p_y1(half_M-1) <= y0(half_M-1) xor y1(half_M-1);   
	  end generate;

	  ------------------------------------------------------------------------------------------
	  for_imp1: for i in 0 to 2*half_M_odd-2 generate-- bits impares
				d(2*i+1) <= x0y0(i) xor x1y1(i) xor x01y01(i);
	  end generate;

	  ifimp1: if M mod 2 = 1 generate
			for_imp2: for i in 2*half_M_odd-1 to 2*half_M-3 generate-- bits impares
					d(2*i+1) <= x0y0(i) xor x01y01(i);
			end generate;
	  end generate;

	  -------------------------------------------------------------------------------------------
	  d(0)<=x0y0(0);
	  ifmp1: if M mod 2 = 1 generate
		  for_p1: for i in 0 to 2*half_M_odd-2 generate-- bits pares
				d(2+2*i) <= x0y0(i+1) xor x1y1(i);
		  end generate;
		  d(2*M-2)<=x0y0(2*half_M-2);
	  end generate;

	  ifmp2: if M mod 2 = 0 generate
		  for_p2: for i in 0 to 2*half_M-3 generate-- bits pares
				d(2+2*i) <= x0y0(i+1) xor x1y1(i);
		  end generate;
		  d(2*M-2)<=x1y1(2*half_M-2);
	  end generate;

	end generate;

end simple;
