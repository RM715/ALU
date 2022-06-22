----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:17 06/16/2022 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
	port (
		a, b : in std_logic_vector(7 downto 0);
		operacion: in std_logic_vector(3 downto 0);
		salida : out std_logic_vector(7 downto 0)
	);
end entity;

architecture Behavioral of alu is

begin
	process(a, b, operacion)
	begin
		case operacion is
			when "0000"=> salida <= a;
			when "0001"=> salida <= b;
			when "0010"=> salida <= not a;
			when "0011"=> salida <= not b;
			when "0100"=> salida <= a and b;
			when "0101"=> salida <= a nand b;
			when "0110"=> salida <= a or b;
			when "0111"=> salida <= a nor b;
			when "1000"=> salida <= a xor b;
			when "1001"=> salida <= a xnor b;
			when "1010"=> salida <= std_logic_vector(unsigned(a) + unsigned(b));
			when "1011"=> salida <= std_logic_vector(unsigned(a) - unsigned(b));
			when others => salida <= "00000000";
		end case;
	end process;
end Behavioral;

