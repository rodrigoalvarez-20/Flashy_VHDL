-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "01/06/2023 16:09:33"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Flashy IS
    PORT (
	\global.bp.work.parser.temp_num1_3__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num1_2__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num1_1__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num1_0__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num2_3__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num2_2__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num2_1__gl_output\ : OUT std_logic;
	\global.bp.work.parser.temp_num2_0__gl_output\ : OUT std_logic;
	fl_data : INOUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	clr : IN std_logic;
	displays : INOUT std_logic_vector(55 DOWNTO 0);
	fl_addr : INOUT std_logic_vector(22 DOWNTO 0);
	fl_rdb : IN std_logic;
	fl_chip_en : OUT std_logic;
	fl_chip_out : OUT std_logic;
	fl_rst : OUT std_logic;
	fl_we : OUT std_logic;
	fl_wp : OUT std_logic
	);
END Flashy;

-- Design Ports Information
-- fl_rdb	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_chip_en	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_chip_out	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_rst	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_we	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_wp	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[35]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[36]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[37]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[38]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[39]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[40]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[41]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[42]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[43]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[44]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[45]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[46]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[47]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[48]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[49]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[50]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[51]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[52]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[53]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[54]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[55]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[15]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[17]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[19]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[20]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[22]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[28]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[31]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[32]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[33]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[34]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[4]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[13]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[17]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[18]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[19]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[20]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[21]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_addr[22]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[5]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fl_data[7]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Flashy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num1_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num1_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num1_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num1_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num2_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num2_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num2_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.parser.temp_num2_0__gl_output\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_fl_rdb : std_logic;
SIGNAL ww_fl_chip_en : std_logic;
SIGNAL ww_fl_chip_out : std_logic;
SIGNAL ww_fl_rst : std_logic;
SIGNAL ww_fl_we : std_logic;
SIGNAL ww_fl_wp : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count1Hz[0]~27_combout\ : std_logic;
SIGNAL \count1Hz[2]~31_combout\ : std_logic;
SIGNAL \count1Hz[3]~33_combout\ : std_logic;
SIGNAL \temp_num1_1_~q\ : std_logic;
SIGNAL \temp_num2_2_~q\ : std_logic;
SIGNAL \temp_num2_0_~q\ : std_logic;
SIGNAL \temp_num1_1_~0_combout\ : std_logic;
SIGNAL \temp_num2_2_~0_combout\ : std_logic;
SIGNAL \temp_num2_0_~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \displays[14]~125_combout\ : std_logic;
SIGNAL \displays[15]~127_combout\ : std_logic;
SIGNAL \displays[16]~129_combout\ : std_logic;
SIGNAL \displays[18]~133_combout\ : std_logic;
SIGNAL \displays[21]~136_combout\ : std_logic;
SIGNAL \displays[22]~138_combout\ : std_logic;
SIGNAL \displays[23]~140_combout\ : std_logic;
SIGNAL \displays[25]~144_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \fl_rdb~input_o\ : std_logic;
SIGNAL \displays[7]~input_o\ : std_logic;
SIGNAL \displays[8]~input_o\ : std_logic;
SIGNAL \displays[9]~input_o\ : std_logic;
SIGNAL \displays[10]~input_o\ : std_logic;
SIGNAL \displays[11]~input_o\ : std_logic;
SIGNAL \displays[12]~input_o\ : std_logic;
SIGNAL \displays[13]~input_o\ : std_logic;
SIGNAL \displays[35]~input_o\ : std_logic;
SIGNAL \displays[36]~input_o\ : std_logic;
SIGNAL \displays[37]~input_o\ : std_logic;
SIGNAL \displays[38]~input_o\ : std_logic;
SIGNAL \displays[39]~input_o\ : std_logic;
SIGNAL \displays[40]~input_o\ : std_logic;
SIGNAL \displays[41]~input_o\ : std_logic;
SIGNAL \displays[42]~input_o\ : std_logic;
SIGNAL \displays[43]~input_o\ : std_logic;
SIGNAL \displays[44]~input_o\ : std_logic;
SIGNAL \displays[45]~input_o\ : std_logic;
SIGNAL \displays[46]~input_o\ : std_logic;
SIGNAL \displays[47]~input_o\ : std_logic;
SIGNAL \displays[48]~input_o\ : std_logic;
SIGNAL \displays[49]~input_o\ : std_logic;
SIGNAL \displays[50]~input_o\ : std_logic;
SIGNAL \displays[51]~input_o\ : std_logic;
SIGNAL \displays[52]~input_o\ : std_logic;
SIGNAL \displays[53]~input_o\ : std_logic;
SIGNAL \displays[54]~input_o\ : std_logic;
SIGNAL \displays[55]~input_o\ : std_logic;
SIGNAL \displays[0]~input_o\ : std_logic;
SIGNAL \displays[1]~input_o\ : std_logic;
SIGNAL \displays[2]~input_o\ : std_logic;
SIGNAL \displays[3]~input_o\ : std_logic;
SIGNAL \displays[4]~input_o\ : std_logic;
SIGNAL \displays[5]~input_o\ : std_logic;
SIGNAL \displays[6]~input_o\ : std_logic;
SIGNAL \displays[14]~input_o\ : std_logic;
SIGNAL \displays[15]~input_o\ : std_logic;
SIGNAL \displays[16]~input_o\ : std_logic;
SIGNAL \displays[17]~input_o\ : std_logic;
SIGNAL \displays[18]~input_o\ : std_logic;
SIGNAL \displays[19]~input_o\ : std_logic;
SIGNAL \displays[20]~input_o\ : std_logic;
SIGNAL \displays[21]~input_o\ : std_logic;
SIGNAL \displays[22]~input_o\ : std_logic;
SIGNAL \displays[23]~input_o\ : std_logic;
SIGNAL \displays[24]~input_o\ : std_logic;
SIGNAL \displays[25]~input_o\ : std_logic;
SIGNAL \displays[26]~input_o\ : std_logic;
SIGNAL \displays[27]~input_o\ : std_logic;
SIGNAL \displays[28]~input_o\ : std_logic;
SIGNAL \displays[29]~input_o\ : std_logic;
SIGNAL \displays[30]~input_o\ : std_logic;
SIGNAL \displays[31]~input_o\ : std_logic;
SIGNAL \displays[32]~input_o\ : std_logic;
SIGNAL \displays[33]~input_o\ : std_logic;
SIGNAL \displays[34]~input_o\ : std_logic;
SIGNAL \fl_addr[0]~input_o\ : std_logic;
SIGNAL \fl_addr[1]~input_o\ : std_logic;
SIGNAL \fl_addr[2]~input_o\ : std_logic;
SIGNAL \fl_addr[3]~input_o\ : std_logic;
SIGNAL \fl_addr[4]~input_o\ : std_logic;
SIGNAL \fl_addr[5]~input_o\ : std_logic;
SIGNAL \fl_addr[6]~input_o\ : std_logic;
SIGNAL \fl_addr[7]~input_o\ : std_logic;
SIGNAL \fl_addr[8]~input_o\ : std_logic;
SIGNAL \fl_addr[9]~input_o\ : std_logic;
SIGNAL \fl_addr[10]~input_o\ : std_logic;
SIGNAL \fl_addr[11]~input_o\ : std_logic;
SIGNAL \fl_addr[12]~input_o\ : std_logic;
SIGNAL \fl_addr[13]~input_o\ : std_logic;
SIGNAL \fl_addr[14]~input_o\ : std_logic;
SIGNAL \fl_addr[15]~input_o\ : std_logic;
SIGNAL \fl_addr[16]~input_o\ : std_logic;
SIGNAL \fl_addr[17]~input_o\ : std_logic;
SIGNAL \fl_addr[18]~input_o\ : std_logic;
SIGNAL \fl_addr[19]~input_o\ : std_logic;
SIGNAL \fl_addr[20]~input_o\ : std_logic;
SIGNAL \fl_addr[21]~input_o\ : std_logic;
SIGNAL \fl_addr[22]~input_o\ : std_logic;
SIGNAL \displays[7]~output_o\ : std_logic;
SIGNAL \displays[8]~output_o\ : std_logic;
SIGNAL \displays[9]~output_o\ : std_logic;
SIGNAL \displays[10]~output_o\ : std_logic;
SIGNAL \displays[11]~output_o\ : std_logic;
SIGNAL \displays[12]~output_o\ : std_logic;
SIGNAL \displays[13]~output_o\ : std_logic;
SIGNAL \displays[35]~output_o\ : std_logic;
SIGNAL \displays[36]~output_o\ : std_logic;
SIGNAL \displays[37]~output_o\ : std_logic;
SIGNAL \displays[38]~output_o\ : std_logic;
SIGNAL \displays[39]~output_o\ : std_logic;
SIGNAL \displays[40]~output_o\ : std_logic;
SIGNAL \displays[41]~output_o\ : std_logic;
SIGNAL \displays[42]~output_o\ : std_logic;
SIGNAL \displays[43]~output_o\ : std_logic;
SIGNAL \displays[44]~output_o\ : std_logic;
SIGNAL \displays[45]~output_o\ : std_logic;
SIGNAL \displays[46]~output_o\ : std_logic;
SIGNAL \displays[47]~output_o\ : std_logic;
SIGNAL \displays[48]~output_o\ : std_logic;
SIGNAL \displays[49]~output_o\ : std_logic;
SIGNAL \displays[50]~output_o\ : std_logic;
SIGNAL \displays[51]~output_o\ : std_logic;
SIGNAL \displays[52]~output_o\ : std_logic;
SIGNAL \displays[53]~output_o\ : std_logic;
SIGNAL \displays[54]~output_o\ : std_logic;
SIGNAL \displays[55]~output_o\ : std_logic;
SIGNAL \displays[0]~output_o\ : std_logic;
SIGNAL \displays[1]~output_o\ : std_logic;
SIGNAL \displays[2]~output_o\ : std_logic;
SIGNAL \displays[3]~output_o\ : std_logic;
SIGNAL \displays[4]~output_o\ : std_logic;
SIGNAL \displays[5]~output_o\ : std_logic;
SIGNAL \displays[6]~output_o\ : std_logic;
SIGNAL \displays[14]~output_o\ : std_logic;
SIGNAL \displays[15]~output_o\ : std_logic;
SIGNAL \displays[16]~output_o\ : std_logic;
SIGNAL \displays[17]~output_o\ : std_logic;
SIGNAL \displays[18]~output_o\ : std_logic;
SIGNAL \displays[19]~output_o\ : std_logic;
SIGNAL \displays[20]~output_o\ : std_logic;
SIGNAL \displays[21]~output_o\ : std_logic;
SIGNAL \displays[22]~output_o\ : std_logic;
SIGNAL \displays[23]~output_o\ : std_logic;
SIGNAL \displays[24]~output_o\ : std_logic;
SIGNAL \displays[25]~output_o\ : std_logic;
SIGNAL \displays[26]~output_o\ : std_logic;
SIGNAL \displays[27]~output_o\ : std_logic;
SIGNAL \displays[28]~output_o\ : std_logic;
SIGNAL \displays[29]~output_o\ : std_logic;
SIGNAL \displays[30]~output_o\ : std_logic;
SIGNAL \displays[31]~output_o\ : std_logic;
SIGNAL \displays[32]~output_o\ : std_logic;
SIGNAL \displays[33]~output_o\ : std_logic;
SIGNAL \displays[34]~output_o\ : std_logic;
SIGNAL \fl_addr[0]~output_o\ : std_logic;
SIGNAL \fl_addr[1]~output_o\ : std_logic;
SIGNAL \fl_addr[2]~output_o\ : std_logic;
SIGNAL \fl_addr[3]~output_o\ : std_logic;
SIGNAL \fl_addr[4]~output_o\ : std_logic;
SIGNAL \fl_addr[5]~output_o\ : std_logic;
SIGNAL \fl_addr[6]~output_o\ : std_logic;
SIGNAL \fl_addr[7]~output_o\ : std_logic;
SIGNAL \fl_addr[8]~output_o\ : std_logic;
SIGNAL \fl_addr[9]~output_o\ : std_logic;
SIGNAL \fl_addr[10]~output_o\ : std_logic;
SIGNAL \fl_addr[11]~output_o\ : std_logic;
SIGNAL \fl_addr[12]~output_o\ : std_logic;
SIGNAL \fl_addr[13]~output_o\ : std_logic;
SIGNAL \fl_addr[14]~output_o\ : std_logic;
SIGNAL \fl_addr[15]~output_o\ : std_logic;
SIGNAL \fl_addr[16]~output_o\ : std_logic;
SIGNAL \fl_addr[17]~output_o\ : std_logic;
SIGNAL \fl_addr[18]~output_o\ : std_logic;
SIGNAL \fl_addr[19]~output_o\ : std_logic;
SIGNAL \fl_addr[20]~output_o\ : std_logic;
SIGNAL \fl_addr[21]~output_o\ : std_logic;
SIGNAL \fl_addr[22]~output_o\ : std_logic;
SIGNAL \fl_data[0]~output_o\ : std_logic;
SIGNAL \fl_data[1]~output_o\ : std_logic;
SIGNAL \fl_data[2]~output_o\ : std_logic;
SIGNAL \fl_data[3]~output_o\ : std_logic;
SIGNAL \fl_data[4]~output_o\ : std_logic;
SIGNAL \fl_data[5]~output_o\ : std_logic;
SIGNAL \fl_data[6]~output_o\ : std_logic;
SIGNAL \fl_data[7]~output_o\ : std_logic;
SIGNAL \fl_chip_en~output_o\ : std_logic;
SIGNAL \fl_chip_out~output_o\ : std_logic;
SIGNAL \fl_rst~output_o\ : std_logic;
SIGNAL \fl_we~output_o\ : std_logic;
SIGNAL \fl_wp~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \count1Hz[0]~28\ : std_logic;
SIGNAL \count1Hz[1]~29_combout\ : std_logic;
SIGNAL \count1Hz[1]~30\ : std_logic;
SIGNAL \count1Hz[2]~32\ : std_logic;
SIGNAL \count1Hz[3]~34\ : std_logic;
SIGNAL \count1Hz[4]~35_combout\ : std_logic;
SIGNAL \count1Hz[4]~36\ : std_logic;
SIGNAL \count1Hz[5]~37_combout\ : std_logic;
SIGNAL \count1Hz[5]~38\ : std_logic;
SIGNAL \count1Hz[6]~39_combout\ : std_logic;
SIGNAL \count1Hz[6]~40\ : std_logic;
SIGNAL \count1Hz[7]~41_combout\ : std_logic;
SIGNAL \count1Hz[7]~42\ : std_logic;
SIGNAL \count1Hz[8]~43_combout\ : std_logic;
SIGNAL \count1Hz[8]~44\ : std_logic;
SIGNAL \count1Hz[9]~45_combout\ : std_logic;
SIGNAL \count1Hz[9]~46\ : std_logic;
SIGNAL \count1Hz[10]~48\ : std_logic;
SIGNAL \count1Hz[11]~49_combout\ : std_logic;
SIGNAL \count1Hz[11]~50\ : std_logic;
SIGNAL \count1Hz[12]~52\ : std_logic;
SIGNAL \count1Hz[13]~53_combout\ : std_logic;
SIGNAL \count1Hz[13]~54\ : std_logic;
SIGNAL \count1Hz[14]~56\ : std_logic;
SIGNAL \count1Hz[15]~57_combout\ : std_logic;
SIGNAL \count1Hz[15]~58\ : std_logic;
SIGNAL \count1Hz[16]~59_combout\ : std_logic;
SIGNAL \count1Hz[16]~60\ : std_logic;
SIGNAL \count1Hz[17]~61_combout\ : std_logic;
SIGNAL \count1Hz[17]~62\ : std_logic;
SIGNAL \count1Hz[18]~63_combout\ : std_logic;
SIGNAL \count1Hz[18]~64\ : std_logic;
SIGNAL \count1Hz[19]~65_combout\ : std_logic;
SIGNAL \count1Hz[19]~66\ : std_logic;
SIGNAL \count1Hz[20]~67_combout\ : std_logic;
SIGNAL \count1Hz[20]~68\ : std_logic;
SIGNAL \count1Hz[21]~70\ : std_logic;
SIGNAL \count1Hz[22]~71_combout\ : std_logic;
SIGNAL \count1Hz[22]~72\ : std_logic;
SIGNAL \count1Hz[23]~73_combout\ : std_logic;
SIGNAL \count1Hz[23]~74\ : std_logic;
SIGNAL \count1Hz[24]~76\ : std_logic;
SIGNAL \count1Hz[25]~77_combout\ : std_logic;
SIGNAL \count1Hz[25]~78\ : std_logic;
SIGNAL \count1Hz[26]~79_combout\ : std_logic;
SIGNAL \count1Hz[24]~75_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count1Hz[14]~55_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count1Hz[12]~51_combout\ : std_logic;
SIGNAL \count1Hz[10]~47_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \displays[0]~118_combout\ : std_logic;
SIGNAL \displays[0]~reg0_q\ : std_logic;
SIGNAL \fl_data[6]~input_o\ : std_logic;
SIGNAL \count1Hz[21]~69_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \temp_num2_3_~0_combout\ : std_logic;
SIGNAL \temp_num2_3_~1_combout\ : std_logic;
SIGNAL \temp_num2_1_~0_combout\ : std_logic;
SIGNAL \temp_num2_1_~q\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \fl_data[0]~input_o\ : std_logic;
SIGNAL \num_1[0]~feeder_combout\ : std_logic;
SIGNAL \temp_num1_0_~0_combout\ : std_logic;
SIGNAL \temp_num1_0_~q\ : std_logic;
SIGNAL \result[0]~5_cout\ : std_logic;
SIGNAL \result[0]~7\ : std_logic;
SIGNAL \result[1]~8_combout\ : std_logic;
SIGNAL \fl_data[1]~input_o\ : std_logic;
SIGNAL \num_1[1]~feeder_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \fl_data[7]~input_o\ : std_logic;
SIGNAL \opcode[1]~feeder_combout\ : std_logic;
SIGNAL \fl_data[2]~input_o\ : std_logic;
SIGNAL \num_1[2]~feeder_combout\ : std_logic;
SIGNAL \temp_num1_2_~0_combout\ : std_logic;
SIGNAL \temp_num1_2_~q\ : std_logic;
SIGNAL \result[1]~9\ : std_logic;
SIGNAL \result[2]~11\ : std_logic;
SIGNAL \result[3]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \result[0]~6_combout\ : std_logic;
SIGNAL \fl_data[3]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \displays[1]~119_combout\ : std_logic;
SIGNAL \displays[1]~reg0_q\ : std_logic;
SIGNAL \displays[2]~120_combout\ : std_logic;
SIGNAL \displays[2]~reg0_q\ : std_logic;
SIGNAL \result[2]~10_combout\ : std_logic;
SIGNAL \fl_data[5]~input_o\ : std_logic;
SIGNAL \num_2[2]~feeder_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \displays[3]~121_combout\ : std_logic;
SIGNAL \displays[3]~reg0_q\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \displays[4]~122_combout\ : std_logic;
SIGNAL \displays[4]~reg0_q\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \displays[5]~123_combout\ : std_logic;
SIGNAL \displays[5]~reg0_q\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \displays[6]~124_combout\ : std_logic;
SIGNAL \displays[6]~reg0_q\ : std_logic;
SIGNAL \displays[14]~126_combout\ : std_logic;
SIGNAL \displays[14]~reg0_q\ : std_logic;
SIGNAL \displays[15]~128_combout\ : std_logic;
SIGNAL \displays[15]~reg0_q\ : std_logic;
SIGNAL \displays[16]~130_combout\ : std_logic;
SIGNAL \displays[16]~reg0_q\ : std_logic;
SIGNAL \temp_num2[2]~feeder_combout\ : std_logic;
SIGNAL \fl_data[4]~input_o\ : std_logic;
SIGNAL \num_2[1]~feeder_combout\ : std_logic;
SIGNAL \temp_num2[1]~feeder_combout\ : std_logic;
SIGNAL \displays[17]~132_combout\ : std_logic;
SIGNAL \displays[17]~131_combout\ : std_logic;
SIGNAL \displays[17]~0_combout\ : std_logic;
SIGNAL \displays[17]~reg0_q\ : std_logic;
SIGNAL \displays[18]~134_combout\ : std_logic;
SIGNAL \displays[18]~reg0_q\ : std_logic;
SIGNAL \displays[19]~1_combout\ : std_logic;
SIGNAL \displays[19]~reg0_q\ : std_logic;
SIGNAL \displays[20]~135_combout\ : std_logic;
SIGNAL \displays[20]~2_combout\ : std_logic;
SIGNAL \displays[20]~reg0_q\ : std_logic;
SIGNAL \displays[21]~137_combout\ : std_logic;
SIGNAL \displays[21]~reg0_q\ : std_logic;
SIGNAL \displays[22]~139_combout\ : std_logic;
SIGNAL \displays[22]~reg0_q\ : std_logic;
SIGNAL \displays[23]~141_combout\ : std_logic;
SIGNAL \displays[23]~reg0_q\ : std_logic;
SIGNAL \temp_num1[0]~feeder_combout\ : std_logic;
SIGNAL \displays[24]~142_combout\ : std_logic;
SIGNAL \displays[24]~143_combout\ : std_logic;
SIGNAL \displays[24]~3_combout\ : std_logic;
SIGNAL \displays[24]~reg0_q\ : std_logic;
SIGNAL \displays[25]~145_combout\ : std_logic;
SIGNAL \displays[25]~reg0_q\ : std_logic;
SIGNAL \displays[26]~4_combout\ : std_logic;
SIGNAL \displays[26]~reg0_q\ : std_logic;
SIGNAL \displays[27]~146_combout\ : std_logic;
SIGNAL \displays[27]~5_combout\ : std_logic;
SIGNAL \displays[27]~reg0_q\ : std_logic;
SIGNAL \temp_op[1]~feeder_combout\ : std_logic;
SIGNAL \displays[28]~147_combout\ : std_logic;
SIGNAL \displays[28]~reg0_q\ : std_logic;
SIGNAL \displays[30]~148_combout\ : std_logic;
SIGNAL \displays[30]~reg0_q\ : std_logic;
SIGNAL \displays[31]~149_combout\ : std_logic;
SIGNAL \displays[31]~reg0_q\ : std_logic;
SIGNAL \displays[32]~150_combout\ : std_logic;
SIGNAL \displays[32]~reg0_q\ : std_logic;
SIGNAL \displays[33]~151_combout\ : std_logic;
SIGNAL \displays[33]~reg0_q\ : std_logic;
SIGNAL \displays[34]~152_combout\ : std_logic;
SIGNAL \displays[34]~reg0_q\ : std_logic;
SIGNAL \Clock:aux[0]~0_combout\ : std_logic;
SIGNAL \Clock:aux[0]~q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Clock:aux[2]~q\ : std_logic;
SIGNAL \aux~0_combout\ : std_logic;
SIGNAL \Clock:aux[3]~q\ : std_logic;
SIGNAL \fl_addr[8]~46_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \fl_addr[1]~reg0_q\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \Clock:aux[1]~q\ : std_logic;
SIGNAL \fl_addr[8]~47_combout\ : std_logic;
SIGNAL \fl_addr[2]~48_combout\ : std_logic;
SIGNAL \fl_addr[2]~reg0_q\ : std_logic;
SIGNAL \fl_addr[3]~49_combout\ : std_logic;
SIGNAL \fl_addr[3]~reg0_q\ : std_logic;
SIGNAL \fl_addr[4]~50_combout\ : std_logic;
SIGNAL \fl_addr[4]~reg0_q\ : std_logic;
SIGNAL temp_op : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_num2 : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_num1 : std_logic_vector(3 DOWNTO 0);
SIGNAL result : std_logic_vector(3 DOWNTO 0);
SIGNAL opcode : std_logic_vector(1 DOWNTO 0);
SIGNAL num_2 : std_logic_vector(2 DOWNTO 0);
SIGNAL num_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL count1Hz : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL ALT_INV_opcode : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_temp_num2_3_~1_combout\ : std_logic;

