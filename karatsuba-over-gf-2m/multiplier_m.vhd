----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:46 02/24/2013 
-- Design Name: 
-- Module Name:    multiplier_m - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_m is
GENERIC(M:integer);
PORT(
	A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
	B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
);
end multiplier_m;

architecture behavioral of multiplier_m is

	component multiplier_2 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_3 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_4 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_5 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_6 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_7 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_8 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_9 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_10 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;

	component multiplier_11 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;

	component multiplier_12 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_13 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_14 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_15 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_16 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_17 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_18 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_19 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_20 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_21 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;

	component multiplier_22 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_23 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_24 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_25 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_26 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_27 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_28 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_29 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
	component multiplier_30 is
	generic(M:integer);
	PORT(
		A : IN  STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		B : IN  STD_LOGIC_VECTOR(M-1 DOWNTO 0);
		C : OUT  STD_LOGIC_VECTOR(2*M-2 DOWNTO 0)
	);
	end component;
	
begin

	if1: IF M=1 generate
	C(0) <= A(0) and B(0);
	end generate;
	if2: IF M=2 generate
	mul2:	multiplier_2 generic map(M) port map(A,B,C);
	end generate;
	if3: IF M=3 generate
	mul3:	multiplier_3 generic map(M) port map(A,B,C);
	end generate;
	if4: IF M=4 generate
	mul4:	multiplier_4 generic map(M) port map(A,B,C);
	end generate;
	if5: IF M=5 generate
	mul5:	multiplier_5 generic map(M) port map(A,B,C);
	end generate;
	if6: IF M=6 generate
	mul6:	multiplier_6 generic map(M) port map(A,B,C);
	end generate;
	if7: IF M=7 generate
	mul7:	multiplier_7 generic map(M) port map(A,B,C);
	end generate;
	if8: IF M=8 generate
	mul8:	multiplier_8 generic map(M) port map(A,B,C);
	end generate;
	if9: IF M=9 generate
	mul9:	multiplier_9 generic map(M) port map(A,B,C);
	end generate;
	if10: IF M=10 generate
	mul10: multiplier_10 generic map(M) port map(A,B,C);
	end generate;
	
	if11: IF M=11 generate
	mul11:	multiplier_11 generic map(M) port map(A,B,C);
	end generate;
	if12: IF M=12 generate
	mul12:	multiplier_12 generic map(M) port map(A,B,C);
	end generate;
	if13: IF M=13 generate
	mul13:	multiplier_13 generic map(M) port map(A,B,C);
	end generate;
	if14: IF M=14 generate
	mul14:	multiplier_14 generic map(M) port map(A,B,C);
	end generate;
	if15: IF M=15 generate
	mul15:	multiplier_15 generic map(M) port map(A,B,C);
	end generate;
	if16: IF M=16 generate
	mul16:	multiplier_16 generic map(M) port map(A,B,C);
	end generate;
	if17: IF M=17 generate
	mul17:	multiplier_17 generic map(M) port map(A,B,C);
	end generate;
	if18: IF M=18 generate
	mul18:	multiplier_18 generic map(M) port map(A,B,C);
	end generate;
	if19: IF M=19 generate
	mul19:	multiplier_19 generic map(M) port map(A,B,C);
	end generate;
	if20: IF M=20 generate
	mul20: 	multiplier_20 generic map(M) port map(A,B,C);
	end generate;
	
	if21: IF M=21 generate
	mul21:	multiplier_21 generic map(M) port map(A,B,C);
	end generate;
	if22: IF M=22 generate
	mul22:	multiplier_22 generic map(M) port map(A,B,C);
	end generate;
	if23: IF M=23 generate
	mul23:	multiplier_23 generic map(M) port map(A,B,C);
	end generate;
	if24: IF M=24 generate
	mul24:	multiplier_24 generic map(M) port map(A,B,C);
	end generate;
	if25: IF M=25 generate
	mul25:	multiplier_25 generic map(M) port map(A,B,C);
	end generate;
	if26: IF M=26 generate
	mul26:	multiplier_26 generic map(M) port map(A,B,C);
	end generate;
	if27: IF M=27 generate
	mul27:	multiplier_27 generic map(M) port map(A,B,C);
	end generate;
	if28: IF M=28 generate
	mul28:	multiplier_28 generic map(M) port map(A,B,C);
	end generate;
	if29: IF M=29 generate
	mul29:	multiplier_29 generic map(M) port map(A,B,C);
	end generate;
	if30: IF M=30 generate
	mul30: 	multiplier_30 generic map(M) port map(A,B,C);
	end generate;


end behavioral;

