-- Diseño de un controlador SPI para memoria Flash
-- Lee y ejecuta las primeras 8 instrucciones dentro de la memoria Flash
-- Autor: Rodrigo Alvarez

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;
use work.displays.all;
use work.parser.all;

-- OP    N2		N1
-- 00 / 000 / 000
-- Descripcion 
-- Cada registro de la memoria flash es de 8 bits. 
-- Se utilizarán 2 bits para los codigos de operacion
-- 3 bits para el segundo numero
-- 3 bits para el primer numero
-- La salida será a los displays de 7 segmentos, en un formato hexadecimal
-- Codigos:
-- 00: Operacion AND entre ambos numeros --> AND W1, W2
-- 01: Operacion OR entre ambos numeros --> OR W1, W2
-- 10: Suma --> ADD W1, W2
-- 11: Resta --> SUB W1, W2

entity Flashy is
	port (
		clk, clr : in std_logic; -- Reloj y boton de reset
		displays: inout std_logic_vector(55 downto 0); -- Displays 7 segmentos
		-- Parte de la flash
		fl_addr: inout std_logic_vector(22 downto 0); -- Direccion de la Flash. Se compone de 23 bits, su valor es tomado en hexadecimal 
		fl_data: inout std_logic_vector(7 downto 0); -- Datos obtenidos de la flash, a partir de esto se van a ejecutar las instrucciones
		fl_rdb: in std_logic;
		fl_chip_en, fl_chip_out, fl_rst, fl_we, fl_wp: out std_logic
		-- Chip Enable --> Debe de ir en 1 para activar la memoria
		-- Chip out --> Activado para obtener o leer los datos de la memoria
		-- Flash reset --> Una vez que termine, con el reset regresa a la primer posicion
		-- Ready / Busy --> Generalmente 1, cuando se haga lectura se cambia a 0 hasta terminar dicha operacion
		-- Write enable --> Mantener en 0
		-- Write protect --> Mantener en 0
	);
end entity;

architecture behavior of Flashy is
	constant base_1Hz    : Integer := 70000000;
	signal count1Hz    : INTEGER range 0 to base_1Hz;
	signal opcode: std_logic_vector(1 downto 0);
	signal num_1, num_2: std_logic_vector(2 downto 0);
	signal result: std_logic_vector(3 downto 0);
	signal temp_op, temp_num1, temp_num2 : std_logic_vector(3 downto 0);
	-- CONSTANTES de direcciones de memoria
	constant dir_0 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000000000";
	constant dir_1 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000000010";
	constant dir_2 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000000100";
	constant dir_3 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000000110";
	constant dir_4 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000001000";
	constant dir_5 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000001010";
	constant dir_6 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000001100";
	constant dir_7 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000001110";
	constant dir_8 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000010000";
	constant dir_9 : STD_LOGIC_VECTOR(22 DOWNTO 0) := "00000000000000000010010";
begin
	
	fl_chip_en <= '0';
	fl_chip_out <= '0';
	fl_rst <= '1';
	fl_we <= '1';
	fl_wp <= '0';
	
	-- Ciclo de reloj
	Clock : process (count1Hz, clk, clr, result)
		variable aux : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; -- Variable para el conteo
	begin
		if clr = '0' then
			aux := "0000";
			result <= "0000";
		elsif (clk' event AND clk = '1') then
			if count1Hz < base_1Hz then
				count1Hz <= count1Hz + 1;
			else
				case (aux) is
					when "0000" => fl_addr <= dir_0;
					when "0001" => fl_addr <= dir_1;
					when "0010" => fl_addr <= dir_2;
					when "0011" => fl_addr <= dir_3;
					when "0100" => fl_addr <= dir_4;
					when "0101" => fl_addr <= dir_5;
					when "0110" => fl_addr <= dir_6;
					when "0111" => fl_addr <= dir_7;
					when "1000" => fl_addr <= dir_8;
					when "1001" => fl_addr <= dir_9;
					when others => null;
				end case;
				opcode <= fl_data(7 downto 6);
				num_2 <= fl_data(5 downto 3);
				num_1 <= fl_data(2 downto 0);
				temp_op <= std_logic_vector("00" & opcode);
				temp_num1 <= std_logic_vector('0' & num_1);
				temp_num2 <= std_logic_vector('0' & num_2);
				op_parser(opcode, num_1, num_2, result);
				-- Display de opcode
				display_7seg(temp_op, displays(34 downto 28));
				-- Display para el primer numero
				display_7seg(temp_num1, displays(27 downto 21));
				--Display para el segundo numero
				display_7seg(temp_num2, displays(20 downto 14));
				--Display del resultado
				display_7seg(result, displays(6 downto 0));
				aux := aux + 1;
				if aux = "1010" then
					aux := "0000";
				end if;
				count1Hz <= 0;
			end if;
		end if;
	end process;
	
end architecture;