BEGIN

\global.bp.work.parser.temp_num1_3__gl_output\ <= \ww_global.bp.work.parser.temp_num1_3__gl_output\;
\global.bp.work.parser.temp_num1_2__gl_output\ <= \ww_global.bp.work.parser.temp_num1_2__gl_output\;
\global.bp.work.parser.temp_num1_1__gl_output\ <= \ww_global.bp.work.parser.temp_num1_1__gl_output\;
\global.bp.work.parser.temp_num1_0__gl_output\ <= \ww_global.bp.work.parser.temp_num1_0__gl_output\;
\global.bp.work.parser.temp_num2_3__gl_output\ <= \ww_global.bp.work.parser.temp_num2_3__gl_output\;
\global.bp.work.parser.temp_num2_2__gl_output\ <= \ww_global.bp.work.parser.temp_num2_2__gl_output\;
\global.bp.work.parser.temp_num2_1__gl_output\ <= \ww_global.bp.work.parser.temp_num2_1__gl_output\;
\global.bp.work.parser.temp_num2_0__gl_output\ <= \ww_global.bp.work.parser.temp_num2_0__gl_output\;
ww_clk <= clk;
ww_clr <= clr;
ww_fl_rdb <= fl_rdb;
fl_chip_en <= ww_fl_chip_en;
fl_chip_out <= ww_fl_chip_out;
fl_rst <= ww_fl_rst;
fl_we <= ww_fl_we;
fl_wp <= ww_fl_wp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
ALT_INV_opcode(1) <= NOT opcode(1);
\ALT_INV_temp_num2_3_~1_combout\ <= NOT \temp_num2_3_~1_combout\;

