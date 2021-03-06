----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:29 12/02/2017 
-- Design Name: 
-- Module Name:    Barra1 - Behavioral 
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

entity Barra1 is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           instrutin : in  STD_LOGIC_VECTOR (31 downto 0);
           PCin : in  STD_LOGIC_VECTOR (31 downto 0);
           instrutout : out  STD_LOGIC_VECTOR (31 downto 0);
           PCout : out  STD_LOGIC_VECTOR (31 downto 0));
end Barra1;

architecture Behavioral of Barra1 is

begin
	process(Clk,Reset,instrutin,PCin )
	begin
		if reset='1' then
			 instrutout <= "00000000000000000000000000000000";
          PCout <= "00000000000000000000000000000000";	
		elsif(rising_edge(Clk)) then
			 instrutout <= instrutin;
          PCout <= PCin;
		end if;
	
	end process;
end Behavioral;