-- Location: FF_X81_Y2_N13
\count1Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[3]~33_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(3));

-- Location: FF_X81_Y2_N11
\count1Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[2]~31_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(2));

-- Location: FF_X81_Y2_N7
\count1Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[0]~27_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(0));

-- Location: LCCOMB_X81_Y2_N6
\count1Hz[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[0]~27_combout\ = count1Hz(0) $ (VCC)
-- \count1Hz[0]~28\ = CARRY(count1Hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(0),
	datad => VCC,
	combout => \count1Hz[0]~27_combout\,
	cout => \count1Hz[0]~28\);

-- Location: LCCOMB_X81_Y2_N10
\count1Hz[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[2]~31_combout\ = (count1Hz(2) & (\count1Hz[1]~30\ $ (GND))) # (!count1Hz(2) & (!\count1Hz[1]~30\ & VCC))
-- \count1Hz[2]~32\ = CARRY((count1Hz(2) & !\count1Hz[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(2),
	datad => VCC,
	cin => \count1Hz[1]~30\,
	combout => \count1Hz[2]~31_combout\,
	cout => \count1Hz[2]~32\);

-- Location: LCCOMB_X81_Y2_N12
\count1Hz[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[3]~33_combout\ = (count1Hz(3) & (!\count1Hz[2]~32\)) # (!count1Hz(3) & ((\count1Hz[2]~32\) # (GND)))
-- \count1Hz[3]~34\ = CARRY((!\count1Hz[2]~32\) # (!count1Hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(3),
	datad => VCC,
	cin => \count1Hz[2]~32\,
	combout => \count1Hz[3]~33_combout\,
	cout => \count1Hz[3]~34\);

-- Location: FF_X83_Y2_N27
\temp_num1_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num1_1_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num1_1_~q\);

-- Location: FF_X84_Y2_N29
\temp_num2_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num2_2_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num2_2_~q\);

-- Location: FF_X84_Y2_N7
\temp_num2_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num2_0_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num2_0_~q\);

-- Location: LCCOMB_X83_Y2_N26
\temp_num1_1_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num1_1_~0_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & (num_1(1))) # (!\clr~input_o\ & ((\temp_num1_1_~q\))))) # (!\LessThan0~6_combout\ & (((\temp_num1_1_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => num_1(1),
	datac => \temp_num1_1_~q\,
	datad => \clr~input_o\,
	combout => \temp_num1_1_~0_combout\);

-- Location: LCCOMB_X84_Y2_N28
\temp_num2_2_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2_2_~0_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (num_2(2))) # (!\LessThan0~6_combout\ & ((\temp_num2_2_~q\))))) # (!\clr~input_o\ & (((\temp_num2_2_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => num_2(2),
	datac => \temp_num2_2_~q\,
	datad => \LessThan0~6_combout\,
	combout => \temp_num2_2_~0_combout\);

-- Location: LCCOMB_X84_Y2_N6
\temp_num2_0_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2_0_~0_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (num_2(0))) # (!\LessThan0~6_combout\ & ((\temp_num2_0_~q\))))) # (!\clr~input_o\ & (((\temp_num2_0_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_2(0),
	datab => \clr~input_o\,
	datac => \temp_num2_0_~q\,
	datad => \LessThan0~6_combout\,
	combout => \temp_num2_0_~0_combout\);

-- Location: LCCOMB_X79_Y2_N16
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (result(3) & (result(0) & (result(1) $ (result(2))))) # (!result(3) & (!result(1) & (result(2) $ (result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(3),
	datab => result(1),
	datac => result(2),
	datad => result(0),
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X79_Y2_N14
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (result(2) & (result(3) & ((result(1)) # (!result(0))))) # (!result(2) & (result(1) & (!result(3) & !result(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(2),
	datab => result(1),
	datac => result(3),
	datad => result(0),
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X86_Y2_N26
\displays[14]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[14]~125_combout\ = (!temp_num2(1) & (temp_num2(0) $ (temp_num2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datac => temp_num2(2),
	datad => temp_num2(1),
	combout => \displays[14]~125_combout\);

-- Location: LCCOMB_X86_Y2_N24
\displays[15]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[15]~127_combout\ = (temp_num2(2) & (temp_num2(0) $ (temp_num2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datac => temp_num2(2),
	datad => temp_num2(1),
	combout => \displays[15]~127_combout\);

-- Location: LCCOMB_X86_Y2_N10
\displays[16]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[16]~129_combout\ = (!temp_num2(0) & (!temp_num2(2) & temp_num2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datac => temp_num2(2),
	datad => temp_num2(1),
	combout => \displays[16]~129_combout\);

-- Location: LCCOMB_X86_Y2_N12
\displays[18]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[18]~133_combout\ = (temp_num2(0)) # ((temp_num2(2) & !temp_num2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datac => temp_num2(2),
	datad => temp_num2(1),
	combout => \displays[18]~133_combout\);

-- Location: LCCOMB_X84_Y2_N10
\displays[21]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[21]~136_combout\ = (!temp_num1(1) & (temp_num1(2) $ (temp_num1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_num1(2),
	datac => temp_num1(1),
	datad => temp_num1(0),
	combout => \displays[21]~136_combout\);

-- Location: LCCOMB_X85_Y2_N26
\displays[22]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[22]~138_combout\ = (temp_num1(2) & (temp_num1(1) $ (temp_num1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(1),
	datac => temp_num1(2),
	datad => temp_num1(0),
	combout => \displays[22]~138_combout\);

-- Location: LCCOMB_X85_Y2_N16
\displays[23]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[23]~140_combout\ = (temp_num1(1) & (!temp_num1(2) & !temp_num1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(1),
	datac => temp_num1(2),
	datad => temp_num1(0),
	combout => \displays[23]~140_combout\);

-- Location: LCCOMB_X85_Y2_N10
\displays[25]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[25]~144_combout\ = (temp_num1(0)) # ((!temp_num1(1) & temp_num1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(1),
	datac => temp_num1(2),
	datad => temp_num1(0),
	combout => \displays[25]~144_combout\);

-- Location: LCCOMB_X84_Y2_N20
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = opcode(0) $ (\temp_num2_0_~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => opcode(0),
	datad => \temp_num2_0_~q\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X84_Y2_N2
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = opcode(0) $ (\temp_num2_2_~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => opcode(0),
	datad => \temp_num2_2_~q\,
	combout => \Add1~3_combout\);

-- Location: IOOBUF_X115_Y41_N2
\displays[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\displays[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\displays[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\displays[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\displays[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\displays[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\displays[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\displays[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[35]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\displays[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[36]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\displays[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[37]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\displays[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[38]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\displays[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[39]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\displays[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[40]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\displays[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[41]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\displays[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[42]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\displays[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[43]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\displays[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[44]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\displays[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[45]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\displays[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[46]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\displays[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[47]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\displays[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[48]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\displays[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[49]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\displays[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[50]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\displays[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[51]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\displays[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\displays[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[53]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\displays[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[54]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\displays[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displays[55]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\displays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\displays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\displays[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\displays[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\displays[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\displays[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\displays[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\displays[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[14]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[14]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\displays[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[15]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\displays[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[16]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\displays[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[17]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\displays[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[18]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[18]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\displays[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[19]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\displays[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[20]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\displays[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[21]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\displays[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[22]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\displays[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[23]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\displays[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[24]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\displays[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[25]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\displays[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[26]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\displays[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[27]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[27]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\displays[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[28]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[28]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\displays[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\displays[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[30]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\displays[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[31]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\displays[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[32]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[32]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\displays[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[33]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\displays[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displays[34]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \displays[34]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\fl_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\fl_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fl_addr[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\fl_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fl_addr[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\fl_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fl_addr[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\fl_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fl_addr[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\fl_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\fl_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\fl_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\fl_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\fl_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\fl_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\fl_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\fl_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\fl_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\fl_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\fl_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\fl_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[16]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\fl_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[17]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\fl_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[18]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\fl_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[19]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\fl_addr[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[20]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\fl_addr[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\fl_addr[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => VCC,
	devoe => ww_devoe,
	o => \fl_addr[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\fl_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\fl_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\fl_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\fl_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\fl_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\fl_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\fl_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\fl_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_data[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\fl_chip_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fl_chip_en~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\fl_chip_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fl_chip_out~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\fl_rst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_rst~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\fl_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fl_we~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\fl_wp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fl_wp~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X81_Y2_N8
\count1Hz[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[1]~29_combout\ = (count1Hz(1) & (!\count1Hz[0]~28\)) # (!count1Hz(1) & ((\count1Hz[0]~28\) # (GND)))
-- \count1Hz[1]~30\ = CARRY((!\count1Hz[0]~28\) # (!count1Hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(1),
	datad => VCC,
	cin => \count1Hz[0]~28\,
	combout => \count1Hz[1]~29_combout\,
	cout => \count1Hz[1]~30\);

-- Location: FF_X81_Y2_N9
\count1Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[1]~29_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(1));

-- Location: LCCOMB_X81_Y2_N14
\count1Hz[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[4]~35_combout\ = (count1Hz(4) & (\count1Hz[3]~34\ $ (GND))) # (!count1Hz(4) & (!\count1Hz[3]~34\ & VCC))
-- \count1Hz[4]~36\ = CARRY((count1Hz(4) & !\count1Hz[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(4),
	datad => VCC,
	cin => \count1Hz[3]~34\,
	combout => \count1Hz[4]~35_combout\,
	cout => \count1Hz[4]~36\);

-- Location: FF_X81_Y2_N15
\count1Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[4]~35_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(4));

-- Location: LCCOMB_X81_Y2_N16
\count1Hz[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[5]~37_combout\ = (count1Hz(5) & (!\count1Hz[4]~36\)) # (!count1Hz(5) & ((\count1Hz[4]~36\) # (GND)))
-- \count1Hz[5]~38\ = CARRY((!\count1Hz[4]~36\) # (!count1Hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(5),
	datad => VCC,
	cin => \count1Hz[4]~36\,
	combout => \count1Hz[5]~37_combout\,
	cout => \count1Hz[5]~38\);

-- Location: FF_X81_Y2_N17
\count1Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[5]~37_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(5));

-- Location: LCCOMB_X81_Y2_N18
\count1Hz[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[6]~39_combout\ = (count1Hz(6) & (\count1Hz[5]~38\ $ (GND))) # (!count1Hz(6) & (!\count1Hz[5]~38\ & VCC))
-- \count1Hz[6]~40\ = CARRY((count1Hz(6) & !\count1Hz[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(6),
	datad => VCC,
	cin => \count1Hz[5]~38\,
	combout => \count1Hz[6]~39_combout\,
	cout => \count1Hz[6]~40\);

-- Location: FF_X81_Y2_N19
\count1Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[6]~39_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(6));

-- Location: LCCOMB_X81_Y2_N20
\count1Hz[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[7]~41_combout\ = (count1Hz(7) & (!\count1Hz[6]~40\)) # (!count1Hz(7) & ((\count1Hz[6]~40\) # (GND)))
-- \count1Hz[7]~42\ = CARRY((!\count1Hz[6]~40\) # (!count1Hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(7),
	datad => VCC,
	cin => \count1Hz[6]~40\,
	combout => \count1Hz[7]~41_combout\,
	cout => \count1Hz[7]~42\);

-- Location: FF_X81_Y2_N21
\count1Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[7]~41_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(7));

-- Location: LCCOMB_X81_Y2_N22
\count1Hz[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[8]~43_combout\ = (count1Hz(8) & (\count1Hz[7]~42\ $ (GND))) # (!count1Hz(8) & (!\count1Hz[7]~42\ & VCC))
-- \count1Hz[8]~44\ = CARRY((count1Hz(8) & !\count1Hz[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(8),
	datad => VCC,
	cin => \count1Hz[7]~42\,
	combout => \count1Hz[8]~43_combout\,
	cout => \count1Hz[8]~44\);

-- Location: FF_X81_Y2_N23
\count1Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[8]~43_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(8));

-- Location: LCCOMB_X81_Y2_N24
\count1Hz[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[9]~45_combout\ = (count1Hz(9) & (!\count1Hz[8]~44\)) # (!count1Hz(9) & ((\count1Hz[8]~44\) # (GND)))
-- \count1Hz[9]~46\ = CARRY((!\count1Hz[8]~44\) # (!count1Hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(9),
	datad => VCC,
	cin => \count1Hz[8]~44\,
	combout => \count1Hz[9]~45_combout\,
	cout => \count1Hz[9]~46\);

-- Location: FF_X81_Y2_N25
\count1Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[9]~45_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(9));

-- Location: LCCOMB_X81_Y2_N26
\count1Hz[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[10]~47_combout\ = (count1Hz(10) & (\count1Hz[9]~46\ $ (GND))) # (!count1Hz(10) & (!\count1Hz[9]~46\ & VCC))
-- \count1Hz[10]~48\ = CARRY((count1Hz(10) & !\count1Hz[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(10),
	datad => VCC,
	cin => \count1Hz[9]~46\,
	combout => \count1Hz[10]~47_combout\,
	cout => \count1Hz[10]~48\);

-- Location: LCCOMB_X81_Y2_N28
\count1Hz[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[11]~49_combout\ = (count1Hz(11) & (!\count1Hz[10]~48\)) # (!count1Hz(11) & ((\count1Hz[10]~48\) # (GND)))
-- \count1Hz[11]~50\ = CARRY((!\count1Hz[10]~48\) # (!count1Hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(11),
	datad => VCC,
	cin => \count1Hz[10]~48\,
	combout => \count1Hz[11]~49_combout\,
	cout => \count1Hz[11]~50\);

-- Location: FF_X81_Y2_N29
\count1Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[11]~49_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(11));

-- Location: LCCOMB_X81_Y2_N30
\count1Hz[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[12]~51_combout\ = (count1Hz(12) & (\count1Hz[11]~50\ $ (GND))) # (!count1Hz(12) & (!\count1Hz[11]~50\ & VCC))
-- \count1Hz[12]~52\ = CARRY((count1Hz(12) & !\count1Hz[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(12),
	datad => VCC,
	cin => \count1Hz[11]~50\,
	combout => \count1Hz[12]~51_combout\,
	cout => \count1Hz[12]~52\);

-- Location: LCCOMB_X81_Y1_N0
\count1Hz[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[13]~53_combout\ = (count1Hz(13) & (!\count1Hz[12]~52\)) # (!count1Hz(13) & ((\count1Hz[12]~52\) # (GND)))
-- \count1Hz[13]~54\ = CARRY((!\count1Hz[12]~52\) # (!count1Hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(13),
	datad => VCC,
	cin => \count1Hz[12]~52\,
	combout => \count1Hz[13]~53_combout\,
	cout => \count1Hz[13]~54\);

-- Location: FF_X81_Y1_N1
\count1Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[13]~53_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(13));

-- Location: LCCOMB_X81_Y1_N2
\count1Hz[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[14]~55_combout\ = (count1Hz(14) & (\count1Hz[13]~54\ $ (GND))) # (!count1Hz(14) & (!\count1Hz[13]~54\ & VCC))
-- \count1Hz[14]~56\ = CARRY((count1Hz(14) & !\count1Hz[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(14),
	datad => VCC,
	cin => \count1Hz[13]~54\,
	combout => \count1Hz[14]~55_combout\,
	cout => \count1Hz[14]~56\);

-- Location: LCCOMB_X81_Y1_N4
\count1Hz[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[15]~57_combout\ = (count1Hz(15) & (!\count1Hz[14]~56\)) # (!count1Hz(15) & ((\count1Hz[14]~56\) # (GND)))
-- \count1Hz[15]~58\ = CARRY((!\count1Hz[14]~56\) # (!count1Hz(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(15),
	datad => VCC,
	cin => \count1Hz[14]~56\,
	combout => \count1Hz[15]~57_combout\,
	cout => \count1Hz[15]~58\);

-- Location: FF_X81_Y1_N5
\count1Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[15]~57_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(15));

-- Location: LCCOMB_X81_Y1_N6
\count1Hz[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[16]~59_combout\ = (count1Hz(16) & (\count1Hz[15]~58\ $ (GND))) # (!count1Hz(16) & (!\count1Hz[15]~58\ & VCC))
-- \count1Hz[16]~60\ = CARRY((count1Hz(16) & !\count1Hz[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(16),
	datad => VCC,
	cin => \count1Hz[15]~58\,
	combout => \count1Hz[16]~59_combout\,
	cout => \count1Hz[16]~60\);

-- Location: FF_X81_Y1_N7
\count1Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[16]~59_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(16));

-- Location: LCCOMB_X81_Y1_N8
\count1Hz[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[17]~61_combout\ = (count1Hz(17) & (!\count1Hz[16]~60\)) # (!count1Hz(17) & ((\count1Hz[16]~60\) # (GND)))
-- \count1Hz[17]~62\ = CARRY((!\count1Hz[16]~60\) # (!count1Hz(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(17),
	datad => VCC,
	cin => \count1Hz[16]~60\,
	combout => \count1Hz[17]~61_combout\,
	cout => \count1Hz[17]~62\);

-- Location: FF_X81_Y1_N9
\count1Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[17]~61_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(17));

-- Location: LCCOMB_X81_Y1_N10
\count1Hz[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[18]~63_combout\ = (count1Hz(18) & (\count1Hz[17]~62\ $ (GND))) # (!count1Hz(18) & (!\count1Hz[17]~62\ & VCC))
-- \count1Hz[18]~64\ = CARRY((count1Hz(18) & !\count1Hz[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(18),
	datad => VCC,
	cin => \count1Hz[17]~62\,
	combout => \count1Hz[18]~63_combout\,
	cout => \count1Hz[18]~64\);

-- Location: FF_X81_Y1_N11
\count1Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[18]~63_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(18));

-- Location: LCCOMB_X81_Y1_N12
\count1Hz[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[19]~65_combout\ = (count1Hz(19) & (!\count1Hz[18]~64\)) # (!count1Hz(19) & ((\count1Hz[18]~64\) # (GND)))
-- \count1Hz[19]~66\ = CARRY((!\count1Hz[18]~64\) # (!count1Hz(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(19),
	datad => VCC,
	cin => \count1Hz[18]~64\,
	combout => \count1Hz[19]~65_combout\,
	cout => \count1Hz[19]~66\);

-- Location: FF_X81_Y1_N13
\count1Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[19]~65_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(19));

-- Location: LCCOMB_X81_Y1_N14
\count1Hz[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[20]~67_combout\ = (count1Hz(20) & (\count1Hz[19]~66\ $ (GND))) # (!count1Hz(20) & (!\count1Hz[19]~66\ & VCC))
-- \count1Hz[20]~68\ = CARRY((count1Hz(20) & !\count1Hz[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(20),
	datad => VCC,
	cin => \count1Hz[19]~66\,
	combout => \count1Hz[20]~67_combout\,
	cout => \count1Hz[20]~68\);

-- Location: FF_X81_Y1_N15
\count1Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[20]~67_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(20));

-- Location: LCCOMB_X81_Y1_N16
\count1Hz[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[21]~69_combout\ = (count1Hz(21) & (!\count1Hz[20]~68\)) # (!count1Hz(21) & ((\count1Hz[20]~68\) # (GND)))
-- \count1Hz[21]~70\ = CARRY((!\count1Hz[20]~68\) # (!count1Hz(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(21),
	datad => VCC,
	cin => \count1Hz[20]~68\,
	combout => \count1Hz[21]~69_combout\,
	cout => \count1Hz[21]~70\);

-- Location: LCCOMB_X81_Y1_N18
\count1Hz[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[22]~71_combout\ = (count1Hz(22) & (\count1Hz[21]~70\ $ (GND))) # (!count1Hz(22) & (!\count1Hz[21]~70\ & VCC))
-- \count1Hz[22]~72\ = CARRY((count1Hz(22) & !\count1Hz[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(22),
	datad => VCC,
	cin => \count1Hz[21]~70\,
	combout => \count1Hz[22]~71_combout\,
	cout => \count1Hz[22]~72\);

-- Location: FF_X81_Y1_N19
\count1Hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[22]~71_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(22));

-- Location: LCCOMB_X81_Y1_N20
\count1Hz[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[23]~73_combout\ = (count1Hz(23) & (!\count1Hz[22]~72\)) # (!count1Hz(23) & ((\count1Hz[22]~72\) # (GND)))
-- \count1Hz[23]~74\ = CARRY((!\count1Hz[22]~72\) # (!count1Hz(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(23),
	datad => VCC,
	cin => \count1Hz[22]~72\,
	combout => \count1Hz[23]~73_combout\,
	cout => \count1Hz[23]~74\);

-- Location: FF_X81_Y1_N21
\count1Hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[23]~73_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(23));

-- Location: LCCOMB_X81_Y1_N22
\count1Hz[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[24]~75_combout\ = (count1Hz(24) & (\count1Hz[23]~74\ $ (GND))) # (!count1Hz(24) & (!\count1Hz[23]~74\ & VCC))
-- \count1Hz[24]~76\ = CARRY((count1Hz(24) & !\count1Hz[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(24),
	datad => VCC,
	cin => \count1Hz[23]~74\,
	combout => \count1Hz[24]~75_combout\,
	cout => \count1Hz[24]~76\);

-- Location: LCCOMB_X81_Y1_N24
\count1Hz[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[25]~77_combout\ = (count1Hz(25) & (!\count1Hz[24]~76\)) # (!count1Hz(25) & ((\count1Hz[24]~76\) # (GND)))
-- \count1Hz[25]~78\ = CARRY((!\count1Hz[24]~76\) # (!count1Hz(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(25),
	datad => VCC,
	cin => \count1Hz[24]~76\,
	combout => \count1Hz[25]~77_combout\,
	cout => \count1Hz[25]~78\);

-- Location: FF_X81_Y1_N25
\count1Hz[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[25]~77_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(25));

-- Location: LCCOMB_X81_Y1_N26
\count1Hz[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[26]~79_combout\ = count1Hz(26) $ (!\count1Hz[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(26),
	cin => \count1Hz[25]~78\,
	combout => \count1Hz[26]~79_combout\);

-- Location: FF_X81_Y1_N27
\count1Hz[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[26]~79_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(26));

-- Location: FF_X81_Y1_N23
\count1Hz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[24]~75_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(24));

-- Location: LCCOMB_X82_Y2_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count1Hz(25) & (!count1Hz(22) & (!count1Hz(24) & !count1Hz(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(25),
	datab => count1Hz(22),
	datac => count1Hz(24),
	datad => count1Hz(23),
	combout => \LessThan0~0_combout\);

-- Location: FF_X81_Y1_N3
\count1Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[14]~55_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(14));

-- Location: LCCOMB_X81_Y1_N28
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count1Hz(16) & (!count1Hz(14) & (!count1Hz(15) & !count1Hz(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(16),
	datab => count1Hz(14),
	datac => count1Hz(15),
	datad => count1Hz(13),
	combout => \LessThan0~1_combout\);

-- Location: FF_X81_Y2_N31
\count1Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[12]~51_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(12));

-- Location: FF_X81_Y2_N27
\count1Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[10]~47_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(10));

-- Location: LCCOMB_X81_Y2_N0
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!count1Hz(9) & ((!count1Hz(7)) # (!count1Hz(8))))) # (!count1Hz(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(8),
	datab => count1Hz(7),
	datac => count1Hz(10),
	datad => count1Hz(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y2_N24
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count1Hz(12) & (!\LessThan0~2_combout\ & count1Hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(12),
	datac => \LessThan0~2_combout\,
	datad => count1Hz(11),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y2_N18
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!count1Hz(20) & (!count1Hz(17) & (\LessThan0~1_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(20),
	datab => count1Hz(17),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y2_N16
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (count1Hz(26) & (((!\LessThan0~5_combout\ & !\LessThan0~4_combout\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => count1Hz(26),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X80_Y2_N20
\displays[0]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[0]~118_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\Mux54~0_combout\)) # (!\LessThan0~6_combout\ & ((\displays[0]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \clr~input_o\,
	datac => \displays[0]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[0]~118_combout\);

-- Location: FF_X80_Y2_N21
\displays[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[0]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N15
\fl_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(6),
	o => \fl_data[6]~input_o\);

-- Location: FF_X81_Y1_N17
\count1Hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[21]~69_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(21));

-- Location: LCCOMB_X81_Y1_N30
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!count1Hz(20) & ((!count1Hz(18)) # (!count1Hz(19))))) # (!count1Hz(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(19),
	datab => count1Hz(20),
	datac => count1Hz(18),
	datad => count1Hz(21),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y2_N14
\temp_num2_3_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2_3_~0_combout\ = ((\LessThan0~0_combout\ & \LessThan0~5_combout\)) # (!\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~5_combout\,
	combout => \temp_num2_3_~0_combout\);

-- Location: LCCOMB_X82_Y2_N28
\temp_num2_3_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2_3_~1_combout\ = (count1Hz(26) & (!\temp_num2_3_~0_combout\ & ((!\LessThan0~4_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => count1Hz(26),
	datac => \temp_num2_3_~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \temp_num2_3_~1_combout\);

-- Location: FF_X84_Y2_N5
\opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fl_data[6]~input_o\,
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(0));

-- Location: LCCOMB_X84_Y2_N24
\temp_num2_1_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2_1_~0_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (num_2(1))) # (!\LessThan0~6_combout\ & ((\temp_num2_1_~q\))))) # (!\clr~input_o\ & (((\temp_num2_1_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_2(1),
	datab => \clr~input_o\,
	datac => \temp_num2_1_~q\,
	datad => \LessThan0~6_combout\,
	combout => \temp_num2_1_~0_combout\);

-- Location: FF_X84_Y2_N25
\temp_num2_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num2_1_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num2_1_~q\);

-- Location: LCCOMB_X84_Y2_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = opcode(0) $ (\temp_num2_1_~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(0),
	datad => \temp_num2_1_~q\,
	combout => \Add1~2_combout\);

-- Location: IOIBUF_X20_Y0_N22
\fl_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(0),
	o => \fl_data[0]~input_o\);

-- Location: LCCOMB_X80_Y2_N16
\num_1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_1[0]~feeder_combout\ = \fl_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[0]~input_o\,
	combout => \num_1[0]~feeder_combout\);

-- Location: FF_X80_Y2_N17
\num_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \num_1[0]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_1(0));

-- Location: LCCOMB_X83_Y2_N4
\temp_num1_0_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num1_0_~0_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & ((num_1(0)))) # (!\clr~input_o\ & (\temp_num1_0_~q\)))) # (!\LessThan0~6_combout\ & (((\temp_num1_0_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clr~input_o\,
	datac => \temp_num1_0_~q\,
	datad => num_1(0),
	combout => \temp_num1_0_~0_combout\);

-- Location: FF_X83_Y2_N5
\temp_num1_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num1_0_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num1_0_~q\);

-- Location: LCCOMB_X83_Y2_N14
\result[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[0]~5_cout\ = CARRY(opcode(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datad => VCC,
	cout => \result[0]~5_cout\);

-- Location: LCCOMB_X83_Y2_N16
\result[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[0]~6_combout\ = (\Add1~1_combout\ & ((\temp_num1_0_~q\ & (\result[0]~5_cout\ & VCC)) # (!\temp_num1_0_~q\ & (!\result[0]~5_cout\)))) # (!\Add1~1_combout\ & ((\temp_num1_0_~q\ & (!\result[0]~5_cout\)) # (!\temp_num1_0_~q\ & ((\result[0]~5_cout\) # 
-- (GND)))))
-- \result[0]~7\ = CARRY((\Add1~1_combout\ & (!\temp_num1_0_~q\ & !\result[0]~5_cout\)) # (!\Add1~1_combout\ & ((!\result[0]~5_cout\) # (!\temp_num1_0_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \temp_num1_0_~q\,
	datad => VCC,
	cin => \result[0]~5_cout\,
	combout => \result[0]~6_combout\,
	cout => \result[0]~7\);

-- Location: LCCOMB_X83_Y2_N18
\result[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[1]~8_combout\ = ((\temp_num1_1_~q\ $ (\Add1~2_combout\ $ (!\result[0]~7\)))) # (GND)
-- \result[1]~9\ = CARRY((\temp_num1_1_~q\ & ((\Add1~2_combout\) # (!\result[0]~7\))) # (!\temp_num1_1_~q\ & (\Add1~2_combout\ & !\result[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_num1_1_~q\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \result[0]~7\,
	combout => \result[1]~8_combout\,
	cout => \result[1]~9\);

-- Location: IOIBUF_X29_Y0_N15
\fl_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(1),
	o => \fl_data[1]~input_o\);

-- Location: LCCOMB_X80_Y2_N22
\num_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_1[1]~feeder_combout\ = \fl_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[1]~input_o\,
	combout => \num_1[1]~feeder_combout\);

-- Location: FF_X80_Y2_N23
\num_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \num_1[1]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_1(1));

-- Location: LCCOMB_X84_Y2_N30
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (num_2(1) & ((opcode(0)) # (num_1(1)))) # (!num_2(1) & (opcode(0) & num_1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_2(1),
	datab => opcode(0),
	datac => num_1(1),
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X33_Y0_N1
\fl_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(7),
	o => \fl_data[7]~input_o\);

-- Location: LCCOMB_X81_Y2_N4
\opcode[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \opcode[1]~feeder_combout\ = \fl_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[7]~input_o\,
	combout => \opcode[1]~feeder_combout\);

-- Location: FF_X81_Y2_N5
\opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode[1]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(1));

-- Location: FF_X83_Y2_N19
\result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[1]~8_combout\,
	asdata => \Mux25~0_combout\,
	clrn => \clr~input_o\,
	sload => ALT_INV_opcode(1),
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result(1));

-- Location: IOIBUF_X31_Y0_N8
\fl_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(2),
	o => \fl_data[2]~input_o\);

-- Location: LCCOMB_X80_Y2_N24
\num_1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_1[2]~feeder_combout\ = \fl_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[2]~input_o\,
	combout => \num_1[2]~feeder_combout\);

-- Location: FF_X80_Y2_N25
\num_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \num_1[2]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_1(2));

-- Location: LCCOMB_X83_Y2_N8
\temp_num1_2_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num1_2_~0_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & (num_1(2))) # (!\clr~input_o\ & ((\temp_num1_2_~q\))))) # (!\LessThan0~6_combout\ & (((\temp_num1_2_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => num_1(2),
	datac => \temp_num1_2_~q\,
	datad => \clr~input_o\,
	combout => \temp_num1_2_~0_combout\);

-- Location: FF_X83_Y2_N9
\temp_num1_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num1_2_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_num1_2_~q\);

-- Location: LCCOMB_X83_Y2_N20
\result[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[2]~10_combout\ = (\Add1~3_combout\ & ((\temp_num1_2_~q\ & (\result[1]~9\ & VCC)) # (!\temp_num1_2_~q\ & (!\result[1]~9\)))) # (!\Add1~3_combout\ & ((\temp_num1_2_~q\ & (!\result[1]~9\)) # (!\temp_num1_2_~q\ & ((\result[1]~9\) # (GND)))))
-- \result[2]~11\ = CARRY((\Add1~3_combout\ & (!\temp_num1_2_~q\ & !\result[1]~9\)) # (!\Add1~3_combout\ & ((!\result[1]~9\) # (!\temp_num1_2_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \temp_num1_2_~q\,
	datad => VCC,
	cin => \result[1]~9\,
	combout => \result[2]~10_combout\,
	cout => \result[2]~11\);

-- Location: LCCOMB_X83_Y2_N22
\result[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[3]~12_combout\ = \result[2]~11\ $ (!opcode(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => opcode(0),
	cin => \result[2]~11\,
	combout => \result[3]~12_combout\);

-- Location: LCCOMB_X83_Y3_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X83_Y2_N23
\result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[3]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \clr~input_o\,
	sload => ALT_INV_opcode(1),
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result(3));

-- Location: IOIBUF_X31_Y0_N1
\fl_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(3),
	o => \fl_data[3]~input_o\);

-- Location: FF_X80_Y2_N11
\num_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fl_data[3]~input_o\,
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_2(0));

-- Location: LCCOMB_X84_Y2_N8
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (num_1(0) & ((opcode(0)) # (num_2(0)))) # (!num_1(0) & (opcode(0) & num_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_1(0),
	datab => opcode(0),
	datad => num_2(0),
	combout => \Mux26~0_combout\);

-- Location: FF_X83_Y2_N17
\result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[0]~6_combout\,
	asdata => \Mux26~0_combout\,
	clrn => \clr~input_o\,
	sload => ALT_INV_opcode(1),
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result(0));

-- Location: LCCOMB_X83_Y2_N6
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (result(1) & ((result(0) & ((result(3)))) # (!result(0) & (result(2))))) # (!result(1) & (result(2) & (result(3) $ (result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(2),
	datab => result(1),
	datac => result(3),
	datad => result(0),
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X83_Y2_N30
\displays[1]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[1]~119_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & ((\Mux53~0_combout\))) # (!\clr~input_o\ & (\displays[1]~reg0_q\)))) # (!\LessThan0~6_combout\ & (((\displays[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clr~input_o\,
	datac => \displays[1]~reg0_q\,
	datad => \Mux53~0_combout\,
	combout => \displays[1]~119_combout\);

-- Location: FF_X83_Y2_N31
\displays[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[1]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[1]~reg0_q\);

-- Location: LCCOMB_X80_Y2_N18
\displays[2]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[2]~120_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\Mux52~0_combout\)) # (!\LessThan0~6_combout\ & ((\displays[2]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \clr~input_o\,
	datac => \displays[2]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[2]~120_combout\);

-- Location: FF_X80_Y2_N19
\displays[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[2]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[2]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N22
\fl_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(5),
	o => \fl_data[5]~input_o\);

-- Location: LCCOMB_X80_Y2_N30
\num_2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_2[2]~feeder_combout\ = \fl_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[5]~input_o\,
	combout => \num_2[2]~feeder_combout\);

-- Location: FF_X80_Y2_N31
\num_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \num_2[2]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_2(2));

-- Location: LCCOMB_X84_Y2_N0
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (opcode(0) & ((num_1(2)) # (num_2(2)))) # (!opcode(0) & (num_1(2) & num_2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(0),
	datac => num_1(2),
	datad => num_2(2),
	combout => \Mux24~0_combout\);

-- Location: FF_X83_Y2_N21
\result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[2]~10_combout\,
	asdata => \Mux24~0_combout\,
	clrn => \clr~input_o\,
	sload => ALT_INV_opcode(1),
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result(2));

-- Location: LCCOMB_X79_Y2_N12
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (result(1) & ((result(2) & ((result(0)))) # (!result(2) & (result(3) & !result(0))))) # (!result(1) & (!result(3) & (result(2) $ (result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(3),
	datab => result(1),
	datac => result(2),
	datad => result(0),
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X83_Y2_N24
\displays[3]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[3]~121_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & ((\Mux51~0_combout\))) # (!\clr~input_o\ & (\displays[3]~reg0_q\)))) # (!\LessThan0~6_combout\ & (((\displays[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clr~input_o\,
	datac => \displays[3]~reg0_q\,
	datad => \Mux51~0_combout\,
	combout => \displays[3]~121_combout\);

-- Location: FF_X83_Y2_N25
\displays[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[3]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[3]~reg0_q\);

-- Location: LCCOMB_X83_Y2_N28
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (result(1) & (((!result(3) & result(0))))) # (!result(1) & ((result(2) & (!result(3))) # (!result(2) & ((result(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(2),
	datab => result(1),
	datac => result(3),
	datad => result(0),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X83_Y2_N2
\displays[4]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[4]~122_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & (\Mux50~0_combout\)) # (!\clr~input_o\ & ((\displays[4]~reg0_q\))))) # (!\LessThan0~6_combout\ & (((\displays[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \Mux50~0_combout\,
	datac => \displays[4]~reg0_q\,
	datad => \clr~input_o\,
	combout => \displays[4]~122_combout\);

-- Location: FF_X83_Y2_N3
\displays[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[4]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[4]~reg0_q\);

-- Location: LCCOMB_X79_Y2_N6
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (result(1) & (!result(3) & ((result(0)) # (!result(2))))) # (!result(1) & (result(0) & (result(3) $ (!result(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(3),
	datab => result(1),
	datac => result(2),
	datad => result(0),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X83_Y2_N0
\displays[5]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[5]~123_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & ((\Mux49~0_combout\))) # (!\clr~input_o\ & (\displays[5]~reg0_q\)))) # (!\LessThan0~6_combout\ & (((\displays[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clr~input_o\,
	datac => \displays[5]~reg0_q\,
	datad => \Mux49~0_combout\,
	combout => \displays[5]~123_combout\);

-- Location: FF_X83_Y2_N1
\displays[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[5]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[5]~reg0_q\);

-- Location: LCCOMB_X83_Y2_N10
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (result(0) & ((result(3)) # (result(2) $ (result(1))))) # (!result(0) & ((result(1)) # (result(2) $ (result(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(2),
	datab => result(1),
	datac => result(3),
	datad => result(0),
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X83_Y2_N12
\displays[6]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[6]~124_combout\ = (\LessThan0~6_combout\ & ((\clr~input_o\ & ((!\Mux48~0_combout\))) # (!\clr~input_o\ & (\displays[6]~reg0_q\)))) # (!\LessThan0~6_combout\ & (((\displays[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clr~input_o\,
	datac => \displays[6]~reg0_q\,
	datad => \Mux48~0_combout\,
	combout => \displays[6]~124_combout\);

-- Location: FF_X83_Y2_N13
\displays[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[6]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[6]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N28
\displays[14]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[14]~126_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[14]~125_combout\)) # (!\LessThan0~6_combout\ & ((\displays[14]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[14]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[14]~125_combout\,
	datab => \clr~input_o\,
	datac => \displays[14]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[14]~126_combout\);

-- Location: FF_X86_Y2_N29
\displays[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[14]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[14]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N14
\displays[15]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[15]~128_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[15]~127_combout\)) # (!\LessThan0~6_combout\ & ((\displays[15]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[15]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[15]~127_combout\,
	datab => \clr~input_o\,
	datac => \displays[15]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[15]~128_combout\);

-- Location: FF_X86_Y2_N15
\displays[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[15]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[15]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N0
\displays[16]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[16]~130_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[16]~129_combout\)) # (!\LessThan0~6_combout\ & ((\displays[16]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[16]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[16]~129_combout\,
	datab => \clr~input_o\,
	datac => \displays[16]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[16]~130_combout\);

-- Location: FF_X86_Y2_N1
\displays[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[16]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[16]~reg0_q\);

-- Location: LCCOMB_X84_Y2_N26
\temp_num2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2[2]~feeder_combout\ = num_2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => num_2(2),
	combout => \temp_num2[2]~feeder_combout\);

-- Location: FF_X84_Y2_N27
\temp_num2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num2[2]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num2(2));

-- Location: IOIBUF_X35_Y0_N15
\fl_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_data(4),
	o => \fl_data[4]~input_o\);

-- Location: LCCOMB_X80_Y2_N8
\num_2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_2[1]~feeder_combout\ = \fl_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fl_data[4]~input_o\,
	combout => \num_2[1]~feeder_combout\);

-- Location: FF_X80_Y2_N9
\num_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \num_2[1]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_2(1));

-- Location: LCCOMB_X84_Y2_N22
\temp_num2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num2[1]~feeder_combout\ = num_2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => num_2(1),
	combout => \temp_num2[1]~feeder_combout\);

-- Location: FF_X84_Y2_N23
\temp_num2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num2[1]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num2(1));

-- Location: LCCOMB_X85_Y2_N2
\displays[17]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[17]~132_combout\ = temp_num2(2) $ (temp_num2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_num2(2),
	datad => temp_num2(1),
	combout => \displays[17]~132_combout\);

-- Location: FF_X84_Y2_N15
\temp_num2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => num_2(0),
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num2(0));

-- Location: LCCOMB_X85_Y2_N12
\displays[17]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[17]~131_combout\ = (temp_num2(0)) # (!temp_num2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_num2(2),
	datad => temp_num2(0),
	combout => \displays[17]~131_combout\);

-- Location: LCCOMB_X85_Y2_N4
\displays[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[17]~0_combout\ = (\displays[17]~132_combout\ & ((!\displays[17]~131_combout\))) # (!\displays[17]~132_combout\ & (temp_num2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datab => \displays[17]~132_combout\,
	datad => \displays[17]~131_combout\,
	combout => \displays[17]~0_combout\);

-- Location: FF_X85_Y2_N5
\displays[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[17]~0_combout\,
	asdata => \displays[17]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[17]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N2
\displays[18]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[18]~134_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[18]~133_combout\)) # (!\LessThan0~6_combout\ & ((\displays[18]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[18]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[18]~133_combout\,
	datab => \clr~input_o\,
	datac => \displays[18]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[18]~134_combout\);

-- Location: FF_X86_Y2_N3
\displays[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[18]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[18]~reg0_q\);

-- Location: LCCOMB_X85_Y2_N22
\displays[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[19]~1_combout\ = (\displays[17]~132_combout\ & ((!temp_num2(2)))) # (!\displays[17]~132_combout\ & (temp_num2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datab => temp_num2(2),
	datad => \displays[17]~132_combout\,
	combout => \displays[19]~1_combout\);

-- Location: FF_X85_Y2_N23
\displays[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[19]~1_combout\,
	asdata => \displays[19]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[19]~reg0_q\);

-- Location: LCCOMB_X85_Y2_N28
\displays[20]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[20]~135_combout\ = (temp_num2(0) & temp_num2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(0),
	datad => temp_num2(1),
	combout => \displays[20]~135_combout\);

-- Location: LCCOMB_X85_Y2_N8
\displays[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[20]~2_combout\ = (temp_num2(2) & ((\displays[20]~135_combout\))) # (!temp_num2(2) & (!temp_num2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num2(2),
	datab => temp_num2(1),
	datad => \displays[20]~135_combout\,
	combout => \displays[20]~2_combout\);

-- Location: FF_X85_Y2_N9
\displays[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[20]~2_combout\,
	asdata => \displays[20]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[20]~reg0_q\);

-- Location: LCCOMB_X84_Y2_N16
\displays[21]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[21]~137_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[21]~136_combout\)) # (!\LessThan0~6_combout\ & ((\displays[21]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[21]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[21]~136_combout\,
	datab => \clr~input_o\,
	datac => \displays[21]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[21]~137_combout\);

-- Location: FF_X84_Y2_N17
\displays[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[21]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[21]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N8
\displays[22]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[22]~139_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[22]~138_combout\)) # (!\LessThan0~6_combout\ & ((\displays[22]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[22]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[22]~138_combout\,
	datab => \clr~input_o\,
	datac => \displays[22]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[22]~139_combout\);

-- Location: FF_X86_Y2_N9
\displays[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[22]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[22]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N6
\displays[23]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[23]~141_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[23]~140_combout\)) # (!\LessThan0~6_combout\ & ((\displays[23]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[23]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[23]~140_combout\,
	datab => \clr~input_o\,
	datac => \displays[23]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[23]~141_combout\);

-- Location: FF_X86_Y2_N7
\displays[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[23]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[23]~reg0_q\);

-- Location: FF_X84_Y2_N1
\temp_num1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => num_1(2),
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num1(2));

-- Location: LCCOMB_X84_Y2_N12
\temp_num1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_num1[0]~feeder_combout\ = num_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => num_1(0),
	combout => \temp_num1[0]~feeder_combout\);

-- Location: FF_X84_Y2_N13
\temp_num1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_num1[0]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num1(0));

-- Location: LCCOMB_X85_Y2_N18
\displays[24]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[24]~142_combout\ = (temp_num1(0)) # (!temp_num1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_num1(2),
	datad => temp_num1(0),
	combout => \displays[24]~142_combout\);

-- Location: FF_X84_Y2_N11
\temp_num1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => num_1(1),
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_num1(1));

-- Location: LCCOMB_X85_Y2_N0
\displays[24]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[24]~143_combout\ = temp_num1(2) $ (temp_num1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_num1(2),
	datad => temp_num1(1),
	combout => \displays[24]~143_combout\);

-- Location: LCCOMB_X85_Y2_N30
\displays[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[24]~3_combout\ = (\displays[24]~143_combout\ & ((!\displays[24]~142_combout\))) # (!\displays[24]~143_combout\ & (temp_num1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(0),
	datab => \displays[24]~142_combout\,
	datad => \displays[24]~143_combout\,
	combout => \displays[24]~3_combout\);

-- Location: FF_X85_Y2_N31
\displays[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[24]~3_combout\,
	asdata => \displays[24]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[24]~reg0_q\);

-- Location: LCCOMB_X86_Y2_N20
\displays[25]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[25]~145_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (\displays[25]~144_combout\)) # (!\LessThan0~6_combout\ & ((\displays[25]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[25]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displays[25]~144_combout\,
	datab => \clr~input_o\,
	datac => \displays[25]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[25]~145_combout\);

-- Location: FF_X86_Y2_N21
\displays[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[25]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[25]~reg0_q\);

-- Location: LCCOMB_X85_Y2_N24
\displays[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[26]~4_combout\ = (\displays[24]~143_combout\ & (!temp_num1(2))) # (!\displays[24]~143_combout\ & ((temp_num1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(2),
	datab => \displays[24]~143_combout\,
	datad => temp_num1(0),
	combout => \displays[26]~4_combout\);

-- Location: FF_X85_Y2_N25
\displays[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[26]~4_combout\,
	asdata => \displays[26]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[26]~reg0_q\);

-- Location: LCCOMB_X85_Y2_N20
\displays[27]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[27]~146_combout\ = (temp_num1(1) & temp_num1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(1),
	datad => temp_num1(0),
	combout => \displays[27]~146_combout\);

-- Location: LCCOMB_X85_Y2_N14
\displays[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[27]~5_combout\ = (temp_num1(2) & (\displays[27]~146_combout\)) # (!temp_num1(2) & ((!temp_num1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_num1(2),
	datab => \displays[27]~146_combout\,
	datad => temp_num1(1),
	combout => \displays[27]~5_combout\);

-- Location: FF_X85_Y2_N15
\displays[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[27]~5_combout\,
	asdata => \displays[27]~reg0_q\,
	sload => \ALT_INV_temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[27]~reg0_q\);

-- Location: FF_X84_Y2_N21
\temp_op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => opcode(0),
	sload => VCC,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_op(0));

-- Location: LCCOMB_X81_Y2_N2
\temp_op[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_op[1]~feeder_combout\ = opcode(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => opcode(1),
	combout => \temp_op[1]~feeder_combout\);

-- Location: FF_X81_Y2_N3
\temp_op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_op[1]~feeder_combout\,
	ena => \temp_num2_3_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_op(1));

-- Location: LCCOMB_X80_Y2_N12
\displays[28]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[28]~147_combout\ = (\temp_num2_3_~1_combout\ & (temp_op(0) & ((!temp_op(1))))) # (!\temp_num2_3_~1_combout\ & (((\displays[28]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_num2_3_~1_combout\,
	datab => temp_op(0),
	datac => \displays[28]~reg0_q\,
	datad => temp_op(1),
	combout => \displays[28]~147_combout\);

-- Location: FF_X80_Y2_N13
\displays[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[28]~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[28]~reg0_q\);

-- Location: LCCOMB_X80_Y2_N2
\displays[30]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[30]~148_combout\ = (\temp_num2_3_~1_combout\ & (!temp_op(0) & ((temp_op(1))))) # (!\temp_num2_3_~1_combout\ & (((\displays[30]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_num2_3_~1_combout\,
	datab => temp_op(0),
	datac => \displays[30]~reg0_q\,
	datad => temp_op(1),
	combout => \displays[30]~148_combout\);

-- Location: FF_X80_Y2_N3
\displays[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[30]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[30]~reg0_q\);

-- Location: LCCOMB_X80_Y2_N4
\displays[31]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[31]~149_combout\ = (\temp_num2_3_~1_combout\ & (temp_op(0) & ((!temp_op(1))))) # (!\temp_num2_3_~1_combout\ & (((\displays[31]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_num2_3_~1_combout\,
	datab => temp_op(0),
	datac => \displays[31]~reg0_q\,
	datad => temp_op(1),
	combout => \displays[31]~149_combout\);

-- Location: FF_X80_Y2_N5
\displays[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[31]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[31]~reg0_q\);

-- Location: LCCOMB_X84_Y2_N18
\displays[32]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[32]~150_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (temp_op(0))) # (!\LessThan0~6_combout\ & ((\displays[32]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[32]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => temp_op(0),
	datac => \displays[32]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[32]~150_combout\);

-- Location: FF_X84_Y2_N19
\displays[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[32]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[32]~reg0_q\);

-- Location: LCCOMB_X80_Y2_N26
\displays[33]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[33]~151_combout\ = (\temp_num2_3_~1_combout\ & ((temp_op(0)) # ((temp_op(1))))) # (!\temp_num2_3_~1_combout\ & (((\displays[33]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_num2_3_~1_combout\,
	datab => temp_op(0),
	datac => \displays[33]~reg0_q\,
	datad => temp_op(1),
	combout => \displays[33]~151_combout\);

-- Location: FF_X80_Y2_N27
\displays[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[33]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[33]~reg0_q\);

-- Location: LCCOMB_X80_Y2_N28
\displays[34]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \displays[34]~152_combout\ = (\clr~input_o\ & ((\LessThan0~6_combout\ & (!temp_op(1))) # (!\LessThan0~6_combout\ & ((\displays[34]~reg0_q\))))) # (!\clr~input_o\ & (((\displays[34]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_op(1),
	datab => \clr~input_o\,
	datac => \displays[34]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \displays[34]~152_combout\);

-- Location: FF_X80_Y2_N29
\displays[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \displays[34]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displays[34]~reg0_q\);

-- Location: LCCOMB_X82_Y2_N0
\Clock:aux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock:aux[0]~0_combout\ = !\Clock:aux[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock:aux[0]~q\,
	combout => \Clock:aux[0]~0_combout\);

-- Location: FF_X82_Y2_N1
\Clock:aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock:aux[0]~0_combout\,
	clrn => \clr~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock:aux[0]~q\);

-- Location: LCCOMB_X82_Y2_N20
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Clock:aux[2]~q\ $ (((\Clock:aux[1]~q\ & \Clock:aux[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[1]~q\,
	datac => \Clock:aux[2]~q\,
	datad => \Clock:aux[0]~q\,
	combout => \Add3~0_combout\);

-- Location: FF_X82_Y2_N21
\Clock:aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \clr~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock:aux[2]~q\);

-- Location: LCCOMB_X82_Y2_N30
\aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~0_combout\ = (\Clock:aux[1]~q\ & (\Clock:aux[3]~q\ $ (((\Clock:aux[2]~q\ & \Clock:aux[0]~q\))))) # (!\Clock:aux[1]~q\ & (\Clock:aux[3]~q\ & ((\Clock:aux[2]~q\) # (!\Clock:aux[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[1]~q\,
	datab => \Clock:aux[2]~q\,
	datac => \Clock:aux[3]~q\,
	datad => \Clock:aux[0]~q\,
	combout => \aux~0_combout\);

-- Location: FF_X82_Y2_N31
\Clock:aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~0_combout\,
	clrn => \clr~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock:aux[3]~q\);

-- Location: LCCOMB_X82_Y2_N8
\fl_addr[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fl_addr[8]~46_combout\ = (\Clock:aux[3]~q\ & ((\Clock:aux[1]~q\) # (\Clock:aux[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[1]~q\,
	datac => \Clock:aux[3]~q\,
	datad => \Clock:aux[2]~q\,
	combout => \fl_addr[8]~46_combout\);

-- Location: LCCOMB_X82_Y2_N4
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\fl_addr[8]~46_combout\ & (((\fl_addr[1]~reg0_q\)))) # (!\fl_addr[8]~46_combout\ & ((\LessThan0~6_combout\ & (\Clock:aux[0]~q\)) # (!\LessThan0~6_combout\ & ((\fl_addr[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[0]~q\,
	datab => \fl_addr[8]~46_combout\,
	datac => \fl_addr[1]~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X82_Y2_N5
\fl_addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	asdata => \fl_addr[1]~reg0_q\,
	sload => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fl_addr[1]~reg0_q\);

-- Location: LCCOMB_X82_Y2_N22
\aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = (\Clock:aux[1]~q\ & (((!\Clock:aux[0]~q\)))) # (!\Clock:aux[1]~q\ & (\Clock:aux[0]~q\ & ((\Clock:aux[2]~q\) # (!\Clock:aux[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[3]~q\,
	datab => \Clock:aux[2]~q\,
	datac => \Clock:aux[1]~q\,
	datad => \Clock:aux[0]~q\,
	combout => \aux~1_combout\);

-- Location: FF_X82_Y2_N23
\Clock:aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~1_combout\,
	clrn => \clr~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock:aux[1]~q\);

-- Location: LCCOMB_X82_Y2_N2
\fl_addr[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fl_addr[8]~47_combout\ = (\fl_addr[8]~46_combout\) # ((!\LessThan0~6_combout\) # (!\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fl_addr[8]~46_combout\,
	datac => \clr~input_o\,
	datad => \LessThan0~6_combout\,
	combout => \fl_addr[8]~47_combout\);

-- Location: LCCOMB_X82_Y2_N10
\fl_addr[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fl_addr[2]~48_combout\ = (\fl_addr[8]~47_combout\ & (((\fl_addr[2]~reg0_q\)))) # (!\fl_addr[8]~47_combout\ & (!\Clock:aux[3]~q\ & (\Clock:aux[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[3]~q\,
	datab => \Clock:aux[1]~q\,
	datac => \fl_addr[2]~reg0_q\,
	datad => \fl_addr[8]~47_combout\,
	combout => \fl_addr[2]~48_combout\);

-- Location: FF_X82_Y2_N11
\fl_addr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fl_addr[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fl_addr[2]~reg0_q\);

-- Location: LCCOMB_X82_Y2_N12
\fl_addr[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fl_addr[3]~49_combout\ = (\fl_addr[8]~47_combout\ & (((\fl_addr[3]~reg0_q\)))) # (!\fl_addr[8]~47_combout\ & (!\Clock:aux[3]~q\ & (\Clock:aux[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[3]~q\,
	datab => \Clock:aux[2]~q\,
	datac => \fl_addr[3]~reg0_q\,
	datad => \fl_addr[8]~47_combout\,
	combout => \fl_addr[3]~49_combout\);

-- Location: FF_X82_Y2_N13
\fl_addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fl_addr[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fl_addr[3]~reg0_q\);

-- Location: LCCOMB_X82_Y2_N6
\fl_addr[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fl_addr[4]~50_combout\ = (\fl_addr[8]~47_combout\ & ((\fl_addr[4]~reg0_q\))) # (!\fl_addr[8]~47_combout\ & (\Clock:aux[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock:aux[3]~q\,
	datac => \fl_addr[4]~reg0_q\,
	datad => \fl_addr[8]~47_combout\,
	combout => \fl_addr[4]~50_combout\);

-- Location: FF_X82_Y2_N7
\fl_addr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fl_addr[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fl_addr[4]~reg0_q\);

-- Location: IOIBUF_X0_Y36_N22
\fl_rdb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fl_rdb,
	o => \fl_rdb~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\displays[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(7),
	o => \displays[7]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\displays[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(8),
	o => \displays[8]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\displays[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(9),
	o => \displays[9]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\displays[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(10),
	o => \displays[10]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\displays[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(11),
	o => \displays[11]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\displays[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(12),
	o => \displays[12]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\displays[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(13),
	o => \displays[13]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\displays[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(35),
	o => \displays[35]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\displays[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(36),
	o => \displays[36]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\displays[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(37),
	o => \displays[37]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\displays[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(38),
	o => \displays[38]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\displays[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(39),
	o => \displays[39]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\displays[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(40),
	o => \displays[40]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\displays[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(41),
	o => \displays[41]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\displays[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(42),
	o => \displays[42]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\displays[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(43),
	o => \displays[43]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\displays[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(44),
	o => \displays[44]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\displays[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(45),
	o => \displays[45]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\displays[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(46),
	o => \displays[46]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\displays[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(47),
	o => \displays[47]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\displays[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(48),
	o => \displays[48]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\displays[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(49),
	o => \displays[49]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\displays[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(50),
	o => \displays[50]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\displays[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(51),
	o => \displays[51]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\displays[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(52),
	o => \displays[52]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\displays[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(53),
	o => \displays[53]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\displays[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(54),
	o => \displays[54]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\displays[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(55),
	o => \displays[55]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\displays[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(0),
	o => \displays[0]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\displays[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(1),
	o => \displays[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\displays[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(2),
	o => \displays[2]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\displays[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(3),
	o => \displays[3]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\displays[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(4),
	o => \displays[4]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\displays[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(5),
	o => \displays[5]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\displays[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(6),
	o => \displays[6]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\displays[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(14),
	o => \displays[14]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\displays[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(15),
	o => \displays[15]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\displays[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(16),
	o => \displays[16]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\displays[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(17),
	o => \displays[17]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\displays[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(18),
	o => \displays[18]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\displays[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(19),
	o => \displays[19]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\displays[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(20),
	o => \displays[20]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\displays[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(21),
	o => \displays[21]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\displays[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(22),
	o => \displays[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\displays[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(23),
	o => \displays[23]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\displays[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(24),
	o => \displays[24]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\displays[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(25),
	o => \displays[25]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\displays[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(26),
	o => \displays[26]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\displays[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(27),
	o => \displays[27]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\displays[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(28),
	o => \displays[28]~input_o\);

-- Location: IOIBUF_X107_Y0_N8
\displays[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(29),
	o => \displays[29]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\displays[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(30),
	o => \displays[30]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\displays[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(31),
	o => \displays[31]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\displays[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(32),
	o => \displays[32]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\displays[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(33),
	o => \displays[33]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\displays[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => displays(34),
	o => \displays[34]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\fl_addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(0),
	o => \fl_addr[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\fl_addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(1),
	o => \fl_addr[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\fl_addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(2),
	o => \fl_addr[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\fl_addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(3),
	o => \fl_addr[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\fl_addr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(4),
	o => \fl_addr[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\fl_addr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(5),
	o => \fl_addr[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\fl_addr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(6),
	o => \fl_addr[6]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\fl_addr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(7),
	o => \fl_addr[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\fl_addr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(8),
	o => \fl_addr[8]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\fl_addr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(9),
	o => \fl_addr[9]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\fl_addr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(10),
	o => \fl_addr[10]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\fl_addr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(11),
	o => \fl_addr[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\fl_addr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(12),
	o => \fl_addr[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\fl_addr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(13),
	o => \fl_addr[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\fl_addr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(14),
	o => \fl_addr[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\fl_addr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(15),
	o => \fl_addr[15]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\fl_addr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(16),
	o => \fl_addr[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\fl_addr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(17),
	o => \fl_addr[17]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\fl_addr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(18),
	o => \fl_addr[18]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\fl_addr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(19),
	o => \fl_addr[19]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\fl_addr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(20),
	o => \fl_addr[20]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\fl_addr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(21),
	o => \fl_addr[21]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\fl_addr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fl_addr(22),
	o => \fl_addr[22]~input_o\);

ww_fl_chip_en <= \fl_chip_en~output_o\;

ww_fl_chip_out <= \fl_chip_out~output_o\;

ww_fl_rst <= \fl_rst~output_o\;

ww_fl_we <= \fl_we~output_o\;

ww_fl_wp <= \fl_wp~output_o\;

\ww_global.bp.work.parser.temp_num1_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.parser.temp_num1_2__gl_output\ <= \temp_num1_2_~q\;

\ww_global.bp.work.parser.temp_num1_1__gl_output\ <= \temp_num1_1_~q\;

\ww_global.bp.work.parser.temp_num1_0__gl_output\ <= \temp_num1_0_~q\;

\ww_global.bp.work.parser.temp_num2_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.parser.temp_num2_2__gl_output\ <= \temp_num2_2_~q\;

\ww_global.bp.work.parser.temp_num2_1__gl_output\ <= \temp_num2_1_~q\;

\ww_global.bp.work.parser.temp_num2_0__gl_output\ <= \temp_num2_0_~q\;

displays(7) <= \displays[7]~output_o\;

displays(8) <= \displays[8]~output_o\;

displays(9) <= \displays[9]~output_o\;

displays(10) <= \displays[10]~output_o\;

displays(11) <= \displays[11]~output_o\;

displays(12) <= \displays[12]~output_o\;

displays(13) <= \displays[13]~output_o\;

displays(35) <= \displays[35]~output_o\;

displays(36) <= \displays[36]~output_o\;

displays(37) <= \displays[37]~output_o\;

displays(38) <= \displays[38]~output_o\;

displays(39) <= \displays[39]~output_o\;

displays(40) <= \displays[40]~output_o\;

displays(41) <= \displays[41]~output_o\;

displays(42) <= \displays[42]~output_o\;

displays(43) <= \displays[43]~output_o\;

displays(44) <= \displays[44]~output_o\;

displays(45) <= \displays[45]~output_o\;

displays(46) <= \displays[46]~output_o\;

displays(47) <= \displays[47]~output_o\;

displays(48) <= \displays[48]~output_o\;

displays(49) <= \displays[49]~output_o\;

displays(50) <= \displays[50]~output_o\;

displays(51) <= \displays[51]~output_o\;

displays(52) <= \displays[52]~output_o\;

displays(53) <= \displays[53]~output_o\;

displays(54) <= \displays[54]~output_o\;

displays(55) <= \displays[55]~output_o\;

displays(0) <= \displays[0]~output_o\;

displays(1) <= \displays[1]~output_o\;

displays(2) <= \displays[2]~output_o\;

displays(3) <= \displays[3]~output_o\;

displays(4) <= \displays[4]~output_o\;

displays(5) <= \displays[5]~output_o\;

displays(6) <= \displays[6]~output_o\;

displays(14) <= \displays[14]~output_o\;

displays(15) <= \displays[15]~output_o\;

displays(16) <= \displays[16]~output_o\;

displays(17) <= \displays[17]~output_o\;

displays(18) <= \displays[18]~output_o\;

displays(19) <= \displays[19]~output_o\;

displays(20) <= \displays[20]~output_o\;

displays(21) <= \displays[21]~output_o\;

displays(22) <= \displays[22]~output_o\;

displays(23) <= \displays[23]~output_o\;

displays(24) <= \displays[24]~output_o\;

displays(25) <= \displays[25]~output_o\;

displays(26) <= \displays[26]~output_o\;

displays(27) <= \displays[27]~output_o\;

displays(28) <= \displays[28]~output_o\;

displays(29) <= \displays[29]~output_o\;

displays(30) <= \displays[30]~output_o\;

displays(31) <= \displays[31]~output_o\;

displays(32) <= \displays[32]~output_o\;

displays(33) <= \displays[33]~output_o\;

displays(34) <= \displays[34]~output_o\;

fl_addr(0) <= \fl_addr[0]~output_o\;

fl_addr(1) <= \fl_addr[1]~output_o\;

fl_addr(2) <= \fl_addr[2]~output_o\;

fl_addr(3) <= \fl_addr[3]~output_o\;

fl_addr(4) <= \fl_addr[4]~output_o\;

fl_addr(5) <= \fl_addr[5]~output_o\;

fl_addr(6) <= \fl_addr[6]~output_o\;

fl_addr(7) <= \fl_addr[7]~output_o\;

fl_addr(8) <= \fl_addr[8]~output_o\;

fl_addr(9) <= \fl_addr[9]~output_o\;

fl_addr(10) <= \fl_addr[10]~output_o\;

fl_addr(11) <= \fl_addr[11]~output_o\;

fl_addr(12) <= \fl_addr[12]~output_o\;

fl_addr(13) <= \fl_addr[13]~output_o\;

fl_addr(14) <= \fl_addr[14]~output_o\;

fl_addr(15) <= \fl_addr[15]~output_o\;

fl_addr(16) <= \fl_addr[16]~output_o\;

fl_addr(17) <= \fl_addr[17]~output_o\;

fl_addr(18) <= \fl_addr[18]~output_o\;

fl_addr(19) <= \fl_addr[19]~output_o\;

fl_addr(20) <= \fl_addr[20]~output_o\;

fl_addr(21) <= \fl_addr[21]~output_o\;

fl_addr(22) <= \fl_addr[22]~output_o\;

fl_data(0) <= \fl_data[0]~output_o\;

fl_data(1) <= \fl_data[1]~output_o\;

fl_data(2) <= \fl_data[2]~output_o\;

fl_data(3) <= \fl_data[3]~output_o\;

fl_data(4) <= \fl_data[4]~output_o\;

fl_data(5) <= \fl_data[5]~output_o\;

fl_data(6) <= \fl_data[6]~output_o\;

fl_data(7) <= \fl_data[7]~output_o\;
END structure;


