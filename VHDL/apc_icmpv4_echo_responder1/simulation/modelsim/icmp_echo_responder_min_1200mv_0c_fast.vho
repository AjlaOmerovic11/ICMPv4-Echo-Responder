-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/29/2026 16:54:06"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	icmp_echo_responder IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	in_valid : IN std_logic;
	in_sop : IN std_logic;
	in_eop : IN std_logic;
	in_ready : BUFFER std_logic;
	out_data : BUFFER std_logic_vector(7 DOWNTO 0);
	out_valid : BUFFER std_logic;
	out_sop : BUFFER std_logic;
	out_eop : BUFFER std_logic;
	out_ready : IN std_logic
	);
END icmp_echo_responder;

-- Design Ports Information
-- in_ready	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sop	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_eop	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_sop	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_eop	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF icmp_echo_responder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_in_sop : std_logic;
SIGNAL ww_in_eop : std_logic;
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_sop : std_logic;
SIGNAL ww_out_eop : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_ready~output_o\ : std_logic;
SIGNAL \out_data[0]~output_o\ : std_logic;
SIGNAL \out_data[1]~output_o\ : std_logic;
SIGNAL \out_data[2]~output_o\ : std_logic;
SIGNAL \out_data[3]~output_o\ : std_logic;
SIGNAL \out_data[4]~output_o\ : std_logic;
SIGNAL \out_data[5]~output_o\ : std_logic;
SIGNAL \out_data[6]~output_o\ : std_logic;
SIGNAL \out_data[7]~output_o\ : std_logic;
SIGNAL \out_valid~output_o\ : std_logic;
SIGNAL \out_sop~output_o\ : std_logic;
SIGNAL \out_eop~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \in_sop~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \byte_cnt~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \byte_cnt~7_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Selector415~0_combout\ : std_logic;
SIGNAL \rx_frame[3][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][0]~22_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \rx_frame[34][0]~40_combout\ : std_logic;
SIGNAL \rx_frame[3][0]~62_combout\ : std_logic;
SIGNAL \rx_frame[3][3]~q\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \rx_frame[3][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[3][1]~q\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \rx_frame[3][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[3][0]~q\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \rx_frame[3][2]~q\ : std_logic;
SIGNAL \mac_ok~5_combout\ : std_logic;
SIGNAL \rx_frame[2][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[2][0]~65_combout\ : std_logic;
SIGNAL \rx_frame[2][1]~q\ : std_logic;
SIGNAL \rx_frame[2][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[2][3]~q\ : std_logic;
SIGNAL \rx_frame[2][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[2][0]~q\ : std_logic;
SIGNAL \rx_frame[2][2]~q\ : std_logic;
SIGNAL \mac_ok~7_combout\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \rx_frame[2][4]~q\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \rx_frame[2][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[2][7]~q\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \rx_frame[2][6]~q\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \rx_frame[2][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[2][5]~q\ : std_logic;
SIGNAL \mac_ok~8_combout\ : std_logic;
SIGNAL \rx_frame[3][7]~q\ : std_logic;
SIGNAL \rx_frame[3][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[3][4]~q\ : std_logic;
SIGNAL \rx_frame[3][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[3][5]~q\ : std_logic;
SIGNAL \rx_frame[3][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[3][6]~q\ : std_logic;
SIGNAL \mac_ok~6_combout\ : std_logic;
SIGNAL \mac_ok~9_combout\ : std_logic;
SIGNAL \rx_frame[5][0]~54_combout\ : std_logic;
SIGNAL \rx_frame[5][0]~55_combout\ : std_logic;
SIGNAL \rx_frame[5][0]~69_combout\ : std_logic;
SIGNAL \rx_frame[5][0]~q\ : std_logic;
SIGNAL \rx_frame[5][2]~q\ : std_logic;
SIGNAL \rx_frame[5][1]~q\ : std_logic;
SIGNAL \rx_frame[5][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[5][3]~q\ : std_logic;
SIGNAL \mac_ok~0_combout\ : std_logic;
SIGNAL \rx_frame[5][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[5][7]~q\ : std_logic;
SIGNAL \rx_frame[5][5]~q\ : std_logic;
SIGNAL \rx_frame[5][4]~q\ : std_logic;
SIGNAL \rx_frame[5][6]~q\ : std_logic;
SIGNAL \mac_ok~1_combout\ : std_logic;
SIGNAL \rx_frame[4][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[4][0]~56_combout\ : std_logic;
SIGNAL \rx_frame[4][3]~q\ : std_logic;
SIGNAL \rx_frame[4][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[4][1]~q\ : std_logic;
SIGNAL \rx_frame[4][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[4][2]~q\ : std_logic;
SIGNAL \rx_frame[4][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[4][0]~q\ : std_logic;
SIGNAL \mac_ok~2_combout\ : std_logic;
SIGNAL \rx_frame[4][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[4][7]~q\ : std_logic;
SIGNAL \rx_frame[4][4]~q\ : std_logic;
SIGNAL \rx_frame[4][5]~q\ : std_logic;
SIGNAL \rx_frame[4][6]~q\ : std_logic;
SIGNAL \mac_ok~3_combout\ : std_logic;
SIGNAL \mac_ok~4_combout\ : std_logic;
SIGNAL \byte_cnt~2_combout\ : std_logic;
SIGNAL \rx_frame[0][3]~57_combout\ : std_logic;
SIGNAL \rx_frame[0][0]~58_combout\ : std_logic;
SIGNAL \rx_frame[0][5]~q\ : std_logic;
SIGNAL \rx_frame[0][7]~q\ : std_logic;
SIGNAL \rx_frame[0][6]~q\ : std_logic;
SIGNAL \rx_frame[0][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][4]~q\ : std_logic;
SIGNAL \mac_ok~13_combout\ : std_logic;
SIGNAL \rx_frame[0][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][3]~q\ : std_logic;
SIGNAL \rx_frame[0][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][1]~q\ : std_logic;
SIGNAL \rx_frame[0][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][0]~q\ : std_logic;
SIGNAL \rx_frame[0][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[0][2]~q\ : std_logic;
SIGNAL \mac_ok~12_combout\ : std_logic;
SIGNAL \rx_frame[49][0]~21_combout\ : std_logic;
SIGNAL \rx_frame[49][0]~23_combout\ : std_logic;
SIGNAL \rx_frame[1][0]~70_combout\ : std_logic;
SIGNAL \rx_frame[1][6]~q\ : std_logic;
SIGNAL \rx_frame[1][4]~q\ : std_logic;
SIGNAL \rx_frame[1][7]~q\ : std_logic;
SIGNAL \rx_frame[1][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[1][5]~q\ : std_logic;
SIGNAL \mac_ok~11_combout\ : std_logic;
SIGNAL \rx_frame[1][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[1][0]~q\ : std_logic;
SIGNAL \rx_frame[1][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[1][3]~q\ : std_logic;
SIGNAL \rx_frame[1][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[1][1]~q\ : std_logic;
SIGNAL \rx_frame[1][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[1][2]~q\ : std_logic;
SIGNAL \mac_ok~10_combout\ : std_logic;
SIGNAL \mac_ok~14_combout\ : std_logic;
SIGNAL \mac_ok~15_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Selector414~1_combout\ : std_logic;
SIGNAL \Selector414~2_combout\ : std_logic;
SIGNAL \state.IP~q\ : std_logic;
SIGNAL \Selector418~0_combout\ : std_logic;
SIGNAL \rx_frame[30][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[34][0]~17_combout\ : std_logic;
SIGNAL \rx_frame[34][0]~18_combout\ : std_logic;
SIGNAL \rx_frame[27][0]~25_combout\ : std_logic;
SIGNAL \rx_frame[30][0]~77_combout\ : std_logic;
SIGNAL \rx_frame[30][5]~q\ : std_logic;
SIGNAL \rx_frame[30][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[30][4]~q\ : std_logic;
SIGNAL \rx_frame[30][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[30][7]~q\ : std_logic;
SIGNAL \rx_frame[30][6]~q\ : std_logic;
SIGNAL \ip_ok~9_combout\ : std_logic;
SIGNAL \rx_frame[30][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[30][2]~q\ : std_logic;
SIGNAL \rx_frame[30][3]~q\ : std_logic;
SIGNAL \rx_frame[30][0]~q\ : std_logic;
SIGNAL \rx_frame[30][1]~q\ : std_logic;
SIGNAL \ip_ok~8_combout\ : std_logic;
SIGNAL \rx_frame[32][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][0]~30_combout\ : std_logic;
SIGNAL \rx_frame[36][0]~31_combout\ : std_logic;
SIGNAL \rx_frame[32][0]~32_combout\ : std_logic;
SIGNAL \rx_frame[32][5]~q\ : std_logic;
SIGNAL \rx_frame[32][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[32][7]~q\ : std_logic;
SIGNAL \rx_frame[32][4]~q\ : std_logic;
SIGNAL \rx_frame[32][6]~q\ : std_logic;
SIGNAL \ip_ok~3_combout\ : std_logic;
SIGNAL \rx_frame[32][0]~q\ : std_logic;
SIGNAL \rx_frame[32][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[32][3]~q\ : std_logic;
SIGNAL \rx_frame[32][1]~q\ : std_logic;
SIGNAL \rx_frame[32][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[32][2]~q\ : std_logic;
SIGNAL \ip_ok~2_combout\ : std_logic;
SIGNAL \rx_frame[33][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[33][0]~24_combout\ : std_logic;
SIGNAL \rx_frame[33][2]~q\ : std_logic;
SIGNAL \rx_frame[33][0]~q\ : std_logic;
SIGNAL \rx_frame[33][1]~q\ : std_logic;
SIGNAL \rx_frame[33][3]~q\ : std_logic;
SIGNAL \ip_ok~0_combout\ : std_logic;
SIGNAL \rx_frame[33][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[33][4]~q\ : std_logic;
SIGNAL \rx_frame[33][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[33][6]~q\ : std_logic;
SIGNAL \rx_frame[33][7]~q\ : std_logic;
SIGNAL \rx_frame[33][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[33][5]~q\ : std_logic;
SIGNAL \ip_ok~1_combout\ : std_logic;
SIGNAL \ip_ok~4_combout\ : std_logic;
SIGNAL \rx_frame[31][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[31][0]~33_combout\ : std_logic;
SIGNAL \rx_frame[31][2]~q\ : std_logic;
SIGNAL \rx_frame[31][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[31][3]~q\ : std_logic;
SIGNAL \ip_ok~5_combout\ : std_logic;
SIGNAL \rx_frame[31][1]~q\ : std_logic;
SIGNAL \rx_frame[31][0]~q\ : std_logic;
SIGNAL \rx_frame[31][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[31][4]~q\ : std_logic;
SIGNAL \rx_frame[31][6]~q\ : std_logic;
SIGNAL \rx_frame[31][5]~q\ : std_logic;
SIGNAL \rx_frame[31][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[31][7]~q\ : std_logic;
SIGNAL \ip_ok~6_combout\ : std_logic;
SIGNAL \ip_ok~7_combout\ : std_logic;
SIGNAL \ip_ok~combout\ : std_logic;
SIGNAL \Selector415~1_combout\ : std_logic;
SIGNAL \state.ICMP~q\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Selector413~0_combout\ : std_logic;
SIGNAL \state.ETH~q\ : std_logic;
SIGNAL \byte_cnt[5]~1_combout\ : std_logic;
SIGNAL \byte_cnt[5]~4_combout\ : std_logic;
SIGNAL \byte_cnt~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \byte_cnt~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \byte_cnt~5_combout\ : std_logic;
SIGNAL \rx_frame[34][0]~74_combout\ : std_logic;
SIGNAL \rx_frame[34][3]~q\ : std_logic;
SIGNAL \rx_frame[34][0]~q\ : std_logic;
SIGNAL \rx_frame[34][2]~q\ : std_logic;
SIGNAL \rx_frame[34][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[34][1]~q\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \rx_frame[34][5]~q\ : std_logic;
SIGNAL \rx_frame[34][4]~q\ : std_logic;
SIGNAL \rx_frame[34][6]~q\ : std_logic;
SIGNAL \rx_frame[34][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[34][7]~q\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \in_eop~input_o\ : std_logic;
SIGNAL \tx_cnt~23_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \frame_done~q\ : std_logic;
SIGNAL \Selector416~1_combout\ : std_logic;
SIGNAL \Selector416~0_combout\ : std_logic;
SIGNAL \Selector416~2_combout\ : std_logic;
SIGNAL \state.PAYLOAD~q\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \tx_cnt[0]~6_combout\ : std_logic;
SIGNAL \tx_cnt[2]~12_combout\ : std_logic;
SIGNAL \tx_cnt[2]~13_combout\ : std_logic;
SIGNAL \tx_cnt[4]~20\ : std_logic;
SIGNAL \tx_cnt[5]~21_combout\ : std_logic;
SIGNAL \tx_cnt[2]~14_combout\ : std_logic;
SIGNAL \out_data~15_combout\ : std_logic;
SIGNAL \tx_cnt[2]~15_combout\ : std_logic;
SIGNAL \tx_cnt[2]~16_combout\ : std_logic;
SIGNAL \tx_cnt[0]~7\ : std_logic;
SIGNAL \tx_cnt[1]~8_combout\ : std_logic;
SIGNAL \tx_cnt[1]~9\ : std_logic;
SIGNAL \tx_cnt[2]~10_combout\ : std_logic;
SIGNAL \tx_cnt[2]~11\ : std_logic;
SIGNAL \tx_cnt[3]~17_combout\ : std_logic;
SIGNAL \tx_cnt[3]~18\ : std_logic;
SIGNAL \tx_cnt[4]~19_combout\ : std_logic;
SIGNAL \out_sop~0_combout\ : std_logic;
SIGNAL \out_eop~0_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \byte_cnt~0_combout\ : std_logic;
SIGNAL \Selector414~0_combout\ : std_logic;
SIGNAL \Selector418~1_combout\ : std_logic;
SIGNAL \Selector418~2_combout\ : std_logic;
SIGNAL \Selector418~3_combout\ : std_logic;
SIGNAL \state.IGNORE~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.SEND~q\ : std_logic;
SIGNAL \out_data~11_combout\ : std_logic;
SIGNAL \rx_frame[47][0]~46_combout\ : std_logic;
SIGNAL \rx_frame[46][0]~81_combout\ : std_logic;
SIGNAL \rx_frame[46][0]~q\ : std_logic;
SIGNAL \tx_frame[0][0]~0_combout\ : std_logic;
SIGNAL \tx_frame[46][0]~q\ : std_logic;
SIGNAL \rx_frame[9][0]~38_combout\ : std_logic;
SIGNAL \rx_frame[45][0]~51_combout\ : std_logic;
SIGNAL \rx_frame[45][0]~q\ : std_logic;
SIGNAL \tx_frame[45][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][0]~q\ : std_logic;
SIGNAL \rx_frame[44][0]~52_combout\ : std_logic;
SIGNAL \rx_frame[44][0]~q\ : std_logic;
SIGNAL \tx_frame[44][0]~q\ : std_logic;
SIGNAL \out_data~23_combout\ : std_logic;
SIGNAL \rx_frame[47][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[47][0]~53_combout\ : std_logic;
SIGNAL \rx_frame[47][0]~q\ : std_logic;
SIGNAL \tx_frame[47][0]~q\ : std_logic;
SIGNAL \out_data~24_combout\ : std_logic;
SIGNAL \rx_frame[48][0]~37_combout\ : std_logic;
SIGNAL \rx_frame[48][0]~q\ : std_logic;
SIGNAL \tx_frame[48][0]~q\ : std_logic;
SIGNAL \rx_frame[28][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[29][0]~19_combout\ : std_logic;
SIGNAL \rx_frame[28][0]~80_combout\ : std_logic;
SIGNAL \rx_frame[28][0]~q\ : std_logic;
SIGNAL \tx_frame[32][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][0]~q\ : std_logic;
SIGNAL \rx_frame[29][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[29][0]~44_combout\ : std_logic;
SIGNAL \rx_frame[29][0]~q\ : std_logic;
SIGNAL \tx_frame[33][0]~q\ : std_logic;
SIGNAL \out_data~19_combout\ : std_logic;
SIGNAL \out_data~18_combout\ : std_logic;
SIGNAL \rx_frame[35][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][0]~45_combout\ : std_logic;
SIGNAL \rx_frame[35][0]~q\ : std_logic;
SIGNAL \tx_frame[35][0]~q\ : std_logic;
SIGNAL \rx_frame[37][0]~48_combout\ : std_logic;
SIGNAL \rx_frame[37][0]~q\ : std_logic;
SIGNAL \tx_frame[37][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][0]~q\ : std_logic;
SIGNAL \rx_frame[36][0]~49_combout\ : std_logic;
SIGNAL \rx_frame[36][0]~q\ : std_logic;
SIGNAL \tx_frame[36][0]~q\ : std_logic;
SIGNAL \out_data~16_combout\ : std_logic;
SIGNAL \rx_frame[39][0]~50_combout\ : std_logic;
SIGNAL \rx_frame[39][0]~q\ : std_logic;
SIGNAL \tx_frame[39][0]~q\ : std_logic;
SIGNAL \rx_frame[38][0]~47_combout\ : std_logic;
SIGNAL \rx_frame[38][0]~q\ : std_logic;
SIGNAL \tx_frame[38][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][0]~q\ : std_logic;
SIGNAL \out_data~17_combout\ : std_logic;
SIGNAL \out_data~20_combout\ : std_logic;
SIGNAL \out_data~21_combout\ : std_logic;
SIGNAL \out_data~14_combout\ : std_logic;
SIGNAL \rx_frame[41][0]~39_combout\ : std_logic;
SIGNAL \rx_frame[41][0]~q\ : std_logic;
SIGNAL \tx_frame[41][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][0]~q\ : std_logic;
SIGNAL \rx_frame[43][0]~43_combout\ : std_logic;
SIGNAL \rx_frame[43][0]~q\ : std_logic;
SIGNAL \tx_frame[43][0]~q\ : std_logic;
SIGNAL \rx_frame[40][0]~42_combout\ : std_logic;
SIGNAL \rx_frame[40][0]~q\ : std_logic;
SIGNAL \tx_frame[40][0]~q\ : std_logic;
SIGNAL \rx_frame[42][0]~41_combout\ : std_logic;
SIGNAL \rx_frame[42][0]~q\ : std_logic;
SIGNAL \tx_frame[42][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][0]~q\ : std_logic;
SIGNAL \out_data~12_combout\ : std_logic;
SIGNAL \out_data~13_combout\ : std_logic;
SIGNAL \out_data~22_combout\ : std_logic;
SIGNAL \out_data~25_combout\ : std_logic;
SIGNAL \out_data~10_combout\ : std_logic;
SIGNAL \tx_frame[7][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[7][0]~q\ : std_logic;
SIGNAL \rx_frame[9][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[9][0]~71_combout\ : std_logic;
SIGNAL \rx_frame[9][0]~q\ : std_logic;
SIGNAL \tx_frame[3][0]~q\ : std_logic;
SIGNAL \out_data~33_combout\ : std_logic;
SIGNAL \rx_frame[15][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[15][0]~60_combout\ : std_logic;
SIGNAL \rx_frame[15][0]~72_combout\ : std_logic;
SIGNAL \rx_frame[15][0]~q\ : std_logic;
SIGNAL \tx_frame[15][0]~q\ : std_logic;
SIGNAL \tx_frame[11][0]~q\ : std_logic;
SIGNAL \out_data~34_combout\ : std_logic;
SIGNAL \tx_frame[10][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[10][0]~q\ : std_logic;
SIGNAL \tx_frame[6][0]~q\ : std_logic;
SIGNAL \rx_frame[8][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[8][0]~59_combout\ : std_logic;
SIGNAL \rx_frame[8][0]~q\ : std_logic;
SIGNAL \tx_frame[2][0]~q\ : std_logic;
SIGNAL \out_data~26_combout\ : std_logic;
SIGNAL \rx_frame[14][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[14][0]~82_combout\ : std_logic;
SIGNAL \rx_frame[14][0]~q\ : std_logic;
SIGNAL \tx_frame[14][0]~q\ : std_logic;
SIGNAL \out_data~27_combout\ : std_logic;
SIGNAL \tx_frame[8][0]~q\ : std_logic;
SIGNAL \rx_frame[12][0]~68_combout\ : std_logic;
SIGNAL \rx_frame[12][0]~q\ : std_logic;
SIGNAL \tx_frame[12][0]~q\ : std_logic;
SIGNAL \rx_frame[10][0]~66_combout\ : std_logic;
SIGNAL \rx_frame[10][0]~q\ : std_logic;
SIGNAL \tx_frame[4][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[4][0]~q\ : std_logic;
SIGNAL \rx_frame[6][0]~67_combout\ : std_logic;
SIGNAL \rx_frame[6][0]~q\ : std_logic;
SIGNAL \tx_frame[0][0]~q\ : std_logic;
SIGNAL \out_data~30_combout\ : std_logic;
SIGNAL \out_data~31_combout\ : std_logic;
SIGNAL \rx_frame[11][0]~61_combout\ : std_logic;
SIGNAL \rx_frame[11][0]~q\ : std_logic;
SIGNAL \tx_frame[5][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[5][0]~q\ : std_logic;
SIGNAL \rx_frame[13][0]~64_combout\ : std_logic;
SIGNAL \rx_frame[13][0]~q\ : std_logic;
SIGNAL \tx_frame[13][0]~q\ : std_logic;
SIGNAL \rx_frame[7][0]~63_combout\ : std_logic;
SIGNAL \rx_frame[7][0]~q\ : std_logic;
SIGNAL \tx_frame[1][0]~q\ : std_logic;
SIGNAL \tx_frame[9][0]~q\ : std_logic;
SIGNAL \out_data~28_combout\ : std_logic;
SIGNAL \out_data~29_combout\ : std_logic;
SIGNAL \out_data~32_combout\ : std_logic;
SIGNAL \out_data~35_combout\ : std_logic;
SIGNAL \out_data~36_combout\ : std_logic;
SIGNAL \rx_frame[49][0]~73_combout\ : std_logic;
SIGNAL \rx_frame[49][0]~q\ : std_logic;
SIGNAL \tx_frame[49][0]~q\ : std_logic;
SIGNAL \rx_frame[17][0]~76_combout\ : std_logic;
SIGNAL \rx_frame[17][0]~q\ : std_logic;
SIGNAL \tx_frame[17][0]~q\ : std_logic;
SIGNAL \rx_frame[25][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[25][0]~75_combout\ : std_logic;
SIGNAL \rx_frame[25][0]~q\ : std_logic;
SIGNAL \tx_frame[25][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][0]~q\ : std_logic;
SIGNAL \out_data~0_combout\ : std_logic;
SIGNAL \tx_frame[29][0]~q\ : std_logic;
SIGNAL \rx_frame[21][0]~20_combout\ : std_logic;
SIGNAL \rx_frame[21][0]~q\ : std_logic;
SIGNAL \tx_frame[21][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[21][0]~q\ : std_logic;
SIGNAL \out_data~1_combout\ : std_logic;
SIGNAL \tx_frame[27][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][0]~q\ : std_logic;
SIGNAL \rx_frame[27][0]~36_combout\ : std_logic;
SIGNAL \rx_frame[27][0]~q\ : std_logic;
SIGNAL \tx_frame[31][0]~q\ : std_logic;
SIGNAL \rx_frame[23][0]~34_combout\ : std_logic;
SIGNAL \rx_frame[23][0]~q\ : std_logic;
SIGNAL \tx_frame[23][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[23][0]~q\ : std_logic;
SIGNAL \rx_frame[19][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[19][0]~35_combout\ : std_logic;
SIGNAL \rx_frame[19][0]~q\ : std_logic;
SIGNAL \tx_frame[19][0]~q\ : std_logic;
SIGNAL \out_data~7_combout\ : std_logic;
SIGNAL \out_data~8_combout\ : std_logic;
SIGNAL \rx_frame[24][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[24][0]~78_combout\ : std_logic;
SIGNAL \rx_frame[24][0]~q\ : std_logic;
SIGNAL \tx_frame[24][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[24][0]~q\ : std_logic;
SIGNAL \rx_frame[16][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[16][0]~79_combout\ : std_logic;
SIGNAL \rx_frame[16][0]~q\ : std_logic;
SIGNAL \tx_frame[16][0]~q\ : std_logic;
SIGNAL \out_data~4_combout\ : std_logic;
SIGNAL \tx_frame[28][0]~q\ : std_logic;
SIGNAL \rx_frame[20][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[20][0]~29_combout\ : std_logic;
SIGNAL \rx_frame[20][0]~q\ : std_logic;
SIGNAL \tx_frame[20][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][0]~q\ : std_logic;
SIGNAL \out_data~5_combout\ : std_logic;
SIGNAL \rx_frame[18][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[18][0]~27_combout\ : std_logic;
SIGNAL \rx_frame[18][0]~q\ : std_logic;
SIGNAL \tx_frame[18][0]~q\ : std_logic;
SIGNAL \rx_frame[22][0]~26_combout\ : std_logic;
SIGNAL \rx_frame[22][0]~q\ : std_logic;
SIGNAL \tx_frame[22][0]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][0]~q\ : std_logic;
SIGNAL \out_data~2_combout\ : std_logic;
SIGNAL \rx_frame[26][0]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[26][0]~28_combout\ : std_logic;
SIGNAL \rx_frame[26][0]~q\ : std_logic;
SIGNAL \tx_frame[30][0]~q\ : std_logic;
SIGNAL \tx_frame[26][0]~q\ : std_logic;
SIGNAL \out_data~3_combout\ : std_logic;
SIGNAL \out_data~6_combout\ : std_logic;
SIGNAL \out_data~9_combout\ : std_logic;
SIGNAL \out_data~37_combout\ : std_logic;
SIGNAL \out_data~38_combout\ : std_logic;
SIGNAL \rx_frame[40][1]~q\ : std_logic;
SIGNAL \tx_frame[40][1]~q\ : std_logic;
SIGNAL \rx_frame[41][1]~q\ : std_logic;
SIGNAL \tx_frame[41][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][1]~q\ : std_logic;
SIGNAL \out_data~49_combout\ : std_logic;
SIGNAL \rx_frame[43][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[43][1]~q\ : std_logic;
SIGNAL \tx_frame[43][1]~q\ : std_logic;
SIGNAL \rx_frame[42][1]~q\ : std_logic;
SIGNAL \tx_frame[42][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][1]~q\ : std_logic;
SIGNAL \out_data~50_combout\ : std_logic;
SIGNAL \rx_frame[44][1]~q\ : std_logic;
SIGNAL \tx_frame[44][1]~q\ : std_logic;
SIGNAL \rx_frame[46][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[46][1]~q\ : std_logic;
SIGNAL \tx_frame[46][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][1]~q\ : std_logic;
SIGNAL \out_data~56_combout\ : std_logic;
SIGNAL \rx_frame[47][1]~q\ : std_logic;
SIGNAL \tx_frame[47][1]~q\ : std_logic;
SIGNAL \rx_frame[45][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[45][1]~q\ : std_logic;
SIGNAL \tx_frame[45][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][1]~q\ : std_logic;
SIGNAL \out_data~57_combout\ : std_logic;
SIGNAL \rx_frame[48][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[48][1]~q\ : std_logic;
SIGNAL \tx_frame[48][1]~q\ : std_logic;
SIGNAL \rx_frame[35][1]~q\ : std_logic;
SIGNAL \tx_frame[35][1]~q\ : std_logic;
SIGNAL \rx_frame[37][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[37][1]~q\ : std_logic;
SIGNAL \tx_frame[37][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][1]~q\ : std_logic;
SIGNAL \rx_frame[39][1]~q\ : std_logic;
SIGNAL \tx_frame[39][1]~q\ : std_logic;
SIGNAL \rx_frame[36][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][1]~q\ : std_logic;
SIGNAL \tx_frame[36][1]~q\ : std_logic;
SIGNAL \rx_frame[38][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[38][1]~q\ : std_logic;
SIGNAL \tx_frame[38][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][1]~q\ : std_logic;
SIGNAL \out_data~51_combout\ : std_logic;
SIGNAL \out_data~52_combout\ : std_logic;
SIGNAL \out_data~53_combout\ : std_logic;
SIGNAL \rx_frame[29][1]~q\ : std_logic;
SIGNAL \tx_frame[33][1]~q\ : std_logic;
SIGNAL \rx_frame[28][1]~q\ : std_logic;
SIGNAL \tx_frame[32][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][1]~q\ : std_logic;
SIGNAL \out_data~54_combout\ : std_logic;
SIGNAL \out_data~55_combout\ : std_logic;
SIGNAL \out_data~58_combout\ : std_logic;
SIGNAL \rx_frame[8][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[8][1]~q\ : std_logic;
SIGNAL \tx_frame[2][1]~q\ : std_logic;
SIGNAL \tx_frame[6][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][1]~q\ : std_logic;
SIGNAL \out_data~59_combout\ : std_logic;
SIGNAL \rx_frame[14][1]~q\ : std_logic;
SIGNAL \tx_frame[14][1]~q\ : std_logic;
SIGNAL \tx_frame[10][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[10][1]~q\ : std_logic;
SIGNAL \out_data~60_combout\ : std_logic;
SIGNAL \tx_frame[11][1]~q\ : std_logic;
SIGNAL \rx_frame[15][1]~q\ : std_logic;
SIGNAL \tx_frame[15][1]~q\ : std_logic;
SIGNAL \rx_frame[9][1]~q\ : std_logic;
SIGNAL \tx_frame[3][1]~q\ : std_logic;
SIGNAL \tx_frame[7][1]~q\ : std_logic;
SIGNAL \out_data~66_combout\ : std_logic;
SIGNAL \out_data~67_combout\ : std_logic;
SIGNAL \rx_frame[6][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[6][1]~q\ : std_logic;
SIGNAL \tx_frame[0][1]~q\ : std_logic;
SIGNAL \tx_frame[8][1]~q\ : std_logic;
SIGNAL \out_data~63_combout\ : std_logic;
SIGNAL \rx_frame[12][1]~q\ : std_logic;
SIGNAL \tx_frame[12][1]~q\ : std_logic;
SIGNAL \rx_frame[10][1]~q\ : std_logic;
SIGNAL \tx_frame[4][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[4][1]~q\ : std_logic;
SIGNAL \out_data~64_combout\ : std_logic;
SIGNAL \tx_frame[9][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][1]~q\ : std_logic;
SIGNAL \rx_frame[7][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[7][1]~q\ : std_logic;
SIGNAL \tx_frame[1][1]~q\ : std_logic;
SIGNAL \out_data~61_combout\ : std_logic;
SIGNAL \rx_frame[13][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[13][1]~q\ : std_logic;
SIGNAL \tx_frame[13][1]~q\ : std_logic;
SIGNAL \rx_frame[11][1]~q\ : std_logic;
SIGNAL \tx_frame[5][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[5][1]~q\ : std_logic;
SIGNAL \out_data~62_combout\ : std_logic;
SIGNAL \out_data~65_combout\ : std_logic;
SIGNAL \out_data~68_combout\ : std_logic;
SIGNAL \out_data~69_combout\ : std_logic;
SIGNAL \rx_frame[49][1]~q\ : std_logic;
SIGNAL \tx_frame[49][1]~q\ : std_logic;
SIGNAL \rx_frame[21][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[21][1]~q\ : std_logic;
SIGNAL \tx_frame[21][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[21][1]~q\ : std_logic;
SIGNAL \tx_frame[29][1]~q\ : std_logic;
SIGNAL \rx_frame[17][1]~q\ : std_logic;
SIGNAL \tx_frame[17][1]~q\ : std_logic;
SIGNAL \rx_frame[25][1]~q\ : std_logic;
SIGNAL \tx_frame[25][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][1]~q\ : std_logic;
SIGNAL \out_data~39_combout\ : std_logic;
SIGNAL \out_data~40_combout\ : std_logic;
SIGNAL \tx_frame[26][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[26][1]~q\ : std_logic;
SIGNAL \rx_frame[26][1]~q\ : std_logic;
SIGNAL \tx_frame[30][1]~q\ : std_logic;
SIGNAL \rx_frame[22][1]~q\ : std_logic;
SIGNAL \tx_frame[22][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][1]~q\ : std_logic;
SIGNAL \rx_frame[18][1]~q\ : std_logic;
SIGNAL \tx_frame[18][1]~q\ : std_logic;
SIGNAL \out_data~41_combout\ : std_logic;
SIGNAL \out_data~42_combout\ : std_logic;
SIGNAL \rx_frame[20][1]~q\ : std_logic;
SIGNAL \tx_frame[20][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][1]~q\ : std_logic;
SIGNAL \rx_frame[24][1]~q\ : std_logic;
SIGNAL \tx_frame[24][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[24][1]~q\ : std_logic;
SIGNAL \rx_frame[16][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[16][1]~q\ : std_logic;
SIGNAL \tx_frame[16][1]~q\ : std_logic;
SIGNAL \out_data~43_combout\ : std_logic;
SIGNAL \tx_frame[28][1]~q\ : std_logic;
SIGNAL \out_data~44_combout\ : std_logic;
SIGNAL \out_data~45_combout\ : std_logic;
SIGNAL \rx_frame[19][1]~q\ : std_logic;
SIGNAL \tx_frame[19][1]~q\ : std_logic;
SIGNAL \rx_frame[23][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[23][1]~q\ : std_logic;
SIGNAL \tx_frame[23][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[23][1]~q\ : std_logic;
SIGNAL \out_data~46_combout\ : std_logic;
SIGNAL \rx_frame[27][1]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[27][1]~q\ : std_logic;
SIGNAL \tx_frame[31][1]~q\ : std_logic;
SIGNAL \tx_frame[27][1]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][1]~q\ : std_logic;
SIGNAL \out_data~47_combout\ : std_logic;
SIGNAL \out_data~48_combout\ : std_logic;
SIGNAL \out_data~70_combout\ : std_logic;
SIGNAL \out_data~71_combout\ : std_logic;
SIGNAL \tx_frame[27][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][2]~q\ : std_logic;
SIGNAL \rx_frame[27][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[27][2]~q\ : std_logic;
SIGNAL \tx_frame[31][2]~q\ : std_logic;
SIGNAL \rx_frame[19][2]~q\ : std_logic;
SIGNAL \tx_frame[19][2]~q\ : std_logic;
SIGNAL \rx_frame[23][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[23][2]~q\ : std_logic;
SIGNAL \tx_frame[23][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[23][2]~q\ : std_logic;
SIGNAL \out_data~79_combout\ : std_logic;
SIGNAL \out_data~80_combout\ : std_logic;
SIGNAL \tx_frame[26][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[26][2]~q\ : std_logic;
SIGNAL \rx_frame[26][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[26][2]~q\ : std_logic;
SIGNAL \tx_frame[30][2]~q\ : std_logic;
SIGNAL \rx_frame[22][2]~q\ : std_logic;
SIGNAL \tx_frame[22][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][2]~q\ : std_logic;
SIGNAL \rx_frame[18][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[18][2]~q\ : std_logic;
SIGNAL \tx_frame[18][2]~q\ : std_logic;
SIGNAL \out_data~74_combout\ : std_logic;
SIGNAL \out_data~75_combout\ : std_logic;
SIGNAL \rx_frame[20][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[20][2]~q\ : std_logic;
SIGNAL \tx_frame[20][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][2]~q\ : std_logic;
SIGNAL \rx_frame[24][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[24][2]~q\ : std_logic;
SIGNAL \tx_frame[24][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[24][2]~q\ : std_logic;
SIGNAL \rx_frame[16][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[16][2]~q\ : std_logic;
SIGNAL \tx_frame[16][2]~q\ : std_logic;
SIGNAL \out_data~76_combout\ : std_logic;
SIGNAL \tx_frame[28][2]~q\ : std_logic;
SIGNAL \out_data~77_combout\ : std_logic;
SIGNAL \out_data~78_combout\ : std_logic;
SIGNAL \rx_frame[17][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[17][2]~q\ : std_logic;
SIGNAL \tx_frame[17][2]~q\ : std_logic;
SIGNAL \rx_frame[25][2]~q\ : std_logic;
SIGNAL \tx_frame[25][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][2]~q\ : std_logic;
SIGNAL \out_data~72_combout\ : std_logic;
SIGNAL \tx_frame[29][2]~q\ : std_logic;
SIGNAL \rx_frame[21][2]~q\ : std_logic;
SIGNAL \tx_frame[21][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[21][2]~q\ : std_logic;
SIGNAL \out_data~73_combout\ : std_logic;
SIGNAL \out_data~81_combout\ : std_logic;
SIGNAL \rx_frame[49][2]~q\ : std_logic;
SIGNAL \tx_frame[49][2]~q\ : std_logic;
SIGNAL \tx_frame[11][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[11][2]~q\ : std_logic;
SIGNAL \rx_frame[9][2]~q\ : std_logic;
SIGNAL \tx_frame[3][2]~q\ : std_logic;
SIGNAL \tx_frame[7][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[7][2]~q\ : std_logic;
SIGNAL \out_data~99_combout\ : std_logic;
SIGNAL \rx_frame[15][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[15][2]~q\ : std_logic;
SIGNAL \tx_frame[15][2]~q\ : std_logic;
SIGNAL \out_data~100_combout\ : std_logic;
SIGNAL \rx_frame[10][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[10][2]~q\ : std_logic;
SIGNAL \tx_frame[4][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[4][2]~q\ : std_logic;
SIGNAL \rx_frame[12][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[12][2]~q\ : std_logic;
SIGNAL \tx_frame[12][2]~q\ : std_logic;
SIGNAL \tx_frame[8][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[8][2]~q\ : std_logic;
SIGNAL \rx_frame[6][2]~q\ : std_logic;
SIGNAL \tx_frame[0][2]~q\ : std_logic;
SIGNAL \out_data~96_combout\ : std_logic;
SIGNAL \out_data~97_combout\ : std_logic;
SIGNAL \tx_frame[9][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][2]~q\ : std_logic;
SIGNAL \rx_frame[7][2]~q\ : std_logic;
SIGNAL \tx_frame[1][2]~q\ : std_logic;
SIGNAL \out_data~94_combout\ : std_logic;
SIGNAL \rx_frame[13][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[13][2]~q\ : std_logic;
SIGNAL \tx_frame[13][2]~q\ : std_logic;
SIGNAL \rx_frame[11][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][2]~q\ : std_logic;
SIGNAL \tx_frame[5][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[5][2]~q\ : std_logic;
SIGNAL \out_data~95_combout\ : std_logic;
SIGNAL \out_data~98_combout\ : std_logic;
SIGNAL \tx_frame[10][2]~q\ : std_logic;
SIGNAL \rx_frame[14][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[14][2]~q\ : std_logic;
SIGNAL \tx_frame[14][2]~q\ : std_logic;
SIGNAL \tx_frame[6][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][2]~q\ : std_logic;
SIGNAL \rx_frame[8][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[8][2]~q\ : std_logic;
SIGNAL \tx_frame[2][2]~q\ : std_logic;
SIGNAL \out_data~92_combout\ : std_logic;
SIGNAL \out_data~93_combout\ : std_logic;
SIGNAL \out_data~101_combout\ : std_logic;
SIGNAL \rx_frame[46][2]~q\ : std_logic;
SIGNAL \tx_frame[46][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][2]~q\ : std_logic;
SIGNAL \rx_frame[47][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[47][2]~q\ : std_logic;
SIGNAL \tx_frame[47][2]~q\ : std_logic;
SIGNAL \rx_frame[44][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[44][2]~q\ : std_logic;
SIGNAL \tx_frame[44][2]~q\ : std_logic;
SIGNAL \rx_frame[45][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[45][2]~q\ : std_logic;
SIGNAL \tx_frame[45][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][2]~q\ : std_logic;
SIGNAL \out_data~89_combout\ : std_logic;
SIGNAL \out_data~90_combout\ : std_logic;
SIGNAL \rx_frame[28][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[28][2]~q\ : std_logic;
SIGNAL \tx_frame[32][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][2]~q\ : std_logic;
SIGNAL \rx_frame[29][2]~q\ : std_logic;
SIGNAL \tx_frame[33][2]~q\ : std_logic;
SIGNAL \rx_frame[35][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][2]~q\ : std_logic;
SIGNAL \tx_frame[35][2]~q\ : std_logic;
SIGNAL \rx_frame[38][2]~q\ : std_logic;
SIGNAL \tx_frame[38][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][2]~q\ : std_logic;
SIGNAL \rx_frame[39][2]~q\ : std_logic;
SIGNAL \tx_frame[39][2]~q\ : std_logic;
SIGNAL \rx_frame[36][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][2]~q\ : std_logic;
SIGNAL \tx_frame[36][2]~q\ : std_logic;
SIGNAL \rx_frame[37][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[37][2]~q\ : std_logic;
SIGNAL \tx_frame[37][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][2]~q\ : std_logic;
SIGNAL \out_data~84_combout\ : std_logic;
SIGNAL \out_data~85_combout\ : std_logic;
SIGNAL \out_data~86_combout\ : std_logic;
SIGNAL \out_data~87_combout\ : std_logic;
SIGNAL \rx_frame[41][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[41][2]~q\ : std_logic;
SIGNAL \tx_frame[41][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][2]~q\ : std_logic;
SIGNAL \rx_frame[40][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[40][2]~q\ : std_logic;
SIGNAL \tx_frame[40][2]~q\ : std_logic;
SIGNAL \rx_frame[42][2]~q\ : std_logic;
SIGNAL \tx_frame[42][2]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][2]~q\ : std_logic;
SIGNAL \out_data~82_combout\ : std_logic;
SIGNAL \rx_frame[43][2]~q\ : std_logic;
SIGNAL \tx_frame[43][2]~q\ : std_logic;
SIGNAL \out_data~83_combout\ : std_logic;
SIGNAL \out_data~88_combout\ : std_logic;
SIGNAL \rx_frame[48][2]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[48][2]~q\ : std_logic;
SIGNAL \tx_frame[48][2]~q\ : std_logic;
SIGNAL \out_data~91_combout\ : std_logic;
SIGNAL \out_data~102_combout\ : std_logic;
SIGNAL \out_data~103_combout\ : std_logic;
SIGNAL \out_data~104_combout\ : std_logic;
SIGNAL \rx_frame[23][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[23][3]~q\ : std_logic;
SIGNAL \tx_frame[23][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[23][3]~q\ : std_logic;
SIGNAL \rx_frame[19][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[19][3]~q\ : std_logic;
SIGNAL \tx_frame[19][3]~q\ : std_logic;
SIGNAL \out_data~112_combout\ : std_logic;
SIGNAL \rx_frame[27][3]~q\ : std_logic;
SIGNAL \tx_frame[31][3]~q\ : std_logic;
SIGNAL \tx_frame[27][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][3]~q\ : std_logic;
SIGNAL \out_data~113_combout\ : std_logic;
SIGNAL \rx_frame[18][3]~q\ : std_logic;
SIGNAL \tx_frame[18][3]~q\ : std_logic;
SIGNAL \rx_frame[22][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[22][3]~q\ : std_logic;
SIGNAL \tx_frame[22][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][3]~q\ : std_logic;
SIGNAL \out_data~107_combout\ : std_logic;
SIGNAL \rx_frame[26][3]~q\ : std_logic;
SIGNAL \tx_frame[30][3]~q\ : std_logic;
SIGNAL \tx_frame[26][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[26][3]~q\ : std_logic;
SIGNAL \out_data~108_combout\ : std_logic;
SIGNAL \rx_frame[16][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[16][3]~q\ : std_logic;
SIGNAL \tx_frame[16][3]~q\ : std_logic;
SIGNAL \rx_frame[24][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[24][3]~q\ : std_logic;
SIGNAL \tx_frame[24][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[24][3]~q\ : std_logic;
SIGNAL \out_data~109_combout\ : std_logic;
SIGNAL \tx_frame[28][3]~q\ : std_logic;
SIGNAL \rx_frame[20][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[20][3]~q\ : std_logic;
SIGNAL \tx_frame[20][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][3]~q\ : std_logic;
SIGNAL \out_data~110_combout\ : std_logic;
SIGNAL \out_data~111_combout\ : std_logic;
SIGNAL \rx_frame[17][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[17][3]~q\ : std_logic;
SIGNAL \tx_frame[17][3]~q\ : std_logic;
SIGNAL \rx_frame[25][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[25][3]~q\ : std_logic;
SIGNAL \tx_frame[25][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][3]~q\ : std_logic;
SIGNAL \out_data~105_combout\ : std_logic;
SIGNAL \tx_frame[29][3]~q\ : std_logic;
SIGNAL \rx_frame[21][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[21][3]~q\ : std_logic;
SIGNAL \tx_frame[21][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[21][3]~q\ : std_logic;
SIGNAL \out_data~106_combout\ : std_logic;
SIGNAL \out_data~114_combout\ : std_logic;
SIGNAL \rx_frame[49][3]~q\ : std_logic;
SIGNAL \tx_frame[49][3]~q\ : std_logic;
SIGNAL \rx_frame[48][3]~q\ : std_logic;
SIGNAL \tx_frame[48][3]~q\ : std_logic;
SIGNAL \rx_frame[35][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][3]~q\ : std_logic;
SIGNAL \tx_frame[35][3]~q\ : std_logic;
SIGNAL \rx_frame[38][3]~q\ : std_logic;
SIGNAL \tx_frame[38][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][3]~q\ : std_logic;
SIGNAL \rx_frame[36][3]~q\ : std_logic;
SIGNAL \tx_frame[36][3]~q\ : std_logic;
SIGNAL \out_data~117_combout\ : std_logic;
SIGNAL \rx_frame[37][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[37][3]~q\ : std_logic;
SIGNAL \tx_frame[37][3]~q\ : std_logic;
SIGNAL \rx_frame[39][3]~q\ : std_logic;
SIGNAL \tx_frame[39][3]~q\ : std_logic;
SIGNAL \out_data~118_combout\ : std_logic;
SIGNAL \out_data~119_combout\ : std_logic;
SIGNAL \rx_frame[29][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[29][3]~q\ : std_logic;
SIGNAL \tx_frame[33][3]~q\ : std_logic;
SIGNAL \rx_frame[28][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[28][3]~q\ : std_logic;
SIGNAL \tx_frame[32][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][3]~q\ : std_logic;
SIGNAL \out_data~120_combout\ : std_logic;
SIGNAL \out_data~121_combout\ : std_logic;
SIGNAL \rx_frame[42][3]~q\ : std_logic;
SIGNAL \tx_frame[42][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][3]~q\ : std_logic;
SIGNAL \rx_frame[43][3]~q\ : std_logic;
SIGNAL \tx_frame[43][3]~q\ : std_logic;
SIGNAL \rx_frame[40][3]~q\ : std_logic;
SIGNAL \tx_frame[40][3]~q\ : std_logic;
SIGNAL \rx_frame[41][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[41][3]~q\ : std_logic;
SIGNAL \tx_frame[41][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][3]~q\ : std_logic;
SIGNAL \out_data~115_combout\ : std_logic;
SIGNAL \out_data~116_combout\ : std_logic;
SIGNAL \rx_frame[46][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[46][3]~q\ : std_logic;
SIGNAL \tx_frame[46][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][3]~q\ : std_logic;
SIGNAL \rx_frame[44][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[44][3]~q\ : std_logic;
SIGNAL \tx_frame[44][3]~q\ : std_logic;
SIGNAL \out_data~122_combout\ : std_logic;
SIGNAL \rx_frame[47][3]~q\ : std_logic;
SIGNAL \tx_frame[47][3]~q\ : std_logic;
SIGNAL \rx_frame[45][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[45][3]~q\ : std_logic;
SIGNAL \tx_frame[45][3]~q\ : std_logic;
SIGNAL \out_data~123_combout\ : std_logic;
SIGNAL \out_data~124_combout\ : std_logic;
SIGNAL \rx_frame[10][3]~q\ : std_logic;
SIGNAL \tx_frame[4][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[4][3]~q\ : std_logic;
SIGNAL \rx_frame[12][3]~q\ : std_logic;
SIGNAL \tx_frame[12][3]~q\ : std_logic;
SIGNAL \tx_frame[8][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[8][3]~q\ : std_logic;
SIGNAL \rx_frame[6][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[6][3]~q\ : std_logic;
SIGNAL \tx_frame[0][3]~q\ : std_logic;
SIGNAL \out_data~129_combout\ : std_logic;
SIGNAL \out_data~130_combout\ : std_logic;
SIGNAL \tx_frame[9][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][3]~q\ : std_logic;
SIGNAL \rx_frame[7][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[7][3]~q\ : std_logic;
SIGNAL \tx_frame[1][3]~q\ : std_logic;
SIGNAL \out_data~127_combout\ : std_logic;
SIGNAL \rx_frame[13][3]~q\ : std_logic;
SIGNAL \tx_frame[13][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[13][3]~q\ : std_logic;
SIGNAL \rx_frame[11][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][3]~q\ : std_logic;
SIGNAL \tx_frame[5][3]~q\ : std_logic;
SIGNAL \out_data~128_combout\ : std_logic;
SIGNAL \out_data~131_combout\ : std_logic;
SIGNAL \rx_frame[9][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[9][3]~q\ : std_logic;
SIGNAL \tx_frame[3][3]~q\ : std_logic;
SIGNAL \tx_frame[7][3]~q\ : std_logic;
SIGNAL \out_data~132_combout\ : std_logic;
SIGNAL \rx_frame[15][3]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[15][3]~q\ : std_logic;
SIGNAL \tx_frame[15][3]~q\ : std_logic;
SIGNAL \tx_frame[11][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[11][3]~q\ : std_logic;
SIGNAL \out_data~133_combout\ : std_logic;
SIGNAL \tx_frame[6][3]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][3]~q\ : std_logic;
SIGNAL \rx_frame[8][3]~q\ : std_logic;
SIGNAL \tx_frame[2][3]~q\ : std_logic;
SIGNAL \out_data~125_combout\ : std_logic;
SIGNAL \tx_frame[10][3]~q\ : std_logic;
SIGNAL \rx_frame[14][3]~q\ : std_logic;
SIGNAL \tx_frame[14][3]~q\ : std_logic;
SIGNAL \out_data~126_combout\ : std_logic;
SIGNAL \out_data~134_combout\ : std_logic;
SIGNAL \out_data~135_combout\ : std_logic;
SIGNAL \out_data~136_combout\ : std_logic;
SIGNAL \out_data~137_combout\ : std_logic;
SIGNAL \rx_frame[46][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[46][4]~q\ : std_logic;
SIGNAL \tx_frame[46][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][4]~q\ : std_logic;
SIGNAL \rx_frame[47][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[47][4]~q\ : std_logic;
SIGNAL \tx_frame[47][4]~q\ : std_logic;
SIGNAL \rx_frame[44][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[44][4]~q\ : std_logic;
SIGNAL \tx_frame[44][4]~q\ : std_logic;
SIGNAL \rx_frame[45][4]~q\ : std_logic;
SIGNAL \tx_frame[45][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][4]~q\ : std_logic;
SIGNAL \out_data~155_combout\ : std_logic;
SIGNAL \out_data~156_combout\ : std_logic;
SIGNAL \rx_frame[48][4]~q\ : std_logic;
SIGNAL \tx_frame[48][4]~q\ : std_logic;
SIGNAL \rx_frame[37][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[37][4]~q\ : std_logic;
SIGNAL \tx_frame[37][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][4]~q\ : std_logic;
SIGNAL \rx_frame[36][4]~q\ : std_logic;
SIGNAL \tx_frame[36][4]~q\ : std_logic;
SIGNAL \out_data~150_combout\ : std_logic;
SIGNAL \rx_frame[39][4]~q\ : std_logic;
SIGNAL \tx_frame[39][4]~q\ : std_logic;
SIGNAL \rx_frame[38][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[38][4]~q\ : std_logic;
SIGNAL \tx_frame[38][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][4]~q\ : std_logic;
SIGNAL \out_data~151_combout\ : std_logic;
SIGNAL \rx_frame[35][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][4]~q\ : std_logic;
SIGNAL \tx_frame[35][4]~q\ : std_logic;
SIGNAL \out_data~152_combout\ : std_logic;
SIGNAL \rx_frame[29][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[29][4]~q\ : std_logic;
SIGNAL \tx_frame[33][4]~q\ : std_logic;
SIGNAL \rx_frame[28][4]~q\ : std_logic;
SIGNAL \tx_frame[32][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][4]~q\ : std_logic;
SIGNAL \out_data~153_combout\ : std_logic;
SIGNAL \rx_frame[40][4]~q\ : std_logic;
SIGNAL \tx_frame[40][4]~q\ : std_logic;
SIGNAL \rx_frame[42][4]~q\ : std_logic;
SIGNAL \tx_frame[42][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][4]~q\ : std_logic;
SIGNAL \out_data~148_combout\ : std_logic;
SIGNAL \rx_frame[43][4]~q\ : std_logic;
SIGNAL \tx_frame[43][4]~q\ : std_logic;
SIGNAL \rx_frame[41][4]~q\ : std_logic;
SIGNAL \tx_frame[41][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][4]~q\ : std_logic;
SIGNAL \out_data~149_combout\ : std_logic;
SIGNAL \out_data~154_combout\ : std_logic;
SIGNAL \out_data~157_combout\ : std_logic;
SIGNAL \rx_frame[11][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][4]~q\ : std_logic;
SIGNAL \tx_frame[5][4]~q\ : std_logic;
SIGNAL \tx_frame[7][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[7][4]~q\ : std_logic;
SIGNAL \out_data~165_combout\ : std_logic;
SIGNAL \rx_frame[15][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[15][4]~q\ : std_logic;
SIGNAL \tx_frame[15][4]~q\ : std_logic;
SIGNAL \rx_frame[13][4]~q\ : std_logic;
SIGNAL \tx_frame[13][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[13][4]~q\ : std_logic;
SIGNAL \out_data~166_combout\ : std_logic;
SIGNAL \rx_frame[12][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[12][4]~q\ : std_logic;
SIGNAL \tx_frame[12][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[12][4]~q\ : std_logic;
SIGNAL \rx_frame[14][4]~q\ : std_logic;
SIGNAL \tx_frame[14][4]~q\ : std_logic;
SIGNAL \rx_frame[10][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[10][4]~q\ : std_logic;
SIGNAL \tx_frame[4][4]~q\ : std_logic;
SIGNAL \tx_frame[6][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][4]~q\ : std_logic;
SIGNAL \out_data~158_combout\ : std_logic;
SIGNAL \out_data~159_combout\ : std_logic;
SIGNAL \rx_frame[7][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[7][4]~q\ : std_logic;
SIGNAL \tx_frame[1][4]~q\ : std_logic;
SIGNAL \tx_frame[9][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][4]~q\ : std_logic;
SIGNAL \out_data~160_combout\ : std_logic;
SIGNAL \tx_frame[11][4]~q\ : std_logic;
SIGNAL \rx_frame[9][4]~q\ : std_logic;
SIGNAL \tx_frame[3][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[3][4]~q\ : std_logic;
SIGNAL \out_data~161_combout\ : std_logic;
SIGNAL \rx_frame[8][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[8][4]~q\ : std_logic;
SIGNAL \tx_frame[2][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[2][4]~q\ : std_logic;
SIGNAL \tx_frame[10][4]~q\ : std_logic;
SIGNAL \rx_frame[6][4]~q\ : std_logic;
SIGNAL \tx_frame[0][4]~q\ : std_logic;
SIGNAL \tx_frame[8][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[8][4]~q\ : std_logic;
SIGNAL \out_data~162_combout\ : std_logic;
SIGNAL \out_data~163_combout\ : std_logic;
SIGNAL \out_data~164_combout\ : std_logic;
SIGNAL \out_data~167_combout\ : std_logic;
SIGNAL \out_data~168_combout\ : std_logic;
SIGNAL \rx_frame[49][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[49][4]~q\ : std_logic;
SIGNAL \tx_frame[49][4]~q\ : std_logic;
SIGNAL \rx_frame[20][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[20][4]~q\ : std_logic;
SIGNAL \tx_frame[20][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][4]~q\ : std_logic;
SIGNAL \rx_frame[17][4]~q\ : std_logic;
SIGNAL \tx_frame[17][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[17][4]~q\ : std_logic;
SIGNAL \rx_frame[16][4]~q\ : std_logic;
SIGNAL \tx_frame[16][4]~q\ : std_logic;
SIGNAL \out_data~142_combout\ : std_logic;
SIGNAL \rx_frame[21][4]~q\ : std_logic;
SIGNAL \tx_frame[21][4]~q\ : std_logic;
SIGNAL \out_data~143_combout\ : std_logic;
SIGNAL \tx_frame[28][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[28][4]~q\ : std_logic;
SIGNAL \rx_frame[24][4]~q\ : std_logic;
SIGNAL \tx_frame[24][4]~q\ : std_logic;
SIGNAL \out_data~140_combout\ : std_logic;
SIGNAL \tx_frame[29][4]~q\ : std_logic;
SIGNAL \rx_frame[25][4]~q\ : std_logic;
SIGNAL \tx_frame[25][4]~q\ : std_logic;
SIGNAL \out_data~141_combout\ : std_logic;
SIGNAL \out_data~144_combout\ : std_logic;
SIGNAL \rx_frame[18][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[18][4]~q\ : std_logic;
SIGNAL \tx_frame[18][4]~q\ : std_logic;
SIGNAL \rx_frame[19][4]~q\ : std_logic;
SIGNAL \tx_frame[19][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[19][4]~q\ : std_logic;
SIGNAL \out_data~138_combout\ : std_logic;
SIGNAL \rx_frame[23][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[23][4]~q\ : std_logic;
SIGNAL \tx_frame[23][4]~q\ : std_logic;
SIGNAL \rx_frame[22][4]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[22][4]~q\ : std_logic;
SIGNAL \tx_frame[22][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][4]~q\ : std_logic;
SIGNAL \out_data~139_combout\ : std_logic;
SIGNAL \tx_frame[26][4]~q\ : std_logic;
SIGNAL \rx_frame[26][4]~q\ : std_logic;
SIGNAL \tx_frame[30][4]~q\ : std_logic;
SIGNAL \out_data~145_combout\ : std_logic;
SIGNAL \rx_frame[27][4]~q\ : std_logic;
SIGNAL \tx_frame[31][4]~q\ : std_logic;
SIGNAL \tx_frame[27][4]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][4]~q\ : std_logic;
SIGNAL \out_data~146_combout\ : std_logic;
SIGNAL \out_data~147_combout\ : std_logic;
SIGNAL \out_data~169_combout\ : std_logic;
SIGNAL \out_data~170_combout\ : std_logic;
SIGNAL \rx_frame[45][5]~q\ : std_logic;
SIGNAL \tx_frame[45][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][5]~q\ : std_logic;
SIGNAL \rx_frame[46][5]~q\ : std_logic;
SIGNAL \tx_frame[46][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][5]~q\ : std_logic;
SIGNAL \rx_frame[44][5]~q\ : std_logic;
SIGNAL \tx_frame[44][5]~q\ : std_logic;
SIGNAL \out_data~178_combout\ : std_logic;
SIGNAL \rx_frame[47][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[47][5]~q\ : std_logic;
SIGNAL \tx_frame[47][5]~q\ : std_logic;
SIGNAL \out_data~179_combout\ : std_logic;
SIGNAL \rx_frame[48][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[48][5]~q\ : std_logic;
SIGNAL \tx_frame[48][5]~q\ : std_logic;
SIGNAL \rx_frame[37][5]~q\ : std_logic;
SIGNAL \tx_frame[37][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][5]~q\ : std_logic;
SIGNAL \rx_frame[39][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[39][5]~q\ : std_logic;
SIGNAL \tx_frame[39][5]~q\ : std_logic;
SIGNAL \rx_frame[38][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[38][5]~q\ : std_logic;
SIGNAL \tx_frame[38][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][5]~q\ : std_logic;
SIGNAL \rx_frame[36][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][5]~q\ : std_logic;
SIGNAL \tx_frame[36][5]~q\ : std_logic;
SIGNAL \out_data~173_combout\ : std_logic;
SIGNAL \out_data~174_combout\ : std_logic;
SIGNAL \rx_frame[35][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][5]~q\ : std_logic;
SIGNAL \tx_frame[35][5]~q\ : std_logic;
SIGNAL \out_data~175_combout\ : std_logic;
SIGNAL \rx_frame[29][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[29][5]~q\ : std_logic;
SIGNAL \tx_frame[33][5]~q\ : std_logic;
SIGNAL \rx_frame[28][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[28][5]~q\ : std_logic;
SIGNAL \tx_frame[32][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][5]~q\ : std_logic;
SIGNAL \out_data~176_combout\ : std_logic;
SIGNAL \out_data~177_combout\ : std_logic;
SIGNAL \rx_frame[40][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[40][5]~q\ : std_logic;
SIGNAL \tx_frame[40][5]~q\ : std_logic;
SIGNAL \rx_frame[41][5]~q\ : std_logic;
SIGNAL \tx_frame[41][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][5]~q\ : std_logic;
SIGNAL \out_data~171_combout\ : std_logic;
SIGNAL \rx_frame[43][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[43][5]~q\ : std_logic;
SIGNAL \tx_frame[43][5]~q\ : std_logic;
SIGNAL \rx_frame[42][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[42][5]~q\ : std_logic;
SIGNAL \tx_frame[42][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][5]~q\ : std_logic;
SIGNAL \out_data~172_combout\ : std_logic;
SIGNAL \out_data~180_combout\ : std_logic;
SIGNAL \rx_frame[49][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[49][5]~q\ : std_logic;
SIGNAL \tx_frame[49][5]~q\ : std_logic;
SIGNAL \rx_frame[10][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[10][5]~q\ : std_logic;
SIGNAL \tx_frame[4][5]~q\ : std_logic;
SIGNAL \rx_frame[12][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[12][5]~q\ : std_logic;
SIGNAL \tx_frame[12][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[12][5]~q\ : std_logic;
SIGNAL \out_data~193_combout\ : std_logic;
SIGNAL \rx_frame[14][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[14][5]~q\ : std_logic;
SIGNAL \tx_frame[14][5]~q\ : std_logic;
SIGNAL \tx_frame[6][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][5]~q\ : std_logic;
SIGNAL \out_data~194_combout\ : std_logic;
SIGNAL \tx_frame[8][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[8][5]~q\ : std_logic;
SIGNAL \tx_frame[10][5]~q\ : std_logic;
SIGNAL \rx_frame[6][5]~q\ : std_logic;
SIGNAL \tx_frame[0][5]~q\ : std_logic;
SIGNAL \rx_frame[8][5]~q\ : std_logic;
SIGNAL \tx_frame[2][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[2][5]~q\ : std_logic;
SIGNAL \out_data~195_combout\ : std_logic;
SIGNAL \out_data~196_combout\ : std_logic;
SIGNAL \out_data~197_combout\ : std_logic;
SIGNAL \rx_frame[7][5]~q\ : std_logic;
SIGNAL \tx_frame[1][5]~q\ : std_logic;
SIGNAL \rx_frame[9][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[9][5]~q\ : std_logic;
SIGNAL \tx_frame[3][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[3][5]~q\ : std_logic;
SIGNAL \out_data~191_combout\ : std_logic;
SIGNAL \tx_frame[11][5]~q\ : std_logic;
SIGNAL \tx_frame[9][5]~q\ : std_logic;
SIGNAL \out_data~192_combout\ : std_logic;
SIGNAL \rx_frame[13][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[13][5]~q\ : std_logic;
SIGNAL \tx_frame[13][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[13][5]~q\ : std_logic;
SIGNAL \rx_frame[11][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][5]~q\ : std_logic;
SIGNAL \tx_frame[5][5]~q\ : std_logic;
SIGNAL \out_data~198_combout\ : std_logic;
SIGNAL \tx_frame[7][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[7][5]~q\ : std_logic;
SIGNAL \rx_frame[15][5]~q\ : std_logic;
SIGNAL \tx_frame[15][5]~q\ : std_logic;
SIGNAL \out_data~199_combout\ : std_logic;
SIGNAL \out_data~200_combout\ : std_logic;
SIGNAL \tx_frame[28][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[28][5]~q\ : std_logic;
SIGNAL \rx_frame[25][5]~q\ : std_logic;
SIGNAL \tx_frame[25][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][5]~q\ : std_logic;
SIGNAL \rx_frame[24][5]~q\ : std_logic;
SIGNAL \tx_frame[24][5]~q\ : std_logic;
SIGNAL \out_data~181_combout\ : std_logic;
SIGNAL \tx_frame[29][5]~q\ : std_logic;
SIGNAL \out_data~182_combout\ : std_logic;
SIGNAL \rx_frame[26][5]~q\ : std_logic;
SIGNAL \tx_frame[30][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[30][5]~q\ : std_logic;
SIGNAL \tx_frame[27][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][5]~q\ : std_logic;
SIGNAL \tx_frame[26][5]~q\ : std_logic;
SIGNAL \out_data~188_combout\ : std_logic;
SIGNAL \rx_frame[27][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[27][5]~q\ : std_logic;
SIGNAL \tx_frame[31][5]~q\ : std_logic;
SIGNAL \out_data~189_combout\ : std_logic;
SIGNAL \rx_frame[20][5]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[20][5]~q\ : std_logic;
SIGNAL \tx_frame[20][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][5]~q\ : std_logic;
SIGNAL \rx_frame[21][5]~q\ : std_logic;
SIGNAL \tx_frame[21][5]~q\ : std_logic;
SIGNAL \rx_frame[16][5]~q\ : std_logic;
SIGNAL \tx_frame[16][5]~q\ : std_logic;
SIGNAL \rx_frame[17][5]~q\ : std_logic;
SIGNAL \tx_frame[17][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[17][5]~q\ : std_logic;
SIGNAL \out_data~185_combout\ : std_logic;
SIGNAL \out_data~186_combout\ : std_logic;
SIGNAL \rx_frame[18][5]~q\ : std_logic;
SIGNAL \tx_frame[18][5]~q\ : std_logic;
SIGNAL \rx_frame[22][5]~q\ : std_logic;
SIGNAL \tx_frame[22][5]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][5]~q\ : std_logic;
SIGNAL \out_data~183_combout\ : std_logic;
SIGNAL \rx_frame[23][5]~q\ : std_logic;
SIGNAL \tx_frame[23][5]~q\ : std_logic;
SIGNAL \rx_frame[19][5]~q\ : std_logic;
SIGNAL \tx_frame[19][5]~q\ : std_logic;
SIGNAL \out_data~184_combout\ : std_logic;
SIGNAL \out_data~187_combout\ : std_logic;
SIGNAL \out_data~190_combout\ : std_logic;
SIGNAL \out_data~201_combout\ : std_logic;
SIGNAL \out_data~202_combout\ : std_logic;
SIGNAL \out_data~203_combout\ : std_logic;
SIGNAL \rx_frame[16][6]~q\ : std_logic;
SIGNAL \tx_frame[16][6]~q\ : std_logic;
SIGNAL \rx_frame[17][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[17][6]~q\ : std_logic;
SIGNAL \tx_frame[17][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[17][6]~q\ : std_logic;
SIGNAL \out_data~208_combout\ : std_logic;
SIGNAL \rx_frame[20][6]~q\ : std_logic;
SIGNAL \tx_frame[20][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][6]~q\ : std_logic;
SIGNAL \rx_frame[21][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[21][6]~q\ : std_logic;
SIGNAL \tx_frame[21][6]~q\ : std_logic;
SIGNAL \out_data~209_combout\ : std_logic;
SIGNAL \rx_frame[25][6]~q\ : std_logic;
SIGNAL \tx_frame[25][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[25][6]~q\ : std_logic;
SIGNAL \tx_frame[29][6]~q\ : std_logic;
SIGNAL \rx_frame[24][6]~q\ : std_logic;
SIGNAL \tx_frame[24][6]~q\ : std_logic;
SIGNAL \tx_frame[28][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[28][6]~q\ : std_logic;
SIGNAL \out_data~206_combout\ : std_logic;
SIGNAL \out_data~207_combout\ : std_logic;
SIGNAL \out_data~210_combout\ : std_logic;
SIGNAL \rx_frame[18][6]~q\ : std_logic;
SIGNAL \tx_frame[18][6]~q\ : std_logic;
SIGNAL \rx_frame[19][6]~q\ : std_logic;
SIGNAL \tx_frame[19][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[19][6]~q\ : std_logic;
SIGNAL \out_data~204_combout\ : std_logic;
SIGNAL \rx_frame[23][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[23][6]~q\ : std_logic;
SIGNAL \tx_frame[23][6]~q\ : std_logic;
SIGNAL \rx_frame[22][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[22][6]~q\ : std_logic;
SIGNAL \tx_frame[22][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][6]~q\ : std_logic;
SIGNAL \out_data~205_combout\ : std_logic;
SIGNAL \tx_frame[26][6]~q\ : std_logic;
SIGNAL \rx_frame[26][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[26][6]~q\ : std_logic;
SIGNAL \tx_frame[30][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[30][6]~q\ : std_logic;
SIGNAL \out_data~211_combout\ : std_logic;
SIGNAL \rx_frame[27][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[27][6]~q\ : std_logic;
SIGNAL \tx_frame[31][6]~q\ : std_logic;
SIGNAL \tx_frame[27][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[27][6]~q\ : std_logic;
SIGNAL \out_data~212_combout\ : std_logic;
SIGNAL \out_data~213_combout\ : std_logic;
SIGNAL \rx_frame[49][6]~q\ : std_logic;
SIGNAL \tx_frame[49][6]~q\ : std_logic;
SIGNAL \rx_frame[46][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[46][6]~q\ : std_logic;
SIGNAL \tx_frame[46][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][6]~q\ : std_logic;
SIGNAL \rx_frame[47][6]~q\ : std_logic;
SIGNAL \tx_frame[47][6]~q\ : std_logic;
SIGNAL \rx_frame[44][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[44][6]~q\ : std_logic;
SIGNAL \tx_frame[44][6]~q\ : std_logic;
SIGNAL \rx_frame[45][6]~q\ : std_logic;
SIGNAL \tx_frame[45][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][6]~q\ : std_logic;
SIGNAL \out_data~221_combout\ : std_logic;
SIGNAL \out_data~222_combout\ : std_logic;
SIGNAL \rx_frame[48][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[48][6]~q\ : std_logic;
SIGNAL \tx_frame[48][6]~q\ : std_logic;
SIGNAL \rx_frame[35][6]~q\ : std_logic;
SIGNAL \tx_frame[35][6]~q\ : std_logic;
SIGNAL \rx_frame[37][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[37][6]~q\ : std_logic;
SIGNAL \tx_frame[37][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[37][6]~q\ : std_logic;
SIGNAL \rx_frame[36][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][6]~q\ : std_logic;
SIGNAL \tx_frame[36][6]~q\ : std_logic;
SIGNAL \out_data~216_combout\ : std_logic;
SIGNAL \rx_frame[39][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[39][6]~q\ : std_logic;
SIGNAL \tx_frame[39][6]~q\ : std_logic;
SIGNAL \rx_frame[38][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[38][6]~q\ : std_logic;
SIGNAL \tx_frame[38][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[38][6]~q\ : std_logic;
SIGNAL \out_data~217_combout\ : std_logic;
SIGNAL \out_data~218_combout\ : std_logic;
SIGNAL \rx_frame[28][6]~q\ : std_logic;
SIGNAL \tx_frame[32][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][6]~q\ : std_logic;
SIGNAL \rx_frame[29][6]~q\ : std_logic;
SIGNAL \tx_frame[33][6]~q\ : std_logic;
SIGNAL \out_data~219_combout\ : std_logic;
SIGNAL \rx_frame[40][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[40][6]~q\ : std_logic;
SIGNAL \tx_frame[40][6]~q\ : std_logic;
SIGNAL \rx_frame[42][6]~q\ : std_logic;
SIGNAL \tx_frame[42][6]~q\ : std_logic;
SIGNAL \out_data~214_combout\ : std_logic;
SIGNAL \rx_frame[41][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[41][6]~q\ : std_logic;
SIGNAL \tx_frame[41][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][6]~q\ : std_logic;
SIGNAL \rx_frame[43][6]~q\ : std_logic;
SIGNAL \tx_frame[43][6]~q\ : std_logic;
SIGNAL \out_data~215_combout\ : std_logic;
SIGNAL \out_data~220_combout\ : std_logic;
SIGNAL \out_data~223_combout\ : std_logic;
SIGNAL \rx_frame[9][6]~q\ : std_logic;
SIGNAL \tx_frame[3][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[3][6]~q\ : std_logic;
SIGNAL \tx_frame[11][6]~q\ : std_logic;
SIGNAL \tx_frame[9][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][6]~q\ : std_logic;
SIGNAL \rx_frame[7][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[7][6]~q\ : std_logic;
SIGNAL \tx_frame[1][6]~q\ : std_logic;
SIGNAL \out_data~224_combout\ : std_logic;
SIGNAL \out_data~225_combout\ : std_logic;
SIGNAL \rx_frame[11][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][6]~q\ : std_logic;
SIGNAL \tx_frame[5][6]~q\ : std_logic;
SIGNAL \tx_frame[7][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[7][6]~q\ : std_logic;
SIGNAL \out_data~231_combout\ : std_logic;
SIGNAL \rx_frame[13][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[13][6]~q\ : std_logic;
SIGNAL \tx_frame[13][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[13][6]~q\ : std_logic;
SIGNAL \rx_frame[15][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[15][6]~q\ : std_logic;
SIGNAL \tx_frame[15][6]~q\ : std_logic;
SIGNAL \out_data~232_combout\ : std_logic;
SIGNAL \rx_frame[8][6]~q\ : std_logic;
SIGNAL \tx_frame[2][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[2][6]~q\ : std_logic;
SIGNAL \tx_frame[8][6]~q\ : std_logic;
SIGNAL \rx_frame[6][6]~q\ : std_logic;
SIGNAL \tx_frame[0][6]~q\ : std_logic;
SIGNAL \out_data~228_combout\ : std_logic;
SIGNAL \tx_frame[10][6]~q\ : std_logic;
SIGNAL \out_data~229_combout\ : std_logic;
SIGNAL \rx_frame[10][6]~q\ : std_logic;
SIGNAL \tx_frame[4][6]~q\ : std_logic;
SIGNAL \tx_frame[6][6]~q\ : std_logic;
SIGNAL \out_data~226_combout\ : std_logic;
SIGNAL \rx_frame[14][6]~q\ : std_logic;
SIGNAL \tx_frame[14][6]~q\ : std_logic;
SIGNAL \rx_frame[12][6]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[12][6]~q\ : std_logic;
SIGNAL \tx_frame[12][6]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[12][6]~q\ : std_logic;
SIGNAL \out_data~227_combout\ : std_logic;
SIGNAL \out_data~230_combout\ : std_logic;
SIGNAL \out_data~233_combout\ : std_logic;
SIGNAL \out_data~234_combout\ : std_logic;
SIGNAL \out_data~235_combout\ : std_logic;
SIGNAL \out_data~236_combout\ : std_logic;
SIGNAL \rx_frame[16][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[16][7]~q\ : std_logic;
SIGNAL \tx_frame[16][7]~q\ : std_logic;
SIGNAL \rx_frame[17][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[17][7]~q\ : std_logic;
SIGNAL \tx_frame[17][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[17][7]~q\ : std_logic;
SIGNAL \out_data~251_combout\ : std_logic;
SIGNAL \rx_frame[21][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[21][7]~q\ : std_logic;
SIGNAL \tx_frame[21][7]~q\ : std_logic;
SIGNAL \rx_frame[20][7]~q\ : std_logic;
SIGNAL \tx_frame[20][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[20][7]~q\ : std_logic;
SIGNAL \out_data~252_combout\ : std_logic;
SIGNAL \rx_frame[19][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[19][7]~q\ : std_logic;
SIGNAL \tx_frame[19][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[19][7]~q\ : std_logic;
SIGNAL \rx_frame[23][7]~q\ : std_logic;
SIGNAL \tx_frame[23][7]~q\ : std_logic;
SIGNAL \rx_frame[18][7]~q\ : std_logic;
SIGNAL \tx_frame[18][7]~q\ : std_logic;
SIGNAL \rx_frame[22][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[22][7]~q\ : std_logic;
SIGNAL \tx_frame[22][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[22][7]~q\ : std_logic;
SIGNAL \out_data~249_combout\ : std_logic;
SIGNAL \out_data~250_combout\ : std_logic;
SIGNAL \out_data~253_combout\ : std_logic;
SIGNAL \tx_frame[27][7]~q\ : std_logic;
SIGNAL \tx_frame[26][7]~q\ : std_logic;
SIGNAL \out_data~254_combout\ : std_logic;
SIGNAL \rx_frame[27][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[27][7]~q\ : std_logic;
SIGNAL \tx_frame[31][7]~q\ : std_logic;
SIGNAL \rx_frame[26][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[26][7]~q\ : std_logic;
SIGNAL \tx_frame[30][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[30][7]~q\ : std_logic;
SIGNAL \out_data~255_combout\ : std_logic;
SIGNAL \rx_frame[25][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[25][7]~q\ : std_logic;
SIGNAL \tx_frame[25][7]~q\ : std_logic;
SIGNAL \rx_frame[24][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[24][7]~q\ : std_logic;
SIGNAL \tx_frame[24][7]~q\ : std_logic;
SIGNAL \out_data~247_combout\ : std_logic;
SIGNAL \tx_frame[28][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[28][7]~q\ : std_logic;
SIGNAL \tx_frame[29][7]~q\ : std_logic;
SIGNAL \out_data~248_combout\ : std_logic;
SIGNAL \out_data~256_combout\ : std_logic;
SIGNAL \rx_frame[10][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[10][7]~q\ : std_logic;
SIGNAL \tx_frame[4][7]~q\ : std_logic;
SIGNAL \rx_frame[12][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[12][7]~q\ : std_logic;
SIGNAL \tx_frame[12][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[12][7]~q\ : std_logic;
SIGNAL \out_data~259_combout\ : std_logic;
SIGNAL \rx_frame[14][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[14][7]~q\ : std_logic;
SIGNAL \tx_frame[14][7]~q\ : std_logic;
SIGNAL \tx_frame[6][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[6][7]~q\ : std_logic;
SIGNAL \out_data~260_combout\ : std_logic;
SIGNAL \tx_frame[8][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[8][7]~q\ : std_logic;
SIGNAL \tx_frame[10][7]~q\ : std_logic;
SIGNAL \rx_frame[6][7]~q\ : std_logic;
SIGNAL \tx_frame[0][7]~q\ : std_logic;
SIGNAL \rx_frame[8][7]~q\ : std_logic;
SIGNAL \tx_frame[2][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[2][7]~q\ : std_logic;
SIGNAL \out_data~261_combout\ : std_logic;
SIGNAL \out_data~262_combout\ : std_logic;
SIGNAL \out_data~263_combout\ : std_logic;
SIGNAL \rx_frame[9][7]~q\ : std_logic;
SIGNAL \tx_frame[3][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[3][7]~q\ : std_logic;
SIGNAL \rx_frame[7][7]~q\ : std_logic;
SIGNAL \tx_frame[1][7]~q\ : std_logic;
SIGNAL \out_data~257_combout\ : std_logic;
SIGNAL \tx_frame[11][7]~q\ : std_logic;
SIGNAL \tx_frame[9][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[9][7]~q\ : std_logic;
SIGNAL \out_data~258_combout\ : std_logic;
SIGNAL \rx_frame[13][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[13][7]~q\ : std_logic;
SIGNAL \tx_frame[13][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[13][7]~q\ : std_logic;
SIGNAL \rx_frame[11][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[11][7]~q\ : std_logic;
SIGNAL \tx_frame[5][7]~q\ : std_logic;
SIGNAL \out_data~264_combout\ : std_logic;
SIGNAL \rx_frame[15][7]~q\ : std_logic;
SIGNAL \tx_frame[15][7]~q\ : std_logic;
SIGNAL \tx_frame[7][7]~q\ : std_logic;
SIGNAL \out_data~265_combout\ : std_logic;
SIGNAL \out_data~266_combout\ : std_logic;
SIGNAL \out_data~267_combout\ : std_logic;
SIGNAL \rx_frame[49][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[49][7]~q\ : std_logic;
SIGNAL \tx_frame[49][7]~q\ : std_logic;
SIGNAL \rx_frame[41][7]~q\ : std_logic;
SIGNAL \tx_frame[41][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[41][7]~q\ : std_logic;
SIGNAL \rx_frame[40][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[40][7]~q\ : std_logic;
SIGNAL \tx_frame[40][7]~q\ : std_logic;
SIGNAL \out_data~237_combout\ : std_logic;
SIGNAL \rx_frame[43][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[43][7]~q\ : std_logic;
SIGNAL \tx_frame[43][7]~q\ : std_logic;
SIGNAL \rx_frame[42][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[42][7]~q\ : std_logic;
SIGNAL \tx_frame[42][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[42][7]~q\ : std_logic;
SIGNAL \out_data~238_combout\ : std_logic;
SIGNAL \rx_frame[39][7]~q\ : std_logic;
SIGNAL \tx_frame[39][7]~q\ : std_logic;
SIGNAL \rx_frame[38][7]~q\ : std_logic;
SIGNAL \tx_frame[38][7]~q\ : std_logic;
SIGNAL \rx_frame[36][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[36][7]~q\ : std_logic;
SIGNAL \tx_frame[36][7]~q\ : std_logic;
SIGNAL \out_data~239_combout\ : std_logic;
SIGNAL \rx_frame[37][7]~q\ : std_logic;
SIGNAL \tx_frame[37][7]~q\ : std_logic;
SIGNAL \out_data~240_combout\ : std_logic;
SIGNAL \rx_frame[35][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[35][7]~q\ : std_logic;
SIGNAL \tx_frame[35][7]~q\ : std_logic;
SIGNAL \out_data~241_combout\ : std_logic;
SIGNAL \rx_frame[29][7]~q\ : std_logic;
SIGNAL \tx_frame[33][7]~q\ : std_logic;
SIGNAL \rx_frame[28][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[28][7]~q\ : std_logic;
SIGNAL \tx_frame[32][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[32][7]~q\ : std_logic;
SIGNAL \out_data~242_combout\ : std_logic;
SIGNAL \rx_frame[48][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[48][7]~q\ : std_logic;
SIGNAL \tx_frame[48][7]~q\ : std_logic;
SIGNAL \out_data~243_combout\ : std_logic;
SIGNAL \rx_frame[44][7]~q\ : std_logic;
SIGNAL \tx_frame[44][7]~q\ : std_logic;
SIGNAL \rx_frame[46][7]~feeder_combout\ : std_logic;
SIGNAL \rx_frame[46][7]~q\ : std_logic;
SIGNAL \tx_frame[46][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[46][7]~q\ : std_logic;
SIGNAL \out_data~244_combout\ : std_logic;
SIGNAL \rx_frame[47][7]~q\ : std_logic;
SIGNAL \tx_frame[47][7]~q\ : std_logic;
SIGNAL \rx_frame[45][7]~q\ : std_logic;
SIGNAL \tx_frame[45][7]~feeder_combout\ : std_logic;
SIGNAL \tx_frame[45][7]~q\ : std_logic;
SIGNAL \out_data~245_combout\ : std_logic;
SIGNAL \out_data~246_combout\ : std_logic;
SIGNAL \out_data~268_combout\ : std_logic;
SIGNAL \out_data~269_combout\ : std_logic;
SIGNAL \out_sop~1_combout\ : std_logic;
SIGNAL tx_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL byte_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \ALT_INV_state.PAYLOAD~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_in_data <= in_data;
ww_in_valid <= in_valid;
ww_in_sop <= in_sop;
ww_in_eop <= in_eop;
in_ready <= ww_in_ready;
out_data <= ww_out_data;
out_valid <= ww_out_valid;
out_sop <= ww_out_sop;
out_eop <= ww_out_eop;
ww_out_ready <= out_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_state.SEND~q\ <= NOT \state.SEND~q\;
\ALT_INV_state.PAYLOAD~q\ <= NOT \state.PAYLOAD~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\in_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.SEND~q\,
	devoe => ww_devoe,
	o => \in_ready~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\out_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~38_combout\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\out_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~71_combout\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\out_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~104_combout\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\out_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~137_combout\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\out_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~170_combout\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\out_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~203_combout\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\out_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~236_combout\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\out_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~269_combout\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\out_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.SEND~q\,
	devoe => ww_devoe,
	o => \out_valid~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\out_sop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sop~1_combout\,
	devoe => ww_devoe,
	o => \out_sop~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\out_eop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_eop~0_combout\,
	devoe => ww_devoe,
	o => \out_eop~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\in_sop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_sop,
	o => \in_sop~input_o\);

-- Location: LCCOMB_X18_Y3_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\in_valid~input_o\ & (!\state.IDLE~q\ & \in_sop~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \state.IDLE~q\,
	datad => \in_sop~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\state.IGNORE~q\ & !\state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IGNORE~q\,
	datac => \state.SEND~q\,
	combout => \state~9_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (byte_cnt(3) & (!\Add0~5\)) # (!byte_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!byte_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y4_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (byte_cnt(4) & (\Add0~7\ $ (GND))) # (!byte_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((byte_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y4_N4
\byte_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~8_combout\ = (!\reset~input_o\ & (\Add0~8_combout\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~8_combout\,
	datac => \state.IDLE~q\,
	combout => \byte_cnt~8_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (byte_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => byte_cnt(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X18_Y4_N30
\byte_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~7_combout\ = (!\reset~input_o\ & (\Add0~10_combout\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~10_combout\,
	datac => \state.IDLE~q\,
	combout => \byte_cnt~7_combout\);

-- Location: FF_X18_Y4_N31
\byte_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \byte_cnt~7_combout\,
	ena => \byte_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(5));

-- Location: LCCOMB_X17_Y3_N14
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (byte_cnt(5) & (byte_cnt(1) & !byte_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datac => byte_cnt(1),
	datad => byte_cnt(4),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X17_Y3_N20
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (byte_cnt(3) & (!byte_cnt(2) & !byte_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(3),
	datac => byte_cnt(2),
	datad => byte_cnt(0),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X17_Y3_N12
\Selector415~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector415~0_combout\ = (\state.ICMP~q\ & ((!\Equal12~0_combout\) # (!\Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ICMP~q\,
	datac => \Equal11~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \Selector415~0_combout\);

-- Location: LCCOMB_X18_Y6_N12
\rx_frame[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[3][3]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N8
\rx_frame[0][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][0]~22_combout\ = (\in_valid~input_o\ & (!\reset~input_o\ & (!\state.SEND~q\ & !\state.IGNORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \reset~input_o\,
	datac => \state.SEND~q\,
	datad => \state.IGNORE~q\,
	combout => \rx_frame[0][0]~22_combout\);

-- Location: LCCOMB_X18_Y4_N6
\Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!byte_cnt(4) & byte_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_cnt(4),
	datad => byte_cnt(1),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X17_Y4_N0
\rx_frame[34][0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][0]~40_combout\ = (\state.IDLE~q\ & (!byte_cnt(2) & (\rx_frame[0][0]~22_combout\ & \Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => byte_cnt(2),
	datac => \rx_frame[0][0]~22_combout\,
	datad => \Equal10~1_combout\,
	combout => \rx_frame[34][0]~40_combout\);

-- Location: LCCOMB_X18_Y6_N0
\rx_frame[3][0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][0]~62_combout\ = (!byte_cnt(5) & (byte_cnt(0) & (!byte_cnt(3) & \rx_frame[34][0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(0),
	datac => byte_cnt(3),
	datad => \rx_frame[34][0]~40_combout\,
	combout => \rx_frame[3][0]~62_combout\);

-- Location: FF_X18_Y6_N13
\rx_frame[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][3]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][3]~q\);

-- Location: IOIBUF_X23_Y0_N8
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X18_Y6_N2
\rx_frame[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[3][1]~feeder_combout\);

-- Location: FF_X18_Y6_N3
\rx_frame[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][1]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][1]~q\);

-- Location: IOIBUF_X13_Y0_N1
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X18_Y6_N8
\rx_frame[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[3][0]~feeder_combout\);

-- Location: FF_X18_Y6_N9
\rx_frame[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][0]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][0]~q\);

-- Location: IOIBUF_X21_Y0_N8
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: FF_X18_Y6_N21
\rx_frame[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][2]~q\);

-- Location: LCCOMB_X18_Y6_N30
\mac_ok~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~5_combout\ = (\rx_frame[3][3]~q\) # ((\rx_frame[3][1]~q\) # ((\rx_frame[3][0]~q\) # (!\rx_frame[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[3][3]~q\,
	datab => \rx_frame[3][1]~q\,
	datac => \rx_frame[3][0]~q\,
	datad => \rx_frame[3][2]~q\,
	combout => \mac_ok~5_combout\);

-- Location: LCCOMB_X14_Y6_N22
\rx_frame[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[2][1]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N14
\rx_frame[2][0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][0]~65_combout\ = (!byte_cnt(0) & (!byte_cnt(5) & (!byte_cnt(3) & \rx_frame[34][0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(5),
	datac => byte_cnt(3),
	datad => \rx_frame[34][0]~40_combout\,
	combout => \rx_frame[2][0]~65_combout\);

-- Location: FF_X14_Y6_N23
\rx_frame[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[2][1]~feeder_combout\,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][1]~q\);

-- Location: LCCOMB_X14_Y6_N28
\rx_frame[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[2][3]~feeder_combout\);

-- Location: FF_X14_Y6_N29
\rx_frame[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[2][3]~feeder_combout\,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][3]~q\);

-- Location: LCCOMB_X14_Y6_N8
\rx_frame[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[2][0]~feeder_combout\);

-- Location: FF_X14_Y6_N9
\rx_frame[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[2][0]~feeder_combout\,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][0]~q\);

-- Location: FF_X14_Y6_N3
\rx_frame[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][2]~q\);

-- Location: LCCOMB_X14_Y6_N30
\mac_ok~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~7_combout\ = ((\rx_frame[2][3]~q\) # ((\rx_frame[2][2]~q\) # (!\rx_frame[2][0]~q\))) # (!\rx_frame[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[2][1]~q\,
	datab => \rx_frame[2][3]~q\,
	datac => \rx_frame[2][0]~q\,
	datad => \rx_frame[2][2]~q\,
	combout => \mac_ok~7_combout\);

-- Location: IOIBUF_X7_Y0_N1
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: FF_X14_Y6_N7
\rx_frame[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][4]~q\);

-- Location: IOIBUF_X0_Y11_N22
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X14_Y6_N24
\rx_frame[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[2][7]~feeder_combout\);

-- Location: FF_X14_Y6_N25
\rx_frame[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[2][7]~feeder_combout\,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][7]~q\);

-- Location: IOIBUF_X0_Y11_N15
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: FF_X14_Y6_N27
\rx_frame[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][6]~q\);

-- Location: IOIBUF_X13_Y0_N15
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: LCCOMB_X14_Y6_N18
\rx_frame[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[2][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[2][5]~feeder_combout\);

-- Location: FF_X14_Y6_N19
\rx_frame[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[2][5]~feeder_combout\,
	ena => \rx_frame[2][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[2][5]~q\);

-- Location: LCCOMB_X14_Y6_N16
\mac_ok~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~8_combout\ = (\rx_frame[2][4]~q\) # ((\rx_frame[2][7]~q\) # ((\rx_frame[2][6]~q\) # (\rx_frame[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[2][4]~q\,
	datab => \rx_frame[2][7]~q\,
	datac => \rx_frame[2][6]~q\,
	datad => \rx_frame[2][5]~q\,
	combout => \mac_ok~8_combout\);

-- Location: FF_X18_Y6_N11
\rx_frame[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][7]~q\);

-- Location: LCCOMB_X18_Y6_N24
\rx_frame[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[3][4]~feeder_combout\);

-- Location: FF_X18_Y6_N25
\rx_frame[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][4]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][4]~q\);

-- Location: LCCOMB_X18_Y6_N26
\rx_frame[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[3][5]~feeder_combout\);

-- Location: FF_X18_Y6_N27
\rx_frame[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][5]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][5]~q\);

-- Location: LCCOMB_X18_Y6_N28
\rx_frame[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[3][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[3][6]~feeder_combout\);

-- Location: FF_X18_Y6_N29
\rx_frame[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[3][6]~feeder_combout\,
	ena => \rx_frame[3][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[3][6]~q\);

-- Location: LCCOMB_X18_Y6_N6
\mac_ok~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~6_combout\ = (\rx_frame[3][7]~q\) # ((\rx_frame[3][4]~q\) # ((\rx_frame[3][5]~q\) # (\rx_frame[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[3][7]~q\,
	datab => \rx_frame[3][4]~q\,
	datac => \rx_frame[3][5]~q\,
	datad => \rx_frame[3][6]~q\,
	combout => \mac_ok~6_combout\);

-- Location: LCCOMB_X17_Y5_N30
\mac_ok~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~9_combout\ = (\mac_ok~5_combout\) # ((\mac_ok~7_combout\) # ((\mac_ok~8_combout\) # (\mac_ok~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_ok~5_combout\,
	datab => \mac_ok~7_combout\,
	datac => \mac_ok~8_combout\,
	datad => \mac_ok~6_combout\,
	combout => \mac_ok~9_combout\);

-- Location: LCCOMB_X17_Y4_N26
\rx_frame[5][0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[5][0]~54_combout\ = (!byte_cnt(4) & (\state.IDLE~q\ & !byte_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(4),
	datab => \state.IDLE~q\,
	datad => byte_cnt(1),
	combout => \rx_frame[5][0]~54_combout\);

-- Location: LCCOMB_X17_Y4_N4
\rx_frame[5][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[5][0]~55_combout\ = (!byte_cnt(5) & (\rx_frame[0][0]~22_combout\ & (\rx_frame[5][0]~54_combout\ & !byte_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => \rx_frame[0][0]~22_combout\,
	datac => \rx_frame[5][0]~54_combout\,
	datad => byte_cnt(3),
	combout => \rx_frame[5][0]~55_combout\);

-- Location: LCCOMB_X16_Y7_N2
\rx_frame[5][0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[5][0]~69_combout\ = (byte_cnt(0) & (byte_cnt(2) & \rx_frame[5][0]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datad => \rx_frame[5][0]~55_combout\,
	combout => \rx_frame[5][0]~69_combout\);

-- Location: FF_X16_Y7_N27
\rx_frame[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][0]~q\);

-- Location: FF_X16_Y7_N1
\rx_frame[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][2]~q\);

-- Location: FF_X16_Y7_N5
\rx_frame[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][1]~q\);

-- Location: LCCOMB_X16_Y7_N24
\rx_frame[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[5][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[5][3]~feeder_combout\);

-- Location: FF_X16_Y7_N25
\rx_frame[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[5][3]~feeder_combout\,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][3]~q\);

-- Location: LCCOMB_X16_Y7_N20
\mac_ok~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~0_combout\ = (\rx_frame[5][0]~q\) # (((\rx_frame[5][3]~q\) # (!\rx_frame[5][1]~q\)) # (!\rx_frame[5][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[5][0]~q\,
	datab => \rx_frame[5][2]~q\,
	datac => \rx_frame[5][1]~q\,
	datad => \rx_frame[5][3]~q\,
	combout => \mac_ok~0_combout\);

-- Location: LCCOMB_X16_Y7_N6
\rx_frame[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[5][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[5][7]~feeder_combout\);

-- Location: FF_X16_Y7_N7
\rx_frame[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[5][7]~feeder_combout\,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][7]~q\);

-- Location: FF_X16_Y7_N17
\rx_frame[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][5]~q\);

-- Location: FF_X16_Y7_N9
\rx_frame[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][4]~q\);

-- Location: FF_X16_Y7_N19
\rx_frame[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[5][0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[5][6]~q\);

-- Location: LCCOMB_X16_Y7_N8
\mac_ok~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~1_combout\ = (\rx_frame[5][7]~q\) # ((\rx_frame[5][5]~q\) # ((\rx_frame[5][4]~q\) # (\rx_frame[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[5][7]~q\,
	datab => \rx_frame[5][5]~q\,
	datac => \rx_frame[5][4]~q\,
	datad => \rx_frame[5][6]~q\,
	combout => \mac_ok~1_combout\);

-- Location: LCCOMB_X14_Y8_N26
\rx_frame[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[4][3]~feeder_combout\);

-- Location: LCCOMB_X14_Y8_N4
\rx_frame[4][0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][0]~56_combout\ = (!byte_cnt(0) & (byte_cnt(2) & \rx_frame[5][0]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datad => \rx_frame[5][0]~55_combout\,
	combout => \rx_frame[4][0]~56_combout\);

-- Location: FF_X14_Y8_N27
\rx_frame[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[4][3]~feeder_combout\,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][3]~q\);

-- Location: LCCOMB_X14_Y8_N8
\rx_frame[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[4][1]~feeder_combout\);

-- Location: FF_X14_Y8_N9
\rx_frame[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[4][1]~feeder_combout\,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][1]~q\);

-- Location: LCCOMB_X14_Y8_N14
\rx_frame[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[4][2]~feeder_combout\);

-- Location: FF_X14_Y8_N15
\rx_frame[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[4][2]~feeder_combout\,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][2]~q\);

-- Location: LCCOMB_X14_Y8_N20
\rx_frame[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[4][0]~feeder_combout\);

-- Location: FF_X14_Y8_N21
\rx_frame[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[4][0]~feeder_combout\,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][0]~q\);

-- Location: LCCOMB_X14_Y8_N2
\mac_ok~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~2_combout\ = (\rx_frame[4][3]~q\) # ((\rx_frame[4][1]~q\) # ((!\rx_frame[4][0]~q\) # (!\rx_frame[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[4][3]~q\,
	datab => \rx_frame[4][1]~q\,
	datac => \rx_frame[4][2]~q\,
	datad => \rx_frame[4][0]~q\,
	combout => \mac_ok~2_combout\);

-- Location: LCCOMB_X14_Y8_N22
\rx_frame[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[4][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[4][7]~feeder_combout\);

-- Location: FF_X14_Y8_N23
\rx_frame[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[4][7]~feeder_combout\,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][7]~q\);

-- Location: FF_X14_Y8_N17
\rx_frame[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][4]~q\);

-- Location: FF_X14_Y8_N31
\rx_frame[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][5]~q\);

-- Location: FF_X14_Y8_N29
\rx_frame[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[4][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[4][6]~q\);

-- Location: LCCOMB_X14_Y8_N30
\mac_ok~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~3_combout\ = (\rx_frame[4][7]~q\) # ((\rx_frame[4][4]~q\) # ((\rx_frame[4][5]~q\) # (\rx_frame[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[4][7]~q\,
	datab => \rx_frame[4][4]~q\,
	datac => \rx_frame[4][5]~q\,
	datad => \rx_frame[4][6]~q\,
	combout => \mac_ok~3_combout\);

-- Location: LCCOMB_X17_Y5_N8
\mac_ok~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~4_combout\ = (\mac_ok~0_combout\) # ((\mac_ok~1_combout\) # ((\mac_ok~2_combout\) # (\mac_ok~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_ok~0_combout\,
	datab => \mac_ok~1_combout\,
	datac => \mac_ok~2_combout\,
	datad => \mac_ok~3_combout\,
	combout => \mac_ok~4_combout\);

-- Location: LCCOMB_X18_Y4_N16
\byte_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~2_combout\ = (!byte_cnt(0) & (!byte_cnt(1) & (!byte_cnt(2) & !byte_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(1),
	datac => byte_cnt(2),
	datad => byte_cnt(3),
	combout => \byte_cnt~2_combout\);

-- Location: LCCOMB_X18_Y4_N20
\rx_frame[0][3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][3]~57_combout\ = (!byte_cnt(5) & (!byte_cnt(4) & (\state.IDLE~q\ & \byte_cnt~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(4),
	datac => \state.IDLE~q\,
	datad => \byte_cnt~2_combout\,
	combout => \rx_frame[0][3]~57_combout\);

-- Location: LCCOMB_X21_Y3_N6
\rx_frame[0][0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][0]~58_combout\ = (\rx_frame[0][0]~22_combout\ & ((\rx_frame[0][3]~57_combout\) # ((\in_sop~input_o\ & !\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \state.IDLE~q\,
	datac => \rx_frame[0][3]~57_combout\,
	datad => \rx_frame[0][0]~22_combout\,
	combout => \rx_frame[0][0]~58_combout\);

-- Location: FF_X21_Y3_N27
\rx_frame[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][5]~q\);

-- Location: FF_X21_Y3_N9
\rx_frame[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][7]~q\);

-- Location: FF_X21_Y3_N23
\rx_frame[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][6]~q\);

-- Location: LCCOMB_X21_Y3_N2
\rx_frame[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[0][4]~feeder_combout\);

-- Location: FF_X21_Y3_N3
\rx_frame[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[0][4]~feeder_combout\,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][4]~q\);

-- Location: LCCOMB_X21_Y3_N30
\mac_ok~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~13_combout\ = (\rx_frame[0][5]~q\) # ((\rx_frame[0][7]~q\) # ((\rx_frame[0][6]~q\) # (\rx_frame[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[0][5]~q\,
	datab => \rx_frame[0][7]~q\,
	datac => \rx_frame[0][6]~q\,
	datad => \rx_frame[0][4]~q\,
	combout => \mac_ok~13_combout\);

-- Location: LCCOMB_X21_Y3_N10
\rx_frame[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[0][3]~feeder_combout\);

-- Location: FF_X21_Y3_N11
\rx_frame[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[0][3]~feeder_combout\,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][3]~q\);

-- Location: LCCOMB_X21_Y3_N28
\rx_frame[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[0][1]~feeder_combout\);

-- Location: FF_X21_Y3_N29
\rx_frame[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[0][1]~feeder_combout\,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][1]~q\);

-- Location: LCCOMB_X21_Y3_N14
\rx_frame[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[0][0]~feeder_combout\);

-- Location: FF_X21_Y3_N15
\rx_frame[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[0][0]~feeder_combout\,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][0]~q\);

-- Location: LCCOMB_X21_Y3_N16
\rx_frame[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[0][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[0][2]~feeder_combout\);

-- Location: FF_X21_Y3_N17
\rx_frame[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[0][2]~feeder_combout\,
	ena => \rx_frame[0][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[0][2]~q\);

-- Location: LCCOMB_X21_Y3_N18
\mac_ok~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~12_combout\ = (\rx_frame[0][3]~q\) # ((\rx_frame[0][1]~q\) # ((\rx_frame[0][2]~q\) # (!\rx_frame[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[0][3]~q\,
	datab => \rx_frame[0][1]~q\,
	datac => \rx_frame[0][0]~q\,
	datad => \rx_frame[0][2]~q\,
	combout => \mac_ok~12_combout\);

-- Location: LCCOMB_X18_Y4_N0
\rx_frame[49][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][0]~21_combout\ = (byte_cnt(0) & !byte_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_cnt(0),
	datad => byte_cnt(2),
	combout => \rx_frame[49][0]~21_combout\);

-- Location: LCCOMB_X17_Y4_N18
\rx_frame[49][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][0]~23_combout\ = (\state.IDLE~q\ & (!byte_cnt(1) & (\rx_frame[0][0]~22_combout\ & !byte_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => byte_cnt(1),
	datac => \rx_frame[0][0]~22_combout\,
	datad => byte_cnt(3),
	combout => \rx_frame[49][0]~23_combout\);

-- Location: LCCOMB_X22_Y3_N22
\rx_frame[1][0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][0]~70_combout\ = (!byte_cnt(4) & (\rx_frame[49][0]~21_combout\ & (!byte_cnt(5) & \rx_frame[49][0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(4),
	datab => \rx_frame[49][0]~21_combout\,
	datac => byte_cnt(5),
	datad => \rx_frame[49][0]~23_combout\,
	combout => \rx_frame[1][0]~70_combout\);

-- Location: FF_X22_Y3_N11
\rx_frame[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][6]~q\);

-- Location: FF_X22_Y3_N1
\rx_frame[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][4]~q\);

-- Location: FF_X22_Y3_N15
\rx_frame[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][7]~q\);

-- Location: LCCOMB_X22_Y3_N16
\rx_frame[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[1][5]~feeder_combout\);

-- Location: FF_X22_Y3_N17
\rx_frame[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[1][5]~feeder_combout\,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][5]~q\);

-- Location: LCCOMB_X22_Y3_N30
\mac_ok~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~11_combout\ = (\rx_frame[1][6]~q\) # ((\rx_frame[1][4]~q\) # ((\rx_frame[1][7]~q\) # (\rx_frame[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[1][6]~q\,
	datab => \rx_frame[1][4]~q\,
	datac => \rx_frame[1][7]~q\,
	datad => \rx_frame[1][5]~q\,
	combout => \mac_ok~11_combout\);

-- Location: LCCOMB_X22_Y3_N24
\rx_frame[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[1][0]~feeder_combout\);

-- Location: FF_X22_Y3_N25
\rx_frame[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[1][0]~feeder_combout\,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][0]~q\);

-- Location: LCCOMB_X22_Y3_N4
\rx_frame[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[1][3]~feeder_combout\);

-- Location: FF_X22_Y3_N5
\rx_frame[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[1][3]~feeder_combout\,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][3]~q\);

-- Location: LCCOMB_X22_Y3_N26
\rx_frame[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[1][1]~feeder_combout\);

-- Location: FF_X22_Y3_N27
\rx_frame[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[1][1]~feeder_combout\,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][1]~q\);

-- Location: LCCOMB_X22_Y3_N18
\rx_frame[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[1][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[1][2]~feeder_combout\);

-- Location: FF_X22_Y3_N19
\rx_frame[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[1][2]~feeder_combout\,
	ena => \rx_frame[1][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[1][2]~q\);

-- Location: LCCOMB_X22_Y3_N28
\mac_ok~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~10_combout\ = (\rx_frame[1][0]~q\) # ((\rx_frame[1][3]~q\) # ((\rx_frame[1][2]~q\) # (!\rx_frame[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[1][0]~q\,
	datab => \rx_frame[1][3]~q\,
	datac => \rx_frame[1][1]~q\,
	datad => \rx_frame[1][2]~q\,
	combout => \mac_ok~10_combout\);

-- Location: LCCOMB_X21_Y3_N24
\mac_ok~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~14_combout\ = (\mac_ok~13_combout\) # ((\mac_ok~12_combout\) # ((\mac_ok~11_combout\) # (\mac_ok~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_ok~13_combout\,
	datab => \mac_ok~12_combout\,
	datac => \mac_ok~11_combout\,
	datad => \mac_ok~10_combout\,
	combout => \mac_ok~14_combout\);

-- Location: LCCOMB_X17_Y5_N24
\mac_ok~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_ok~15_combout\ = (\mac_ok~9_combout\) # ((\mac_ok~4_combout\) # (\mac_ok~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_ok~9_combout\,
	datac => \mac_ok~4_combout\,
	datad => \mac_ok~14_combout\,
	combout => \mac_ok~15_combout\);

-- Location: LCCOMB_X17_Y3_N2
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!byte_cnt(3) & (!byte_cnt(2) & !byte_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(3),
	datac => byte_cnt(2),
	datad => byte_cnt(0),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X16_Y3_N14
\Selector414~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector414~1_combout\ = (\state.IP~q\ & ((!\Equal11~1_combout\) # (!\Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IP~q\,
	datac => \Equal11~0_combout\,
	datad => \Equal11~1_combout\,
	combout => \Selector414~1_combout\);

-- Location: LCCOMB_X17_Y3_N24
\Selector414~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector414~2_combout\ = (\Selector414~1_combout\) # ((\Selector414~0_combout\ & !\mac_ok~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector414~0_combout\,
	datac => \mac_ok~15_combout\,
	datad => \Selector414~1_combout\,
	combout => \Selector414~2_combout\);

-- Location: FF_X17_Y3_N25
\state.IP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector414~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IP~q\);

-- Location: LCCOMB_X17_Y3_N18
\Selector418~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector418~0_combout\ = (\state.IP~q\ & (\Equal11~0_combout\ & \Equal11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IP~q\,
	datac => \Equal11~0_combout\,
	datad => \Equal11~1_combout\,
	combout => \Selector418~0_combout\);

-- Location: LCCOMB_X14_Y5_N26
\rx_frame[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[30][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[30][5]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N16
\rx_frame[34][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][0]~17_combout\ = (\in_valid~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_valid~input_o\,
	datad => \reset~input_o\,
	combout => \rx_frame[34][0]~17_combout\);

-- Location: LCCOMB_X17_Y4_N22
\rx_frame[34][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][0]~18_combout\ = (\rx_frame[34][0]~17_combout\ & (\state.IDLE~q\ & (!\state.SEND~q\ & !\state.IGNORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[34][0]~17_combout\,
	datab => \state.IDLE~q\,
	datac => \state.SEND~q\,
	datad => \state.IGNORE~q\,
	combout => \rx_frame[34][0]~18_combout\);

-- Location: LCCOMB_X17_Y4_N12
\rx_frame[27][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][0]~25_combout\ = (!byte_cnt(5) & (byte_cnt(1) & (\rx_frame[34][0]~18_combout\ & byte_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(1),
	datac => \rx_frame[34][0]~18_combout\,
	datad => byte_cnt(4),
	combout => \rx_frame[27][0]~25_combout\);

-- Location: LCCOMB_X14_Y5_N2
\rx_frame[30][0]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[30][0]~77_combout\ = (byte_cnt(3) & (byte_cnt(2) & (\rx_frame[27][0]~25_combout\ & !byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(2),
	datac => \rx_frame[27][0]~25_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[30][0]~77_combout\);

-- Location: FF_X14_Y5_N27
\rx_frame[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[30][5]~feeder_combout\,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][5]~q\);

-- Location: LCCOMB_X14_Y5_N16
\rx_frame[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[30][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[30][4]~feeder_combout\);

-- Location: FF_X14_Y5_N17
\rx_frame[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[30][4]~feeder_combout\,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][4]~q\);

-- Location: LCCOMB_X14_Y5_N18
\rx_frame[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[30][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[30][7]~feeder_combout\);

-- Location: FF_X14_Y5_N19
\rx_frame[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[30][7]~feeder_combout\,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][7]~q\);

-- Location: FF_X14_Y5_N1
\rx_frame[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][6]~q\);

-- Location: LCCOMB_X14_Y5_N8
\ip_ok~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~9_combout\ = (\rx_frame[30][5]~q\) # ((\rx_frame[30][4]~q\) # ((!\rx_frame[30][6]~q\) # (!\rx_frame[30][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[30][5]~q\,
	datab => \rx_frame[30][4]~q\,
	datac => \rx_frame[30][7]~q\,
	datad => \rx_frame[30][6]~q\,
	combout => \ip_ok~9_combout\);

-- Location: LCCOMB_X14_Y5_N6
\rx_frame[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[30][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[30][2]~feeder_combout\);

-- Location: FF_X14_Y5_N7
\rx_frame[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[30][2]~feeder_combout\,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][2]~q\);

-- Location: FF_X14_Y5_N21
\rx_frame[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][3]~q\);

-- Location: FF_X14_Y5_N23
\rx_frame[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][0]~q\);

-- Location: FF_X14_Y5_N25
\rx_frame[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[30][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[30][1]~q\);

-- Location: LCCOMB_X14_Y5_N30
\ip_ok~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~8_combout\ = (\rx_frame[30][2]~q\) # ((\rx_frame[30][3]~q\) # ((\rx_frame[30][0]~q\) # (\rx_frame[30][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[30][2]~q\,
	datab => \rx_frame[30][3]~q\,
	datac => \rx_frame[30][0]~q\,
	datad => \rx_frame[30][1]~q\,
	combout => \ip_ok~8_combout\);

-- Location: LCCOMB_X16_Y4_N26
\rx_frame[32][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[32][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[32][5]~feeder_combout\);

-- Location: LCCOMB_X18_Y4_N14
\rx_frame[36][0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][0]~30_combout\ = (!byte_cnt(4) & (byte_cnt(5) & !byte_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(4),
	datac => byte_cnt(5),
	datad => byte_cnt(1),
	combout => \rx_frame[36][0]~30_combout\);

-- Location: LCCOMB_X21_Y4_N10
\rx_frame[36][0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][0]~31_combout\ = (\state.IDLE~q\ & (!byte_cnt(3) & (\rx_frame[36][0]~30_combout\ & \rx_frame[0][0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => byte_cnt(3),
	datac => \rx_frame[36][0]~30_combout\,
	datad => \rx_frame[0][0]~22_combout\,
	combout => \rx_frame[36][0]~31_combout\);

-- Location: LCCOMB_X21_Y4_N16
\rx_frame[32][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[32][0]~32_combout\ = (!byte_cnt(2) & (!byte_cnt(0) & \rx_frame[36][0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datad => \rx_frame[36][0]~31_combout\,
	combout => \rx_frame[32][0]~32_combout\);

-- Location: FF_X16_Y4_N27
\rx_frame[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[32][5]~feeder_combout\,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][5]~q\);

-- Location: LCCOMB_X16_Y4_N14
\rx_frame[32][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[32][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[32][7]~feeder_combout\);

-- Location: FF_X16_Y4_N15
\rx_frame[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[32][7]~feeder_combout\,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][7]~q\);

-- Location: FF_X16_Y4_N25
\rx_frame[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][4]~q\);

-- Location: FF_X16_Y4_N29
\rx_frame[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][6]~q\);

-- Location: LCCOMB_X16_Y4_N24
\ip_ok~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~3_combout\ = (\rx_frame[32][5]~q\) # ((\rx_frame[32][7]~q\) # ((\rx_frame[32][4]~q\) # (\rx_frame[32][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[32][5]~q\,
	datab => \rx_frame[32][7]~q\,
	datac => \rx_frame[32][4]~q\,
	datad => \rx_frame[32][6]~q\,
	combout => \ip_ok~3_combout\);

-- Location: FF_X16_Y4_N13
\rx_frame[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][0]~q\);

-- Location: LCCOMB_X16_Y4_N16
\rx_frame[32][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[32][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[32][3]~feeder_combout\);

-- Location: FF_X16_Y4_N17
\rx_frame[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[32][3]~feeder_combout\,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][3]~q\);

-- Location: FF_X16_Y4_N21
\rx_frame[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][1]~q\);

-- Location: LCCOMB_X16_Y4_N0
\rx_frame[32][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[32][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[32][2]~feeder_combout\);

-- Location: FF_X16_Y4_N1
\rx_frame[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[32][2]~feeder_combout\,
	ena => \rx_frame[32][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[32][2]~q\);

-- Location: LCCOMB_X16_Y4_N20
\ip_ok~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~2_combout\ = ((\rx_frame[32][3]~q\) # ((\rx_frame[32][1]~q\) # (\rx_frame[32][2]~q\))) # (!\rx_frame[32][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[32][0]~q\,
	datab => \rx_frame[32][3]~q\,
	datac => \rx_frame[32][1]~q\,
	datad => \rx_frame[32][2]~q\,
	combout => \ip_ok~2_combout\);

-- Location: LCCOMB_X12_Y5_N22
\rx_frame[33][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[33][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[33][2]~feeder_combout\);

-- Location: LCCOMB_X13_Y4_N16
\rx_frame[33][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[33][0]~24_combout\ = (byte_cnt(5) & (!byte_cnt(4) & (\rx_frame[49][0]~21_combout\ & \rx_frame[49][0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(4),
	datac => \rx_frame[49][0]~21_combout\,
	datad => \rx_frame[49][0]~23_combout\,
	combout => \rx_frame[33][0]~24_combout\);

-- Location: FF_X12_Y5_N23
\rx_frame[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[33][2]~feeder_combout\,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][2]~q\);

-- Location: FF_X12_Y5_N9
\rx_frame[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][0]~q\);

-- Location: FF_X12_Y5_N31
\rx_frame[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][1]~q\);

-- Location: FF_X12_Y5_N21
\rx_frame[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][3]~q\);

-- Location: LCCOMB_X12_Y5_N30
\ip_ok~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~0_combout\ = ((\rx_frame[33][0]~q\) # ((\rx_frame[33][1]~q\) # (\rx_frame[33][3]~q\))) # (!\rx_frame[33][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[33][2]~q\,
	datab => \rx_frame[33][0]~q\,
	datac => \rx_frame[33][1]~q\,
	datad => \rx_frame[33][3]~q\,
	combout => \ip_ok~0_combout\);

-- Location: LCCOMB_X14_Y3_N22
\rx_frame[33][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[33][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[33][4]~feeder_combout\);

-- Location: FF_X14_Y3_N23
\rx_frame[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[33][4]~feeder_combout\,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][4]~q\);

-- Location: LCCOMB_X14_Y3_N8
\rx_frame[33][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[33][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[33][6]~feeder_combout\);

-- Location: FF_X14_Y3_N9
\rx_frame[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[33][6]~feeder_combout\,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][6]~q\);

-- Location: FF_X14_Y3_N15
\rx_frame[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][7]~q\);

-- Location: LCCOMB_X14_Y3_N26
\rx_frame[33][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[33][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[33][5]~feeder_combout\);

-- Location: FF_X14_Y3_N27
\rx_frame[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[33][5]~feeder_combout\,
	ena => \rx_frame[33][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[33][5]~q\);

-- Location: LCCOMB_X14_Y3_N14
\ip_ok~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~1_combout\ = (\rx_frame[33][4]~q\) # (((\rx_frame[33][7]~q\) # (!\rx_frame[33][5]~q\)) # (!\rx_frame[33][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[33][4]~q\,
	datab => \rx_frame[33][6]~q\,
	datac => \rx_frame[33][7]~q\,
	datad => \rx_frame[33][5]~q\,
	combout => \ip_ok~1_combout\);

-- Location: LCCOMB_X16_Y4_N4
\ip_ok~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~4_combout\ = (\ip_ok~3_combout\) # ((\ip_ok~2_combout\) # ((\ip_ok~0_combout\) # (\ip_ok~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ip_ok~3_combout\,
	datab => \ip_ok~2_combout\,
	datac => \ip_ok~0_combout\,
	datad => \ip_ok~1_combout\,
	combout => \ip_ok~4_combout\);

-- Location: LCCOMB_X16_Y4_N6
\rx_frame[31][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[31][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[31][2]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N30
\rx_frame[31][0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[31][0]~33_combout\ = (byte_cnt(0) & (byte_cnt(3) & (\rx_frame[27][0]~25_combout\ & byte_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(3),
	datac => \rx_frame[27][0]~25_combout\,
	datad => byte_cnt(2),
	combout => \rx_frame[31][0]~33_combout\);

-- Location: FF_X16_Y4_N7
\rx_frame[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[31][2]~feeder_combout\,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][2]~q\);

-- Location: LCCOMB_X16_Y4_N18
\rx_frame[31][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[31][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[31][3]~feeder_combout\);

-- Location: FF_X16_Y4_N19
\rx_frame[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[31][3]~feeder_combout\,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][3]~q\);

-- Location: LCCOMB_X16_Y4_N10
\ip_ok~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~5_combout\ = (\rx_frame[31][2]~q\) # (!\rx_frame[31][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[31][2]~q\,
	datad => \rx_frame[31][3]~q\,
	combout => \ip_ok~5_combout\);

-- Location: FF_X16_Y4_N11
\rx_frame[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][1]~q\);

-- Location: FF_X16_Y4_N3
\rx_frame[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][0]~q\);

-- Location: LCCOMB_X12_Y4_N22
\rx_frame[31][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[31][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[31][4]~feeder_combout\);

-- Location: FF_X12_Y4_N23
\rx_frame[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[31][4]~feeder_combout\,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][4]~q\);

-- Location: FF_X12_Y4_N3
\rx_frame[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][6]~q\);

-- Location: FF_X12_Y4_N31
\rx_frame[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][5]~q\);

-- Location: LCCOMB_X12_Y4_N12
\rx_frame[31][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[31][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[31][7]~feeder_combout\);

-- Location: FF_X12_Y4_N13
\rx_frame[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[31][7]~feeder_combout\,
	ena => \rx_frame[31][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[31][7]~q\);

-- Location: LCCOMB_X12_Y4_N6
\ip_ok~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~6_combout\ = (\rx_frame[31][4]~q\) # ((\rx_frame[31][6]~q\) # ((!\rx_frame[31][7]~q\) # (!\rx_frame[31][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[31][4]~q\,
	datab => \rx_frame[31][6]~q\,
	datac => \rx_frame[31][5]~q\,
	datad => \rx_frame[31][7]~q\,
	combout => \ip_ok~6_combout\);

-- Location: LCCOMB_X16_Y4_N2
\ip_ok~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~7_combout\ = (\ip_ok~5_combout\) # ((\rx_frame[31][1]~q\) # ((\rx_frame[31][0]~q\) # (\ip_ok~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ip_ok~5_combout\,
	datab => \rx_frame[31][1]~q\,
	datac => \rx_frame[31][0]~q\,
	datad => \ip_ok~6_combout\,
	combout => \ip_ok~7_combout\);

-- Location: LCCOMB_X16_Y4_N22
ip_ok : cycloneive_lcell_comb
-- Equation(s):
-- \ip_ok~combout\ = (\ip_ok~9_combout\) # ((\ip_ok~8_combout\) # ((\ip_ok~4_combout\) # (\ip_ok~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ip_ok~9_combout\,
	datab => \ip_ok~8_combout\,
	datac => \ip_ok~4_combout\,
	datad => \ip_ok~7_combout\,
	combout => \ip_ok~combout\);

-- Location: LCCOMB_X17_Y3_N10
\Selector415~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector415~1_combout\ = (\Selector415~0_combout\) # ((\Selector418~0_combout\ & !\ip_ok~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector415~0_combout\,
	datab => \Selector418~0_combout\,
	datad => \ip_ok~combout\,
	combout => \Selector415~1_combout\);

-- Location: FF_X17_Y3_N11
\state.ICMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector415~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ICMP~q\);

-- Location: LCCOMB_X17_Y3_N26
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!byte_cnt(5) & (byte_cnt(3) & (byte_cnt(2) & !byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(3),
	datac => byte_cnt(2),
	datad => byte_cnt(0),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X17_Y3_N4
\Selector413~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector413~0_combout\ = (\Selector5~0_combout\) # ((\state.ETH~q\ & ((!\Equal10~1_combout\) # (!\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal10~1_combout\,
	datac => \state.ETH~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector413~0_combout\);

-- Location: FF_X17_Y3_N5
\state.ETH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector413~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ETH~q\);

-- Location: LCCOMB_X17_Y3_N30
\byte_cnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt[5]~1_combout\ = (\state.ICMP~q\) # ((\state.ETH~q\) # ((\state.PAYLOAD~q\) # (\state.IP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ICMP~q\,
	datab => \state.ETH~q\,
	datac => \state.PAYLOAD~q\,
	datad => \state.IP~q\,
	combout => \byte_cnt[5]~1_combout\);

-- Location: LCCOMB_X18_Y4_N24
\byte_cnt[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt[5]~4_combout\ = (\reset~input_o\) # ((\state~9_combout\ & ((\byte_cnt~3_combout\) # (!\byte_cnt[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_cnt~3_combout\,
	datab => \state~9_combout\,
	datac => \reset~input_o\,
	datad => \byte_cnt[5]~1_combout\,
	combout => \byte_cnt[5]~4_combout\);

-- Location: FF_X18_Y4_N5
\byte_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \byte_cnt~8_combout\,
	ena => \byte_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(4));

-- Location: LCCOMB_X18_Y4_N10
\byte_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~3_combout\ = (\in_valid~input_o\ & (((\byte_cnt~2_combout\) # (!byte_cnt(5))) # (!byte_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => byte_cnt(4),
	datac => byte_cnt(5),
	datad => \byte_cnt~2_combout\,
	combout => \byte_cnt~3_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = byte_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(byte_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X18_Y4_N2
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\byte_cnt[5]~1_combout\ & ((\byte_cnt~3_combout\ & ((\Add0~0_combout\))) # (!\byte_cnt~3_combout\ & (byte_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_cnt~3_combout\,
	datab => \byte_cnt[5]~1_combout\,
	datac => byte_cnt(0),
	datad => \Add0~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X18_Y4_N12
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~0_combout\) # ((\Selector5~1_combout\) # ((!\state~9_combout\ & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \state~9_combout\,
	datac => byte_cnt(0),
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X18_Y4_N13
\byte_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(0));

-- Location: LCCOMB_X19_Y4_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (byte_cnt(1) & (!\Add0~1\)) # (!byte_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!byte_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y4_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (byte_cnt(2) & (\Add0~3\ $ (GND))) # (!byte_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((byte_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y4_N28
\byte_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~6_combout\ = (!\reset~input_o\ & (\Add0~4_combout\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~4_combout\,
	datac => \state.IDLE~q\,
	combout => \byte_cnt~6_combout\);

-- Location: FF_X18_Y4_N29
\byte_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \byte_cnt~6_combout\,
	ena => \byte_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(2));

-- Location: LCCOMB_X17_Y4_N24
\byte_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~5_combout\ = (\state.IDLE~q\ & (\Add0~6_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \Add0~6_combout\,
	datad => \reset~input_o\,
	combout => \byte_cnt~5_combout\);

-- Location: FF_X17_Y4_N25
\byte_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \byte_cnt~5_combout\,
	ena => \byte_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(3));

-- Location: LCCOMB_X17_Y5_N10
\rx_frame[34][0]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][0]~74_combout\ = (!byte_cnt(3) & (\rx_frame[34][0]~40_combout\ & (!byte_cnt(0) & byte_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => \rx_frame[34][0]~40_combout\,
	datac => byte_cnt(0),
	datad => byte_cnt(5),
	combout => \rx_frame[34][0]~74_combout\);

-- Location: FF_X17_Y5_N27
\rx_frame[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][3]~q\);

-- Location: FF_X17_Y5_N21
\rx_frame[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][0]~q\);

-- Location: FF_X17_Y5_N5
\rx_frame[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][2]~q\);

-- Location: LCCOMB_X17_Y5_N6
\rx_frame[34][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[34][1]~feeder_combout\);

-- Location: FF_X17_Y5_N7
\rx_frame[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[34][1]~feeder_combout\,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][1]~q\);

-- Location: LCCOMB_X17_Y5_N4
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = ((\rx_frame[34][0]~q\) # ((\rx_frame[34][2]~q\) # (\rx_frame[34][1]~q\))) # (!\rx_frame[34][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[34][3]~q\,
	datab => \rx_frame[34][0]~q\,
	datac => \rx_frame[34][2]~q\,
	datad => \rx_frame[34][1]~q\,
	combout => \Equal13~0_combout\);

-- Location: FF_X17_Y5_N23
\rx_frame[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][5]~q\);

-- Location: FF_X17_Y5_N29
\rx_frame[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][4]~q\);

-- Location: FF_X17_Y5_N17
\rx_frame[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][6]~q\);

-- Location: LCCOMB_X17_Y5_N2
\rx_frame[34][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[34][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[34][7]~feeder_combout\);

-- Location: FF_X17_Y5_N3
\rx_frame[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[34][7]~feeder_combout\,
	ena => \rx_frame[34][0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[34][7]~q\);

-- Location: LCCOMB_X17_Y5_N16
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (\rx_frame[34][5]~q\) # ((\rx_frame[34][4]~q\) # ((\rx_frame[34][6]~q\) # (\rx_frame[34][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[34][5]~q\,
	datab => \rx_frame[34][4]~q\,
	datac => \rx_frame[34][6]~q\,
	datad => \rx_frame[34][7]~q\,
	combout => \Equal13~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\in_eop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_eop,
	o => \in_eop~input_o\);

-- Location: LCCOMB_X16_Y3_N16
\tx_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt~23_combout\ = (\in_eop~input_o\ & \in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datad => \in_valid~input_o\,
	combout => \tx_cnt~23_combout\);

-- Location: LCCOMB_X16_Y3_N8
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

-- Location: FF_X16_Y3_N17
frame_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt~23_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~input_o\,
	sload => \ALT_INV_state.PAYLOAD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_done~q\);

-- Location: LCCOMB_X18_Y3_N10
\Selector416~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector416~1_combout\ = (\state.PAYLOAD~q\ & !\frame_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PAYLOAD~q\,
	datad => \frame_done~q\,
	combout => \Selector416~1_combout\);

-- Location: LCCOMB_X17_Y3_N28
\Selector416~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector416~0_combout\ = (\state.ICMP~q\ & (\Equal11~0_combout\ & \Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ICMP~q\,
	datac => \Equal11~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \Selector416~0_combout\);

-- Location: LCCOMB_X17_Y3_N6
\Selector416~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector416~2_combout\ = (\Selector416~1_combout\) # ((!\Equal13~0_combout\ & (!\Equal13~1_combout\ & \Selector416~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \Selector416~1_combout\,
	datad => \Selector416~0_combout\,
	combout => \Selector416~2_combout\);

-- Location: FF_X18_Y3_N13
\state.PAYLOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector416~2_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.PAYLOAD~q\);

-- Location: LCCOMB_X18_Y3_N8
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\state.PAYLOAD~q\ & \frame_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PAYLOAD~q\,
	datad => \frame_done~q\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X17_Y3_N16
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\Equal11~0_combout\ & ((\state.ICMP~q\ & ((\Equal12~0_combout\))) # (!\state.ICMP~q\ & (\Equal11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ICMP~q\,
	datab => \Equal11~1_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \state~10_combout\);

-- Location: LCCOMB_X17_Y3_N22
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.IDLE~q\ & ((\Selector414~0_combout\) # ((!\state.ETH~q\ & \state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.ETH~q\,
	datac => \Selector414~0_combout\,
	datad => \state~10_combout\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X17_Y3_N0
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (!\state.PAYLOAD~q\ & (\state~9_combout\ & ((\state~11_combout\) # (\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PAYLOAD~q\,
	datab => \state~9_combout\,
	datac => \state~11_combout\,
	datad => \Selector5~0_combout\,
	combout => \state~12_combout\);

-- Location: IOIBUF_X18_Y0_N15
\out_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

-- Location: LCCOMB_X18_Y3_N2
\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\reset~input_o\) # ((\state.IGNORE~q\ & ((\frame_done~q\))) # (!\state.IGNORE~q\ & (\out_ready~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \frame_done~q\,
	datac => \state.IGNORE~q\,
	datad => \reset~input_o\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X19_Y3_N12
\tx_cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[0]~6_combout\ = tx_cnt(0) $ (VCC)
-- \tx_cnt[0]~7\ = CARRY(tx_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datad => VCC,
	combout => \tx_cnt[0]~6_combout\,
	cout => \tx_cnt[0]~7\);

-- Location: LCCOMB_X19_Y3_N30
\tx_cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~12_combout\ = (\reset~input_o\) # (!\state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.SEND~q\,
	datad => \reset~input_o\,
	combout => \tx_cnt[2]~12_combout\);

-- Location: LCCOMB_X18_Y3_N24
\tx_cnt[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~13_combout\ = (!\reset~input_o\ & (((!\state.PAYLOAD~q\) # (!\in_eop~input_o\)) # (!\in_valid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \reset~input_o\,
	datac => \in_eop~input_o\,
	datad => \state.PAYLOAD~q\,
	combout => \tx_cnt[2]~13_combout\);

-- Location: LCCOMB_X19_Y3_N20
\tx_cnt[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[4]~19_combout\ = (tx_cnt(4) & (\tx_cnt[3]~18\ $ (GND))) # (!tx_cnt(4) & (!\tx_cnt[3]~18\ & VCC))
-- \tx_cnt[4]~20\ = CARRY((tx_cnt(4) & !\tx_cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(4),
	datad => VCC,
	cin => \tx_cnt[3]~18\,
	combout => \tx_cnt[4]~19_combout\,
	cout => \tx_cnt[4]~20\);

-- Location: LCCOMB_X19_Y3_N22
\tx_cnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[5]~21_combout\ = tx_cnt(5) $ (\tx_cnt[4]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(5),
	cin => \tx_cnt[4]~20\,
	combout => \tx_cnt[5]~21_combout\);

-- Location: FF_X19_Y3_N23
\tx_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[5]~21_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(5));

-- Location: LCCOMB_X19_Y3_N8
\tx_cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~14_combout\ = (tx_cnt(5) & tx_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_cnt(5),
	datad => tx_cnt(4),
	combout => \tx_cnt[2]~14_combout\);

-- Location: LCCOMB_X19_Y3_N0
\out_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~15_combout\ = (!tx_cnt(1) & !tx_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_cnt(1),
	datad => tx_cnt(2),
	combout => \out_data~15_combout\);

-- Location: LCCOMB_X19_Y3_N2
\tx_cnt[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~15_combout\ = (\tx_cnt[2]~14_combout\ & ((tx_cnt(0)) # ((tx_cnt(3)) # (!\out_data~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(3),
	datac => \tx_cnt[2]~14_combout\,
	datad => \out_data~15_combout\,
	combout => \tx_cnt[2]~15_combout\);

-- Location: LCCOMB_X19_Y3_N4
\tx_cnt[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~16_combout\ = ((\out_ready~input_o\ & (\state.SEND~q\ & !\tx_cnt[2]~15_combout\))) # (!\tx_cnt[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \tx_cnt[2]~13_combout\,
	datac => \state.SEND~q\,
	datad => \tx_cnt[2]~15_combout\,
	combout => \tx_cnt[2]~16_combout\);

-- Location: FF_X19_Y3_N13
\tx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[0]~6_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(0));

-- Location: LCCOMB_X19_Y3_N14
\tx_cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[1]~8_combout\ = (tx_cnt(1) & (!\tx_cnt[0]~7\)) # (!tx_cnt(1) & ((\tx_cnt[0]~7\) # (GND)))
-- \tx_cnt[1]~9\ = CARRY((!\tx_cnt[0]~7\) # (!tx_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(1),
	datad => VCC,
	cin => \tx_cnt[0]~7\,
	combout => \tx_cnt[1]~8_combout\,
	cout => \tx_cnt[1]~9\);

-- Location: FF_X19_Y3_N15
\tx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[1]~8_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(1));

-- Location: LCCOMB_X19_Y3_N16
\tx_cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[2]~10_combout\ = (tx_cnt(2) & (\tx_cnt[1]~9\ $ (GND))) # (!tx_cnt(2) & (!\tx_cnt[1]~9\ & VCC))
-- \tx_cnt[2]~11\ = CARRY((tx_cnt(2) & !\tx_cnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(2),
	datad => VCC,
	cin => \tx_cnt[1]~9\,
	combout => \tx_cnt[2]~10_combout\,
	cout => \tx_cnt[2]~11\);

-- Location: FF_X19_Y3_N17
\tx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[2]~10_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(2));

-- Location: LCCOMB_X19_Y3_N18
\tx_cnt[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_cnt[3]~17_combout\ = (tx_cnt(3) & (!\tx_cnt[2]~11\)) # (!tx_cnt(3) & ((\tx_cnt[2]~11\) # (GND)))
-- \tx_cnt[3]~18\ = CARRY((!\tx_cnt[2]~11\) # (!tx_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(3),
	datad => VCC,
	cin => \tx_cnt[2]~11\,
	combout => \tx_cnt[3]~17_combout\,
	cout => \tx_cnt[3]~18\);

-- Location: FF_X19_Y3_N19
\tx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[3]~17_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(3));

-- Location: FF_X19_Y3_N21
\tx_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_cnt[4]~19_combout\,
	sclr => \tx_cnt[2]~12_combout\,
	ena => \tx_cnt[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_cnt(4));

-- Location: LCCOMB_X18_Y3_N6
\out_sop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_sop~0_combout\ = (!tx_cnt(3) & (!tx_cnt(2) & (\state.SEND~q\ & !tx_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(2),
	datac => \state.SEND~q\,
	datad => tx_cnt(1),
	combout => \out_sop~0_combout\);

-- Location: LCCOMB_X18_Y3_N28
\out_eop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_eop~0_combout\ = (tx_cnt(4) & (tx_cnt(5) & (tx_cnt(0) & \out_sop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(4),
	datab => tx_cnt(5),
	datac => tx_cnt(0),
	datad => \out_sop~0_combout\,
	combout => \out_eop~0_combout\);

-- Location: LCCOMB_X18_Y3_N16
\state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\state.IGNORE~q\ & (((\state~17_combout\)))) # (!\state.IGNORE~q\ & ((\out_eop~0_combout\ & ((\state~17_combout\))) # (!\out_eop~0_combout\ & (\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state~17_combout\,
	datac => \state.IGNORE~q\,
	datad => \out_eop~0_combout\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X17_Y4_N14
\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\state~18_combout\ & ((\state~13_combout\) # ((\state~12_combout\) # (\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~13_combout\,
	datab => \state~12_combout\,
	datac => \state.IDLE~q\,
	datad => \state~18_combout\,
	combout => \state~19_combout\);

-- Location: FF_X17_Y4_N15
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X18_Y4_N18
\byte_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_cnt~0_combout\ = (\state.IDLE~q\ & (!\reset~input_o\ & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \reset~input_o\,
	datad => \Add0~2_combout\,
	combout => \byte_cnt~0_combout\);

-- Location: FF_X18_Y4_N19
\byte_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \byte_cnt~0_combout\,
	ena => \byte_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_cnt(1));

-- Location: LCCOMB_X17_Y3_N8
\Selector414~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector414~0_combout\ = (byte_cnt(1) & (\state.ETH~q\ & (\Equal10~0_combout\ & !byte_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(1),
	datab => \state.ETH~q\,
	datac => \Equal10~0_combout\,
	datad => byte_cnt(4),
	combout => \Selector414~0_combout\);

-- Location: LCCOMB_X16_Y4_N8
\Selector418~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector418~1_combout\ = (\state.IGNORE~q\ & (((\ip_ok~combout\ & \Selector418~0_combout\)) # (!\frame_done~q\))) # (!\state.IGNORE~q\ & (((\ip_ok~combout\ & \Selector418~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IGNORE~q\,
	datab => \frame_done~q\,
	datac => \ip_ok~combout\,
	datad => \Selector418~0_combout\,
	combout => \Selector418~1_combout\);

-- Location: LCCOMB_X17_Y4_N2
\Selector418~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector418~2_combout\ = (\Selector418~1_combout\) # ((\Selector416~0_combout\ & ((\Equal13~1_combout\) # (\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal13~0_combout\,
	datac => \Selector416~0_combout\,
	datad => \Selector418~1_combout\,
	combout => \Selector418~2_combout\);

-- Location: LCCOMB_X17_Y4_N28
\Selector418~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector418~3_combout\ = (\Selector418~2_combout\) # ((\Selector414~0_combout\ & \mac_ok~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector414~0_combout\,
	datac => \mac_ok~15_combout\,
	datad => \Selector418~2_combout\,
	combout => \Selector418~3_combout\);

-- Location: FF_X17_Y4_N29
\state.IGNORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector418~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IGNORE~q\);

-- Location: LCCOMB_X18_Y3_N14
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state.IGNORE~q\ & ((\frame_done~q\))) # (!\state.IGNORE~q\ & (\out_ready~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datac => \state.IGNORE~q\,
	datad => \frame_done~q\,
	combout => \state~14_combout\);

-- Location: LCCOMB_X18_Y3_N0
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\state.SEND~q\ & (((!\state.IGNORE~q\ & !\out_eop~0_combout\)) # (!\state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IGNORE~q\,
	datab => \state.SEND~q\,
	datac => \state~14_combout\,
	datad => \out_eop~0_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X17_Y4_N30
\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (!\reset~input_o\ & ((\state~13_combout\) # ((\state~15_combout\ & !\state~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state~15_combout\,
	datac => \state~13_combout\,
	datad => \state~12_combout\,
	combout => \state~16_combout\);

-- Location: FF_X17_Y4_N31
\state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SEND~q\);

-- Location: LCCOMB_X18_Y8_N12
\out_data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~11_combout\ = (tx_cnt(4)) # ((tx_cnt(2) & tx_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(4),
	datad => tx_cnt(3),
	combout => \out_data~11_combout\);

-- Location: LCCOMB_X18_Y4_N26
\rx_frame[47][0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][0]~46_combout\ = (\Equal10~1_combout\ & (\state.IDLE~q\ & (byte_cnt(5) & \rx_frame[0][0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \state.IDLE~q\,
	datac => byte_cnt(5),
	datad => \rx_frame[0][0]~22_combout\,
	combout => \rx_frame[47][0]~46_combout\);

-- Location: LCCOMB_X16_Y8_N2
\rx_frame[46][0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][0]~81_combout\ = (!byte_cnt(0) & (byte_cnt(3) & (byte_cnt(2) & \rx_frame[47][0]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(3),
	datac => byte_cnt(2),
	datad => \rx_frame[47][0]~46_combout\,
	combout => \rx_frame[46][0]~81_combout\);

-- Location: FF_X16_Y8_N31
\rx_frame[46][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][0]~q\);

-- Location: LCCOMB_X18_Y3_N30
\tx_frame[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[0][0]~0_combout\ = (\in_eop~input_o\ & (\in_valid~input_o\ & (!\reset~input_o\ & \state.PAYLOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datab => \in_valid~input_o\,
	datac => \reset~input_o\,
	datad => \state.PAYLOAD~q\,
	combout => \tx_frame[0][0]~0_combout\);

-- Location: FF_X16_Y7_N31
\tx_frame[46][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[46][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][0]~q\);

-- Location: LCCOMB_X17_Y4_N10
\rx_frame[9][0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[9][0]~38_combout\ = (!byte_cnt(4) & (byte_cnt(3) & (\rx_frame[34][0]~18_combout\ & !byte_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(4),
	datab => byte_cnt(3),
	datac => \rx_frame[34][0]~18_combout\,
	datad => byte_cnt(1),
	combout => \rx_frame[9][0]~38_combout\);

-- Location: LCCOMB_X21_Y8_N12
\rx_frame[45][0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[45][0]~51_combout\ = (byte_cnt(2) & (byte_cnt(5) & (\rx_frame[9][0]~38_combout\ & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(5),
	datac => \rx_frame[9][0]~38_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[45][0]~51_combout\);

-- Location: FF_X21_Y8_N21
\rx_frame[45][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][0]~q\);

-- Location: LCCOMB_X21_Y8_N0
\tx_frame[45][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][0]~feeder_combout\ = \rx_frame[45][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][0]~q\,
	combout => \tx_frame[45][0]~feeder_combout\);

-- Location: FF_X21_Y8_N1
\tx_frame[45][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][0]~q\);

-- Location: LCCOMB_X17_Y8_N24
\rx_frame[44][0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[44][0]~52_combout\ = (byte_cnt(5) & (byte_cnt(2) & (!byte_cnt(0) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(2),
	datac => byte_cnt(0),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[44][0]~52_combout\);

-- Location: FF_X18_Y8_N23
\rx_frame[44][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][0]~q\);

-- Location: FF_X16_Y8_N5
\tx_frame[44][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][0]~q\);

-- Location: LCCOMB_X16_Y8_N4
\out_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~23_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & (\tx_frame[45][0]~q\)) # (!tx_cnt(0) & ((\tx_frame[44][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[45][0]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[44][0]~q\,
	datad => tx_cnt(0),
	combout => \out_data~23_combout\);

-- Location: LCCOMB_X16_Y5_N2
\rx_frame[47][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[47][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y5_N8
\rx_frame[47][0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][0]~53_combout\ = (byte_cnt(3) & (byte_cnt(0) & (\rx_frame[47][0]~46_combout\ & byte_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(0),
	datac => \rx_frame[47][0]~46_combout\,
	datad => byte_cnt(2),
	combout => \rx_frame[47][0]~53_combout\);

-- Location: FF_X16_Y5_N3
\rx_frame[47][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[47][0]~feeder_combout\,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][0]~q\);

-- Location: FF_X16_Y6_N17
\tx_frame[47][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][0]~q\);

-- Location: LCCOMB_X16_Y6_N16
\out_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~24_combout\ = (\out_data~23_combout\ & (((\tx_frame[47][0]~q\) # (!tx_cnt(1))))) # (!\out_data~23_combout\ & (\tx_frame[46][0]~q\ & ((tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[46][0]~q\,
	datab => \out_data~23_combout\,
	datac => \tx_frame[47][0]~q\,
	datad => tx_cnt(1),
	combout => \out_data~24_combout\);

-- Location: LCCOMB_X18_Y4_N8
\rx_frame[48][0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][0]~37_combout\ = (byte_cnt(4) & (\byte_cnt~2_combout\ & (byte_cnt(5) & \rx_frame[34][0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(4),
	datab => \byte_cnt~2_combout\,
	datac => byte_cnt(5),
	datad => \rx_frame[34][0]~18_combout\,
	combout => \rx_frame[48][0]~37_combout\);

-- Location: FF_X17_Y6_N15
\rx_frame[48][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][0]~q\);

-- Location: FF_X16_Y6_N21
\tx_frame[48][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][0]~q\);

-- Location: LCCOMB_X14_Y4_N0
\rx_frame[28][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[28][0]~feeder_combout\);

-- Location: LCCOMB_X13_Y4_N26
\rx_frame[29][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][0]~19_combout\ = (!byte_cnt(5) & (byte_cnt(4) & (!byte_cnt(1) & \rx_frame[34][0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(4),
	datac => byte_cnt(1),
	datad => \rx_frame[34][0]~18_combout\,
	combout => \rx_frame[29][0]~19_combout\);

-- Location: LCCOMB_X14_Y4_N8
\rx_frame[28][0]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][0]~80_combout\ = (byte_cnt(3) & (!byte_cnt(0) & (\rx_frame[29][0]~19_combout\ & byte_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(0),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(2),
	combout => \rx_frame[28][0]~80_combout\);

-- Location: FF_X14_Y4_N1
\rx_frame[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[28][0]~feeder_combout\,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][0]~q\);

-- Location: LCCOMB_X16_Y6_N30
\tx_frame[32][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][0]~feeder_combout\ = \rx_frame[28][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][0]~q\,
	combout => \tx_frame[32][0]~feeder_combout\);

-- Location: FF_X16_Y6_N31
\tx_frame[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][0]~q\);

-- Location: LCCOMB_X14_Y2_N18
\rx_frame[29][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[29][0]~feeder_combout\);

-- Location: LCCOMB_X14_Y2_N2
\rx_frame[29][0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][0]~44_combout\ = (byte_cnt(3) & (byte_cnt(0) & (byte_cnt(2) & \rx_frame[29][0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(0),
	datac => byte_cnt(2),
	datad => \rx_frame[29][0]~19_combout\,
	combout => \rx_frame[29][0]~44_combout\);

-- Location: FF_X14_Y2_N19
\rx_frame[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[29][0]~feeder_combout\,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][0]~q\);

-- Location: FF_X16_Y6_N13
\tx_frame[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][0]~q\);

-- Location: LCCOMB_X19_Y3_N24
\out_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~19_combout\ = (tx_cnt(2)) # ((!tx_cnt(1) & tx_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(2),
	datac => tx_cnt(1),
	datad => tx_cnt(0),
	combout => \out_data~19_combout\);

-- Location: LCCOMB_X19_Y3_N26
\out_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~18_combout\ = (tx_cnt(2)) # ((tx_cnt(1) & tx_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(2),
	datac => tx_cnt(1),
	datad => tx_cnt(0),
	combout => \out_data~18_combout\);

-- Location: LCCOMB_X21_Y5_N14
\rx_frame[35][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[35][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y5_N4
\rx_frame[35][0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][0]~45_combout\ = (byte_cnt(5) & (!byte_cnt(3) & (\rx_frame[34][0]~40_combout\ & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(3),
	datac => \rx_frame[34][0]~40_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[35][0]~45_combout\);

-- Location: FF_X21_Y5_N15
\rx_frame[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][0]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][0]~q\);

-- Location: FF_X21_Y5_N23
\tx_frame[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][0]~q\);

-- Location: LCCOMB_X21_Y4_N0
\rx_frame[37][0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][0]~48_combout\ = (byte_cnt(0) & (byte_cnt(2) & \rx_frame[36][0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datad => \rx_frame[36][0]~31_combout\,
	combout => \rx_frame[37][0]~48_combout\);

-- Location: FF_X21_Y4_N1
\rx_frame[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][0]~q\);

-- Location: LCCOMB_X21_Y5_N20
\tx_frame[37][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][0]~feeder_combout\ = \rx_frame[37][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][0]~q\,
	combout => \tx_frame[37][0]~feeder_combout\);

-- Location: FF_X21_Y5_N21
\tx_frame[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][0]~q\);

-- Location: LCCOMB_X22_Y4_N4
\rx_frame[36][0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][0]~49_combout\ = (byte_cnt(2) & (!byte_cnt(0) & \rx_frame[36][0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datad => \rx_frame[36][0]~31_combout\,
	combout => \rx_frame[36][0]~49_combout\);

-- Location: FF_X22_Y4_N5
\rx_frame[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][0]~q\);

-- Location: FF_X21_Y5_N3
\tx_frame[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][0]~q\);

-- Location: LCCOMB_X21_Y5_N2
\out_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~16_combout\ = (tx_cnt(0) & ((\tx_frame[37][0]~q\) # ((tx_cnt(1))))) # (!tx_cnt(0) & (((\tx_frame[36][0]~q\ & !tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[37][0]~q\,
	datac => \tx_frame[36][0]~q\,
	datad => tx_cnt(1),
	combout => \out_data~16_combout\);

-- Location: LCCOMB_X19_Y4_N20
\rx_frame[39][0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[39][0]~50_combout\ = (\rx_frame[47][0]~46_combout\ & (byte_cnt(2) & (!byte_cnt(3) & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[47][0]~46_combout\,
	datab => byte_cnt(2),
	datac => byte_cnt(3),
	datad => byte_cnt(0),
	combout => \rx_frame[39][0]~50_combout\);

-- Location: FF_X19_Y4_N7
\rx_frame[39][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][0]~q\);

-- Location: FF_X21_Y5_N17
\tx_frame[39][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][0]~q\);

-- Location: LCCOMB_X22_Y5_N18
\rx_frame[38][0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[38][0]~47_combout\ = (byte_cnt(2) & (!byte_cnt(3) & (!byte_cnt(0) & \rx_frame[47][0]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(3),
	datac => byte_cnt(0),
	datad => \rx_frame[47][0]~46_combout\,
	combout => \rx_frame[38][0]~47_combout\);

-- Location: FF_X22_Y5_N27
\rx_frame[38][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][0]~q\);

-- Location: LCCOMB_X21_Y5_N18
\tx_frame[38][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][0]~feeder_combout\ = \rx_frame[38][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][0]~q\,
	combout => \tx_frame[38][0]~feeder_combout\);

-- Location: FF_X21_Y5_N19
\tx_frame[38][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][0]~q\);

-- Location: LCCOMB_X21_Y5_N16
\out_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~17_combout\ = (tx_cnt(1) & ((\out_data~16_combout\ & (\tx_frame[39][0]~q\)) # (!\out_data~16_combout\ & ((\tx_frame[38][0]~q\))))) # (!tx_cnt(1) & (\out_data~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~16_combout\,
	datac => \tx_frame[39][0]~q\,
	datad => \tx_frame[38][0]~q\,
	combout => \out_data~17_combout\);

-- Location: LCCOMB_X21_Y5_N22
\out_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~20_combout\ = (\out_data~19_combout\ & (((\out_data~17_combout\)) # (!\out_data~18_combout\))) # (!\out_data~19_combout\ & (\out_data~18_combout\ & (\tx_frame[35][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~19_combout\,
	datab => \out_data~18_combout\,
	datac => \tx_frame[35][0]~q\,
	datad => \out_data~17_combout\,
	combout => \out_data~20_combout\);

-- Location: LCCOMB_X16_Y6_N12
\out_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~21_combout\ = (\out_data~15_combout\ & ((\out_data~20_combout\ & ((\tx_frame[33][0]~q\))) # (!\out_data~20_combout\ & (\tx_frame[32][0]~q\)))) # (!\out_data~15_combout\ & (((\out_data~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[32][0]~q\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][0]~q\,
	datad => \out_data~20_combout\,
	combout => \out_data~21_combout\);

-- Location: LCCOMB_X18_Y8_N14
\out_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~14_combout\ = (!tx_cnt(4) & tx_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(4),
	datad => tx_cnt(3),
	combout => \out_data~14_combout\);

-- Location: LCCOMB_X13_Y8_N30
\rx_frame[41][0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[41][0]~39_combout\ = (byte_cnt(5) & (byte_cnt(0) & (!byte_cnt(2) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(0),
	datac => byte_cnt(2),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[41][0]~39_combout\);

-- Location: FF_X13_Y8_N13
\rx_frame[41][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][0]~q\);

-- Location: LCCOMB_X17_Y6_N8
\tx_frame[41][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][0]~feeder_combout\ = \rx_frame[41][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][0]~q\,
	combout => \tx_frame[41][0]~feeder_combout\);

-- Location: FF_X17_Y6_N9
\tx_frame[41][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][0]~q\);

-- Location: LCCOMB_X21_Y6_N0
\rx_frame[43][0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[43][0]~43_combout\ = (byte_cnt(0) & (byte_cnt(3) & (byte_cnt(5) & \rx_frame[34][0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(3),
	datac => byte_cnt(5),
	datad => \rx_frame[34][0]~40_combout\,
	combout => \rx_frame[43][0]~43_combout\);

-- Location: FF_X21_Y6_N15
\rx_frame[43][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][0]~q\);

-- Location: FF_X17_Y6_N19
\tx_frame[43][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][0]~q\);

-- Location: LCCOMB_X19_Y6_N18
\rx_frame[40][0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[40][0]~42_combout\ = (!byte_cnt(2) & (!byte_cnt(0) & (byte_cnt(5) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(5),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[40][0]~42_combout\);

-- Location: FF_X19_Y6_N1
\rx_frame[40][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][0]~q\);

-- Location: FF_X17_Y6_N29
\tx_frame[40][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][0]~q\);

-- Location: LCCOMB_X18_Y5_N10
\rx_frame[42][0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[42][0]~41_combout\ = (byte_cnt(5) & (byte_cnt(3) & (\rx_frame[34][0]~40_combout\ & !byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(3),
	datac => \rx_frame[34][0]~40_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[42][0]~41_combout\);

-- Location: FF_X17_Y5_N1
\rx_frame[42][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][0]~q\);

-- Location: LCCOMB_X17_Y6_N2
\tx_frame[42][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][0]~feeder_combout\ = \rx_frame[42][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][0]~q\,
	combout => \tx_frame[42][0]~feeder_combout\);

-- Location: FF_X17_Y6_N3
\tx_frame[42][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][0]~q\);

-- Location: LCCOMB_X17_Y6_N28
\out_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~12_combout\ = (tx_cnt(0) & (tx_cnt(1))) # (!tx_cnt(0) & ((tx_cnt(1) & ((\tx_frame[42][0]~q\))) # (!tx_cnt(1) & (\tx_frame[40][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[40][0]~q\,
	datad => \tx_frame[42][0]~q\,
	combout => \out_data~12_combout\);

-- Location: LCCOMB_X17_Y6_N18
\out_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~13_combout\ = (tx_cnt(0) & ((\out_data~12_combout\ & ((\tx_frame[43][0]~q\))) # (!\out_data~12_combout\ & (\tx_frame[41][0]~q\)))) # (!tx_cnt(0) & (((\out_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[41][0]~q\,
	datac => \tx_frame[43][0]~q\,
	datad => \out_data~12_combout\,
	combout => \out_data~13_combout\);

-- Location: LCCOMB_X16_Y6_N10
\out_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~22_combout\ = (\out_data~14_combout\ & (((\out_data~11_combout\) # (\out_data~13_combout\)))) # (!\out_data~14_combout\ & (\out_data~21_combout\ & (!\out_data~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~21_combout\,
	datab => \out_data~14_combout\,
	datac => \out_data~11_combout\,
	datad => \out_data~13_combout\,
	combout => \out_data~22_combout\);

-- Location: LCCOMB_X16_Y6_N20
\out_data~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~25_combout\ = (\out_data~11_combout\ & ((\out_data~22_combout\ & (\out_data~24_combout\)) # (!\out_data~22_combout\ & ((\tx_frame[48][0]~q\))))) # (!\out_data~11_combout\ & (((\out_data~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~24_combout\,
	datac => \tx_frame[48][0]~q\,
	datad => \out_data~22_combout\,
	combout => \out_data~25_combout\);

-- Location: LCCOMB_X12_Y7_N20
\out_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~10_combout\ = (tx_cnt(4) & ((tx_cnt(0)) # (!tx_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_cnt(4),
	datac => tx_cnt(5),
	datad => tx_cnt(0),
	combout => \out_data~10_combout\);

-- Location: LCCOMB_X16_Y6_N26
\tx_frame[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[7][0]~feeder_combout\ = \rx_frame[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[1][0]~q\,
	combout => \tx_frame[7][0]~feeder_combout\);

-- Location: FF_X16_Y6_N27
\tx_frame[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[7][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][0]~q\);

-- Location: LCCOMB_X23_Y7_N10
\rx_frame[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[9][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[9][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N2
\rx_frame[9][0]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[9][0]~71_combout\ = (byte_cnt(0) & (!byte_cnt(2) & (!byte_cnt(5) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datac => byte_cnt(5),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[9][0]~71_combout\);

-- Location: FF_X23_Y7_N11
\rx_frame[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[9][0]~feeder_combout\,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][0]~q\);

-- Location: FF_X18_Y7_N19
\tx_frame[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[9][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][0]~q\);

-- Location: LCCOMB_X18_Y7_N18
\out_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~33_combout\ = (tx_cnt(3) & (((tx_cnt(2))))) # (!tx_cnt(3) & ((tx_cnt(2) & (\tx_frame[7][0]~q\)) # (!tx_cnt(2) & ((\tx_frame[3][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[7][0]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[3][0]~q\,
	datad => tx_cnt(2),
	combout => \out_data~33_combout\);

-- Location: LCCOMB_X22_Y7_N12
\rx_frame[15][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[15][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y4_N22
\rx_frame[15][0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][0]~60_combout\ = (\Equal10~1_combout\ & (\state.IDLE~q\ & (!byte_cnt(5) & \rx_frame[0][0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \state.IDLE~q\,
	datac => byte_cnt(5),
	datad => \rx_frame[0][0]~22_combout\,
	combout => \rx_frame[15][0]~60_combout\);

-- Location: LCCOMB_X22_Y7_N18
\rx_frame[15][0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][0]~72_combout\ = (byte_cnt(2) & (byte_cnt(0) & (\rx_frame[15][0]~60_combout\ & byte_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => \rx_frame[15][0]~60_combout\,
	datad => byte_cnt(3),
	combout => \rx_frame[15][0]~72_combout\);

-- Location: FF_X22_Y7_N13
\rx_frame[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[15][0]~feeder_combout\,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][0]~q\);

-- Location: FF_X17_Y7_N25
\tx_frame[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][0]~q\);

-- Location: FF_X16_Y7_N3
\tx_frame[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][0]~q\);

-- Location: LCCOMB_X17_Y7_N24
\out_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~34_combout\ = (tx_cnt(3) & ((\out_data~33_combout\ & (\tx_frame[15][0]~q\)) # (!\out_data~33_combout\ & ((\tx_frame[11][0]~q\))))) # (!tx_cnt(3) & (\out_data~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \out_data~33_combout\,
	datac => \tx_frame[15][0]~q\,
	datad => \tx_frame[11][0]~q\,
	combout => \out_data~34_combout\);

-- Location: LCCOMB_X14_Y8_N18
\tx_frame[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[10][0]~feeder_combout\ = \rx_frame[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[4][0]~q\,
	combout => \tx_frame[10][0]~feeder_combout\);

-- Location: FF_X14_Y8_N19
\tx_frame[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[10][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][0]~q\);

-- Location: FF_X21_Y3_N19
\tx_frame[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[0][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][0]~q\);

-- Location: LCCOMB_X17_Y8_N26
\rx_frame[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[8][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[8][0]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N10
\rx_frame[8][0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[8][0]~59_combout\ = (\rx_frame[9][0]~38_combout\ & (!byte_cnt(0) & (!byte_cnt(5) & !byte_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_frame[9][0]~38_combout\,
	datab => byte_cnt(0),
	datac => byte_cnt(5),
	datad => byte_cnt(2),
	combout => \rx_frame[8][0]~59_combout\);

-- Location: FF_X17_Y8_N27
\rx_frame[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[8][0]~feeder_combout\,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][0]~q\);

-- Location: FF_X13_Y7_N9
\tx_frame[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[8][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][0]~q\);

-- Location: LCCOMB_X13_Y7_N8
\out_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~26_combout\ = (tx_cnt(2) & ((\tx_frame[6][0]~q\) # ((tx_cnt(3))))) # (!tx_cnt(2) & (((\tx_frame[2][0]~q\ & !tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[6][0]~q\,
	datac => \tx_frame[2][0]~q\,
	datad => tx_cnt(3),
	combout => \out_data~26_combout\);

-- Location: LCCOMB_X21_Y7_N30
\rx_frame[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[14][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[14][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y7_N28
\rx_frame[14][0]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[14][0]~82_combout\ = (!byte_cnt(0) & (byte_cnt(2) & (byte_cnt(3) & \rx_frame[15][0]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datac => byte_cnt(3),
	datad => \rx_frame[15][0]~60_combout\,
	combout => \rx_frame[14][0]~82_combout\);

-- Location: FF_X21_Y7_N31
\rx_frame[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[14][0]~feeder_combout\,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][0]~q\);

-- Location: FF_X13_Y7_N7
\tx_frame[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][0]~q\);

-- Location: LCCOMB_X13_Y7_N6
\out_data~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~27_combout\ = (\out_data~26_combout\ & (((\tx_frame[14][0]~q\) # (!tx_cnt(3))))) # (!\out_data~26_combout\ & (\tx_frame[10][0]~q\ & ((tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[10][0]~q\,
	datab => \out_data~26_combout\,
	datac => \tx_frame[14][0]~q\,
	datad => tx_cnt(3),
	combout => \out_data~27_combout\);

-- Location: FF_X14_Y6_N31
\tx_frame[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[2][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][0]~q\);

-- Location: LCCOMB_X17_Y9_N4
\rx_frame[12][0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][0]~68_combout\ = (byte_cnt(2) & (!byte_cnt(0) & (!byte_cnt(5) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(5),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[12][0]~68_combout\);

-- Location: FF_X17_Y9_N9
\rx_frame[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][0]~q\);

-- Location: FF_X17_Y9_N29
\tx_frame[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[12][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][0]~q\);

-- Location: LCCOMB_X18_Y5_N22
\rx_frame[10][0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[10][0]~66_combout\ = (!byte_cnt(5) & (byte_cnt(3) & (\rx_frame[34][0]~40_combout\ & !byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(3),
	datac => \rx_frame[34][0]~40_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[10][0]~66_combout\);

-- Location: FF_X18_Y5_N21
\rx_frame[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][0]~q\);

-- Location: LCCOMB_X17_Y9_N30
\tx_frame[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[4][0]~feeder_combout\ = \rx_frame[10][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[10][0]~q\,
	combout => \tx_frame[4][0]~feeder_combout\);

-- Location: FF_X17_Y9_N31
\tx_frame[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[4][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][0]~q\);

-- Location: LCCOMB_X14_Y7_N4
\rx_frame[6][0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[6][0]~67_combout\ = (byte_cnt(2) & (!byte_cnt(3) & (!byte_cnt(0) & \rx_frame[15][0]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(3),
	datac => byte_cnt(0),
	datad => \rx_frame[15][0]~60_combout\,
	combout => \rx_frame[6][0]~67_combout\);

-- Location: FF_X14_Y7_N1
\rx_frame[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][0]~q\);

-- Location: FF_X17_Y9_N11
\tx_frame[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][0]~q\);

-- Location: LCCOMB_X17_Y9_N10
\out_data~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~30_combout\ = (tx_cnt(3) & (((tx_cnt(2))))) # (!tx_cnt(3) & ((tx_cnt(2) & (\tx_frame[4][0]~q\)) # (!tx_cnt(2) & ((\tx_frame[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[4][0]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[0][0]~q\,
	datad => tx_cnt(2),
	combout => \out_data~30_combout\);

-- Location: LCCOMB_X17_Y9_N28
\out_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~31_combout\ = (tx_cnt(3) & ((\out_data~30_combout\ & ((\tx_frame[12][0]~q\))) # (!\out_data~30_combout\ & (\tx_frame[8][0]~q\)))) # (!tx_cnt(3) & (((\out_data~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[8][0]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[12][0]~q\,
	datad => \out_data~30_combout\,
	combout => \out_data~31_combout\);

-- Location: LCCOMB_X19_Y7_N8
\rx_frame[11][0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][0]~61_combout\ = (byte_cnt(0) & (byte_cnt(3) & (!byte_cnt(5) & \rx_frame[34][0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(3),
	datac => byte_cnt(5),
	datad => \rx_frame[34][0]~40_combout\,
	combout => \rx_frame[11][0]~61_combout\);

-- Location: FF_X19_Y7_N17
\rx_frame[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][0]~q\);

-- Location: LCCOMB_X18_Y9_N28
\tx_frame[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[5][0]~feeder_combout\ = \rx_frame[11][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[11][0]~q\,
	combout => \tx_frame[5][0]~feeder_combout\);

-- Location: FF_X18_Y9_N29
\tx_frame[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[5][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][0]~q\);

-- Location: LCCOMB_X19_Y8_N26
\rx_frame[13][0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][0]~64_combout\ = (byte_cnt(2) & (byte_cnt(0) & (!byte_cnt(5) & \rx_frame[9][0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(5),
	datad => \rx_frame[9][0]~38_combout\,
	combout => \rx_frame[13][0]~64_combout\);

-- Location: FF_X19_Y8_N1
\rx_frame[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][0]~q\);

-- Location: FF_X18_Y9_N31
\tx_frame[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[13][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][0]~q\);

-- Location: LCCOMB_X17_Y7_N2
\rx_frame[7][0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[7][0]~63_combout\ = (byte_cnt(0) & (byte_cnt(2) & (!byte_cnt(3) & \rx_frame[15][0]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datac => byte_cnt(3),
	datad => \rx_frame[15][0]~60_combout\,
	combout => \rx_frame[7][0]~63_combout\);

-- Location: FF_X17_Y7_N17
\rx_frame[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][0]~q\);

-- Location: FF_X18_Y7_N9
\tx_frame[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][0]~q\);

-- Location: FF_X18_Y6_N31
\tx_frame[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[3][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][0]~q\);

-- Location: LCCOMB_X18_Y7_N8
\out_data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~28_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[9][0]~q\))) # (!tx_cnt(3) & (\tx_frame[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[1][0]~q\,
	datad => \tx_frame[9][0]~q\,
	combout => \out_data~28_combout\);

-- Location: LCCOMB_X18_Y9_N30
\out_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~29_combout\ = (tx_cnt(2) & ((\out_data~28_combout\ & ((\tx_frame[13][0]~q\))) # (!\out_data~28_combout\ & (\tx_frame[5][0]~q\)))) # (!tx_cnt(2) & (((\out_data~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[5][0]~q\,
	datac => \tx_frame[13][0]~q\,
	datad => \out_data~28_combout\,
	combout => \out_data~29_combout\);

-- Location: LCCOMB_X17_Y9_N24
\out_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~32_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\out_data~29_combout\))) # (!tx_cnt(0) & (\out_data~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~31_combout\,
	datac => \out_data~29_combout\,
	datad => tx_cnt(0),
	combout => \out_data~32_combout\);

-- Location: LCCOMB_X17_Y9_N16
\out_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~35_combout\ = (tx_cnt(1) & ((\out_data~32_combout\ & (\out_data~34_combout\)) # (!\out_data~32_combout\ & ((\out_data~27_combout\))))) # (!tx_cnt(1) & (((\out_data~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~34_combout\,
	datac => \out_data~27_combout\,
	datad => \out_data~32_combout\,
	combout => \out_data~35_combout\);

-- Location: LCCOMB_X11_Y6_N14
\out_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~36_combout\ = (\out_data~10_combout\ & (((tx_cnt(5))))) # (!\out_data~10_combout\ & ((tx_cnt(5) & (\out_data~25_combout\)) # (!tx_cnt(5) & ((\out_data~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~25_combout\,
	datab => \out_data~10_combout\,
	datac => \out_data~35_combout\,
	datad => tx_cnt(5),
	combout => \out_data~36_combout\);

-- Location: LCCOMB_X13_Y6_N12
\rx_frame[49][0]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][0]~73_combout\ = (byte_cnt(5) & (byte_cnt(4) & (\rx_frame[49][0]~23_combout\ & \rx_frame[49][0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(5),
	datab => byte_cnt(4),
	datac => \rx_frame[49][0]~23_combout\,
	datad => \rx_frame[49][0]~21_combout\,
	combout => \rx_frame[49][0]~73_combout\);

-- Location: FF_X13_Y6_N15
\rx_frame[49][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][0]~q\);

-- Location: FF_X12_Y6_N25
\tx_frame[49][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][0]~q\);

-- Location: LCCOMB_X13_Y4_N0
\rx_frame[17][0]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[17][0]~76_combout\ = (!byte_cnt(3) & (!byte_cnt(2) & (\rx_frame[29][0]~19_combout\ & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(2),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[17][0]~76_combout\);

-- Location: FF_X13_Y5_N31
\rx_frame[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][0]~q\);

-- Location: FF_X12_Y5_N15
\tx_frame[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[17][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][0]~q\);

-- Location: LCCOMB_X12_Y3_N16
\rx_frame[25][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[25][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[25][0]~feeder_combout\);

-- Location: LCCOMB_X13_Y4_N10
\rx_frame[25][0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[25][0]~75_combout\ = (byte_cnt(3) & (!byte_cnt(2) & (\rx_frame[29][0]~19_combout\ & byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(2),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[25][0]~75_combout\);

-- Location: FF_X12_Y3_N17
\rx_frame[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[25][0]~feeder_combout\,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][0]~q\);

-- Location: LCCOMB_X12_Y5_N0
\tx_frame[25][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][0]~feeder_combout\ = \rx_frame[25][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][0]~q\,
	combout => \tx_frame[25][0]~feeder_combout\);

-- Location: FF_X12_Y5_N1
\tx_frame[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][0]~q\);

-- Location: LCCOMB_X12_Y5_N14
\out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~0_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[25][0]~q\))) # (!tx_cnt(3) & (\tx_frame[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[17][0]~q\,
	datad => \tx_frame[25][0]~q\,
	combout => \out_data~0_combout\);

-- Location: FF_X12_Y5_N7
\tx_frame[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][0]~q\);

-- Location: LCCOMB_X13_Y5_N8
\rx_frame[21][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[21][0]~20_combout\ = (byte_cnt(2) & (byte_cnt(0) & (\rx_frame[29][0]~19_combout\ & !byte_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(3),
	combout => \rx_frame[21][0]~20_combout\);

-- Location: FF_X13_Y5_N25
\rx_frame[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][0]~q\);

-- Location: LCCOMB_X12_Y5_N12
\tx_frame[21][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[21][0]~feeder_combout\ = \rx_frame[21][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[21][0]~q\,
	combout => \tx_frame[21][0]~feeder_combout\);

-- Location: FF_X12_Y5_N13
\tx_frame[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[21][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][0]~q\);

-- Location: LCCOMB_X12_Y5_N6
\out_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~1_combout\ = (tx_cnt(2) & ((\out_data~0_combout\ & (\tx_frame[29][0]~q\)) # (!\out_data~0_combout\ & ((\tx_frame[21][0]~q\))))) # (!tx_cnt(2) & (\out_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~0_combout\,
	datac => \tx_frame[29][0]~q\,
	datad => \tx_frame[21][0]~q\,
	combout => \out_data~1_combout\);

-- Location: LCCOMB_X12_Y6_N26
\tx_frame[27][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][0]~feeder_combout\ = \rx_frame[31][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][0]~q\,
	combout => \tx_frame[27][0]~feeder_combout\);

-- Location: FF_X12_Y6_N27
\tx_frame[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][0]~q\);

-- Location: LCCOMB_X12_Y4_N26
\rx_frame[27][0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][0]~36_combout\ = (!byte_cnt(2) & (byte_cnt(0) & (byte_cnt(3) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(3),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[27][0]~36_combout\);

-- Location: FF_X12_Y6_N5
\rx_frame[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][0]~q\);

-- Location: FF_X12_Y6_N23
\tx_frame[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][0]~q\);

-- Location: LCCOMB_X12_Y4_N8
\rx_frame[23][0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][0]~34_combout\ = (byte_cnt(2) & (byte_cnt(0) & (!byte_cnt(3) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(3),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[23][0]~34_combout\);

-- Location: FF_X11_Y3_N3
\rx_frame[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][0]~q\);

-- Location: LCCOMB_X11_Y6_N12
\tx_frame[23][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[23][0]~feeder_combout\ = \rx_frame[23][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[23][0]~q\,
	combout => \tx_frame[23][0]~feeder_combout\);

-- Location: FF_X11_Y6_N13
\tx_frame[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[23][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][0]~q\);

-- Location: LCCOMB_X12_Y3_N6
\rx_frame[19][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[19][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[19][0]~feeder_combout\);

-- Location: LCCOMB_X13_Y3_N10
\rx_frame[19][0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[19][0]~35_combout\ = (!byte_cnt(3) & (byte_cnt(0) & (!byte_cnt(2) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(0),
	datac => byte_cnt(2),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[19][0]~35_combout\);

-- Location: FF_X12_Y3_N7
\rx_frame[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[19][0]~feeder_combout\,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][0]~q\);

-- Location: FF_X12_Y6_N17
\tx_frame[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[19][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][0]~q\);

-- Location: LCCOMB_X12_Y6_N16
\out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~7_combout\ = (tx_cnt(2) & ((\tx_frame[23][0]~q\) # ((tx_cnt(3))))) # (!tx_cnt(2) & (((\tx_frame[19][0]~q\ & !tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[23][0]~q\,
	datab => tx_cnt(2),
	datac => \tx_frame[19][0]~q\,
	datad => tx_cnt(3),
	combout => \out_data~7_combout\);

-- Location: LCCOMB_X12_Y6_N22
\out_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~8_combout\ = (tx_cnt(3) & ((\out_data~7_combout\ & ((\tx_frame[31][0]~q\))) # (!\out_data~7_combout\ & (\tx_frame[27][0]~q\)))) # (!tx_cnt(3) & (((\out_data~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[27][0]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[31][0]~q\,
	datad => \out_data~7_combout\,
	combout => \out_data~8_combout\);

-- Location: LCCOMB_X13_Y4_N4
\rx_frame[24][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[24][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[24][0]~feeder_combout\);

-- Location: LCCOMB_X14_Y4_N6
\rx_frame[24][0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[24][0]~78_combout\ = (byte_cnt(3) & (!byte_cnt(0) & (\rx_frame[29][0]~19_combout\ & !byte_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(0),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(2),
	combout => \rx_frame[24][0]~78_combout\);

-- Location: FF_X13_Y4_N5
\rx_frame[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[24][0]~feeder_combout\,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][0]~q\);

-- Location: LCCOMB_X13_Y2_N8
\tx_frame[24][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[24][0]~feeder_combout\ = \rx_frame[24][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[24][0]~q\,
	combout => \tx_frame[24][0]~feeder_combout\);

-- Location: FF_X13_Y2_N9
\tx_frame[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[24][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][0]~q\);

-- Location: LCCOMB_X13_Y4_N18
\rx_frame[16][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[16][0]~feeder_combout\);

-- Location: LCCOMB_X13_Y4_N6
\rx_frame[16][0]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][0]~79_combout\ = (!byte_cnt(3) & (!byte_cnt(2) & (\rx_frame[29][0]~19_combout\ & !byte_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(3),
	datab => byte_cnt(2),
	datac => \rx_frame[29][0]~19_combout\,
	datad => byte_cnt(0),
	combout => \rx_frame[16][0]~79_combout\);

-- Location: FF_X13_Y4_N19
\rx_frame[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[16][0]~feeder_combout\,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][0]~q\);

-- Location: FF_X13_Y2_N3
\tx_frame[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][0]~q\);

-- Location: LCCOMB_X13_Y2_N2
\out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~4_combout\ = (tx_cnt(2) & (((tx_cnt(3))))) # (!tx_cnt(2) & ((tx_cnt(3) & (\tx_frame[24][0]~q\)) # (!tx_cnt(3) & ((\tx_frame[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[24][0]~q\,
	datac => \tx_frame[16][0]~q\,
	datad => tx_cnt(3),
	combout => \out_data~4_combout\);

-- Location: FF_X13_Y2_N11
\tx_frame[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[32][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][0]~q\);

-- Location: LCCOMB_X14_Y2_N4
\rx_frame[20][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[20][0]~feeder_combout\);

-- Location: LCCOMB_X14_Y2_N28
\rx_frame[20][0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][0]~29_combout\ = (!byte_cnt(0) & (byte_cnt(2) & (!byte_cnt(3) & \rx_frame[29][0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datac => byte_cnt(3),
	datad => \rx_frame[29][0]~19_combout\,
	combout => \rx_frame[20][0]~29_combout\);

-- Location: FF_X14_Y2_N5
\rx_frame[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[20][0]~feeder_combout\,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][0]~q\);

-- Location: LCCOMB_X13_Y2_N16
\tx_frame[20][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][0]~feeder_combout\ = \rx_frame[20][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[20][0]~q\,
	combout => \tx_frame[20][0]~feeder_combout\);

-- Location: FF_X13_Y2_N17
\tx_frame[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][0]~q\);

-- Location: LCCOMB_X13_Y2_N10
\out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~5_combout\ = (tx_cnt(2) & ((\out_data~4_combout\ & (\tx_frame[28][0]~q\)) # (!\out_data~4_combout\ & ((\tx_frame[20][0]~q\))))) # (!tx_cnt(2) & (\out_data~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~4_combout\,
	datac => \tx_frame[28][0]~q\,
	datad => \tx_frame[20][0]~q\,
	combout => \out_data~5_combout\);

-- Location: LCCOMB_X12_Y4_N24
\rx_frame[18][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[18][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[18][0]~feeder_combout\);

-- Location: LCCOMB_X12_Y4_N4
\rx_frame[18][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[18][0]~27_combout\ = (!byte_cnt(2) & (!byte_cnt(0) & (!byte_cnt(3) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(3),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[18][0]~27_combout\);

-- Location: FF_X12_Y4_N25
\rx_frame[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[18][0]~feeder_combout\,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][0]~q\);

-- Location: FF_X13_Y2_N23
\tx_frame[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][0]~q\);

-- Location: LCCOMB_X16_Y2_N28
\rx_frame[22][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[22][0]~26_combout\ = (!byte_cnt(0) & (byte_cnt(2) & (!byte_cnt(3) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(0),
	datab => byte_cnt(2),
	datac => byte_cnt(3),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[22][0]~26_combout\);

-- Location: FF_X16_Y2_N5
\rx_frame[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][0]~q\);

-- Location: LCCOMB_X12_Y2_N12
\tx_frame[22][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][0]~feeder_combout\ = \rx_frame[22][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][0]~q\,
	combout => \tx_frame[22][0]~feeder_combout\);

-- Location: FF_X12_Y2_N13
\tx_frame[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][0]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][0]~q\);

-- Location: LCCOMB_X13_Y2_N22
\out_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~2_combout\ = (tx_cnt(2) & ((tx_cnt(3)) # ((\tx_frame[22][0]~q\)))) # (!tx_cnt(2) & (!tx_cnt(3) & (\tx_frame[18][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[18][0]~q\,
	datad => \tx_frame[22][0]~q\,
	combout => \out_data~2_combout\);

-- Location: LCCOMB_X12_Y2_N6
\rx_frame[26][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[26][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_frame[26][0]~feeder_combout\);

-- Location: LCCOMB_X12_Y4_N18
\rx_frame[26][0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[26][0]~28_combout\ = (!byte_cnt(2) & (!byte_cnt(0) & (byte_cnt(3) & \rx_frame[27][0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_cnt(2),
	datab => byte_cnt(0),
	datac => byte_cnt(3),
	datad => \rx_frame[27][0]~25_combout\,
	combout => \rx_frame[26][0]~28_combout\);

-- Location: FF_X12_Y2_N7
\rx_frame[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[26][0]~feeder_combout\,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][0]~q\);

-- Location: FF_X13_Y2_N19
\tx_frame[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[26][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][0]~q\);

-- Location: FF_X14_Y5_N31
\tx_frame[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[30][0]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][0]~q\);

-- Location: LCCOMB_X13_Y2_N18
\out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~3_combout\ = (\out_data~2_combout\ & (((\tx_frame[30][0]~q\)) # (!tx_cnt(3)))) # (!\out_data~2_combout\ & (tx_cnt(3) & ((\tx_frame[26][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~2_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[30][0]~q\,
	datad => \tx_frame[26][0]~q\,
	combout => \out_data~3_combout\);

-- Location: LCCOMB_X13_Y2_N28
\out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~6_combout\ = (tx_cnt(0) & (((tx_cnt(1))))) # (!tx_cnt(0) & ((tx_cnt(1) & ((\out_data~3_combout\))) # (!tx_cnt(1) & (\out_data~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~5_combout\,
	datab => tx_cnt(0),
	datac => tx_cnt(1),
	datad => \out_data~3_combout\,
	combout => \out_data~6_combout\);

-- Location: LCCOMB_X12_Y6_N14
\out_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~9_combout\ = (tx_cnt(0) & ((\out_data~6_combout\ & ((\out_data~8_combout\))) # (!\out_data~6_combout\ & (\out_data~1_combout\)))) # (!tx_cnt(0) & (((\out_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~1_combout\,
	datac => \out_data~8_combout\,
	datad => \out_data~6_combout\,
	combout => \out_data~9_combout\);

-- Location: LCCOMB_X12_Y6_N24
\out_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~37_combout\ = (\out_data~36_combout\ & (((\tx_frame[49][0]~q\)) # (!\out_data~10_combout\))) # (!\out_data~36_combout\ & (\out_data~10_combout\ & ((\out_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~36_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][0]~q\,
	datad => \out_data~9_combout\,
	combout => \out_data~37_combout\);

-- Location: LCCOMB_X11_Y6_N8
\out_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~38_combout\ = (\state.SEND~q\ & \out_data~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~37_combout\,
	combout => \out_data~38_combout\);

-- Location: FF_X19_Y6_N27
\rx_frame[40][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][1]~q\);

-- Location: FF_X17_Y6_N31
\tx_frame[40][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][1]~q\);

-- Location: FF_X13_Y8_N7
\rx_frame[41][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][1]~q\);

-- Location: LCCOMB_X16_Y6_N8
\tx_frame[41][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][1]~feeder_combout\ = \rx_frame[41][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][1]~q\,
	combout => \tx_frame[41][1]~feeder_combout\);

-- Location: FF_X16_Y6_N9
\tx_frame[41][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][1]~q\);

-- Location: LCCOMB_X17_Y6_N30
\out_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~49_combout\ = (tx_cnt(0) & ((tx_cnt(1)) # ((\tx_frame[41][1]~q\)))) # (!tx_cnt(0) & (!tx_cnt(1) & (\tx_frame[40][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[40][1]~q\,
	datad => \tx_frame[41][1]~q\,
	combout => \out_data~49_combout\);

-- Location: LCCOMB_X21_Y6_N22
\rx_frame[43][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[43][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[43][1]~feeder_combout\);

-- Location: FF_X21_Y6_N23
\rx_frame[43][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[43][1]~feeder_combout\,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][1]~q\);

-- Location: FF_X17_Y6_N21
\tx_frame[43][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][1]~q\);

-- Location: FF_X19_Y5_N1
\rx_frame[42][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][1]~q\);

-- Location: LCCOMB_X17_Y6_N16
\tx_frame[42][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][1]~feeder_combout\ = \rx_frame[42][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][1]~q\,
	combout => \tx_frame[42][1]~feeder_combout\);

-- Location: FF_X17_Y6_N17
\tx_frame[42][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][1]~q\);

-- Location: LCCOMB_X17_Y6_N20
\out_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~50_combout\ = (\out_data~49_combout\ & (((\tx_frame[43][1]~q\)) # (!tx_cnt(1)))) # (!\out_data~49_combout\ & (tx_cnt(1) & ((\tx_frame[42][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~49_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[43][1]~q\,
	datad => \tx_frame[42][1]~q\,
	combout => \out_data~50_combout\);

-- Location: FF_X18_Y8_N15
\rx_frame[44][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][1]~q\);

-- Location: FF_X16_Y5_N7
\tx_frame[44][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][1]~q\);

-- Location: LCCOMB_X16_Y8_N28
\rx_frame[46][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[46][1]~feeder_combout\);

-- Location: FF_X16_Y8_N29
\rx_frame[46][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[46][1]~feeder_combout\,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][1]~q\);

-- Location: LCCOMB_X16_Y5_N12
\tx_frame[46][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][1]~feeder_combout\ = \rx_frame[46][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][1]~q\,
	combout => \tx_frame[46][1]~feeder_combout\);

-- Location: FF_X16_Y5_N13
\tx_frame[46][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][1]~q\);

-- Location: LCCOMB_X16_Y5_N6
\out_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~56_combout\ = (tx_cnt(1) & ((tx_cnt(0)) # ((\tx_frame[46][1]~q\)))) # (!tx_cnt(1) & (!tx_cnt(0) & (\tx_frame[44][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[44][1]~q\,
	datad => \tx_frame[46][1]~q\,
	combout => \out_data~56_combout\);

-- Location: FF_X16_Y5_N15
\rx_frame[47][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][1]~q\);

-- Location: FF_X16_Y5_N1
\tx_frame[47][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][1]~q\);

-- Location: LCCOMB_X21_Y8_N6
\rx_frame[45][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[45][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[45][1]~feeder_combout\);

-- Location: FF_X21_Y8_N7
\rx_frame[45][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[45][1]~feeder_combout\,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][1]~q\);

-- Location: LCCOMB_X21_Y5_N8
\tx_frame[45][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][1]~feeder_combout\ = \rx_frame[45][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][1]~q\,
	combout => \tx_frame[45][1]~feeder_combout\);

-- Location: FF_X21_Y5_N9
\tx_frame[45][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][1]~q\);

-- Location: LCCOMB_X16_Y5_N0
\out_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~57_combout\ = (\out_data~56_combout\ & (((\tx_frame[47][1]~q\)) # (!tx_cnt(0)))) # (!\out_data~56_combout\ & (tx_cnt(0) & ((\tx_frame[45][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~56_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[47][1]~q\,
	datad => \tx_frame[45][1]~q\,
	combout => \out_data~57_combout\);

-- Location: LCCOMB_X19_Y8_N6
\rx_frame[48][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[48][1]~feeder_combout\);

-- Location: FF_X19_Y8_N7
\rx_frame[48][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[48][1]~feeder_combout\,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][1]~q\);

-- Location: FF_X16_Y6_N15
\tx_frame[48][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][1]~q\);

-- Location: FF_X18_Y5_N3
\rx_frame[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][1]~q\);

-- Location: FF_X21_Y5_N29
\tx_frame[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][1]~q\);

-- Location: LCCOMB_X21_Y4_N8
\rx_frame[37][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[37][1]~feeder_combout\);

-- Location: FF_X21_Y4_N9
\rx_frame[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[37][1]~feeder_combout\,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][1]~q\);

-- Location: LCCOMB_X21_Y5_N4
\tx_frame[37][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][1]~feeder_combout\ = \rx_frame[37][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][1]~q\,
	combout => \tx_frame[37][1]~feeder_combout\);

-- Location: FF_X21_Y5_N5
\tx_frame[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][1]~q\);

-- Location: FF_X19_Y4_N9
\rx_frame[39][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][1]~q\);

-- Location: FF_X21_Y5_N13
\tx_frame[39][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][1]~q\);

-- Location: LCCOMB_X22_Y4_N24
\rx_frame[36][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[36][1]~feeder_combout\);

-- Location: FF_X22_Y4_N25
\rx_frame[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[36][1]~feeder_combout\,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][1]~q\);

-- Location: FF_X22_Y5_N3
\tx_frame[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][1]~q\);

-- Location: LCCOMB_X22_Y5_N12
\rx_frame[38][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[38][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[38][1]~feeder_combout\);

-- Location: FF_X22_Y5_N13
\rx_frame[38][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[38][1]~feeder_combout\,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][1]~q\);

-- Location: LCCOMB_X22_Y5_N24
\tx_frame[38][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][1]~feeder_combout\ = \rx_frame[38][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][1]~q\,
	combout => \tx_frame[38][1]~feeder_combout\);

-- Location: FF_X22_Y5_N25
\tx_frame[38][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][1]~q\);

-- Location: LCCOMB_X22_Y5_N2
\out_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~51_combout\ = (tx_cnt(1) & ((tx_cnt(0)) # ((\tx_frame[38][1]~q\)))) # (!tx_cnt(1) & (!tx_cnt(0) & (\tx_frame[36][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[36][1]~q\,
	datad => \tx_frame[38][1]~q\,
	combout => \out_data~51_combout\);

-- Location: LCCOMB_X21_Y5_N12
\out_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~52_combout\ = (tx_cnt(0) & ((\out_data~51_combout\ & ((\tx_frame[39][1]~q\))) # (!\out_data~51_combout\ & (\tx_frame[37][1]~q\)))) # (!tx_cnt(0) & (((\out_data~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[37][1]~q\,
	datac => \tx_frame[39][1]~q\,
	datad => \out_data~51_combout\,
	combout => \out_data~52_combout\);

-- Location: LCCOMB_X21_Y5_N28
\out_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~53_combout\ = (\out_data~19_combout\ & (((\out_data~52_combout\)) # (!\out_data~18_combout\))) # (!\out_data~19_combout\ & (\out_data~18_combout\ & (\tx_frame[35][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~19_combout\,
	datab => \out_data~18_combout\,
	datac => \tx_frame[35][1]~q\,
	datad => \out_data~52_combout\,
	combout => \out_data~53_combout\);

-- Location: FF_X14_Y2_N15
\rx_frame[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][1]~q\);

-- Location: FF_X16_Y6_N7
\tx_frame[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][1]~q\);

-- Location: FF_X14_Y4_N29
\rx_frame[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][1]~q\);

-- Location: LCCOMB_X16_Y6_N28
\tx_frame[32][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][1]~feeder_combout\ = \rx_frame[28][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][1]~q\,
	combout => \tx_frame[32][1]~feeder_combout\);

-- Location: FF_X16_Y6_N29
\tx_frame[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][1]~q\);

-- Location: LCCOMB_X16_Y6_N6
\out_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~54_combout\ = (\out_data~53_combout\ & (((\tx_frame[33][1]~q\)) # (!\out_data~15_combout\))) # (!\out_data~53_combout\ & (\out_data~15_combout\ & ((\tx_frame[32][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~53_combout\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][1]~q\,
	datad => \tx_frame[32][1]~q\,
	combout => \out_data~54_combout\);

-- Location: LCCOMB_X16_Y6_N14
\out_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~55_combout\ = (\out_data~11_combout\ & ((\out_data~14_combout\) # ((\tx_frame[48][1]~q\)))) # (!\out_data~11_combout\ & (!\out_data~14_combout\ & ((\out_data~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~14_combout\,
	datac => \tx_frame[48][1]~q\,
	datad => \out_data~54_combout\,
	combout => \out_data~55_combout\);

-- Location: LCCOMB_X16_Y6_N4
\out_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~58_combout\ = (\out_data~55_combout\ & (((\out_data~57_combout\) # (!\out_data~14_combout\)))) # (!\out_data~55_combout\ & (\out_data~50_combout\ & ((\out_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~50_combout\,
	datab => \out_data~57_combout\,
	datac => \out_data~55_combout\,
	datad => \out_data~14_combout\,
	combout => \out_data~58_combout\);

-- Location: LCCOMB_X17_Y8_N6
\rx_frame[8][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[8][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[8][1]~feeder_combout\);

-- Location: FF_X17_Y8_N7
\rx_frame[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[8][1]~feeder_combout\,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][1]~q\);

-- Location: FF_X13_Y7_N11
\tx_frame[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[8][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][1]~q\);

-- Location: LCCOMB_X21_Y3_N4
\tx_frame[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][1]~feeder_combout\ = \rx_frame[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][1]~q\,
	combout => \tx_frame[6][1]~feeder_combout\);

-- Location: FF_X21_Y3_N5
\tx_frame[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][1]~q\);

-- Location: LCCOMB_X13_Y7_N10
\out_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~59_combout\ = (tx_cnt(2) & ((tx_cnt(3)) # ((\tx_frame[6][1]~q\)))) # (!tx_cnt(2) & (!tx_cnt(3) & (\tx_frame[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[2][1]~q\,
	datad => \tx_frame[6][1]~q\,
	combout => \out_data~59_combout\);

-- Location: FF_X21_Y7_N17
\rx_frame[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][1]~q\);

-- Location: FF_X13_Y7_N17
\tx_frame[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][1]~q\);

-- Location: LCCOMB_X13_Y7_N20
\tx_frame[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[10][1]~feeder_combout\ = \rx_frame[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[4][1]~q\,
	combout => \tx_frame[10][1]~feeder_combout\);

-- Location: FF_X13_Y7_N21
\tx_frame[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[10][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][1]~q\);

-- Location: LCCOMB_X13_Y7_N16
\out_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~60_combout\ = (\out_data~59_combout\ & (((\tx_frame[14][1]~q\)) # (!tx_cnt(3)))) # (!\out_data~59_combout\ & (tx_cnt(3) & ((\tx_frame[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~59_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[14][1]~q\,
	datad => \tx_frame[10][1]~q\,
	combout => \out_data~60_combout\);

-- Location: FF_X16_Y7_N21
\tx_frame[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][1]~q\);

-- Location: FF_X22_Y7_N15
\rx_frame[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][1]~q\);

-- Location: FF_X21_Y7_N21
\tx_frame[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][1]~q\);

-- Location: FF_X23_Y7_N1
\rx_frame[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][1]~q\);

-- Location: FF_X22_Y7_N29
\tx_frame[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[9][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][1]~q\);

-- Location: FF_X22_Y3_N29
\tx_frame[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[1][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][1]~q\);

-- Location: LCCOMB_X22_Y7_N28
\out_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~66_combout\ = (tx_cnt(3) & (tx_cnt(2))) # (!tx_cnt(3) & ((tx_cnt(2) & ((\tx_frame[7][1]~q\))) # (!tx_cnt(2) & (\tx_frame[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(2),
	datac => \tx_frame[3][1]~q\,
	datad => \tx_frame[7][1]~q\,
	combout => \out_data~66_combout\);

-- Location: LCCOMB_X21_Y7_N20
\out_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~67_combout\ = (tx_cnt(3) & ((\out_data~66_combout\ & ((\tx_frame[15][1]~q\))) # (!\out_data~66_combout\ & (\tx_frame[11][1]~q\)))) # (!tx_cnt(3) & (((\out_data~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[11][1]~q\,
	datac => \tx_frame[15][1]~q\,
	datad => \out_data~66_combout\,
	combout => \out_data~67_combout\);

-- Location: LCCOMB_X14_Y7_N8
\rx_frame[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[6][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[6][1]~feeder_combout\);

-- Location: FF_X14_Y7_N9
\rx_frame[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[6][1]~feeder_combout\,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][1]~q\);

-- Location: FF_X14_Y7_N19
\tx_frame[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][1]~q\);

-- Location: FF_X14_Y6_N5
\tx_frame[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[2][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][1]~q\);

-- Location: LCCOMB_X14_Y7_N18
\out_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~63_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[8][1]~q\))) # (!tx_cnt(3) & (\tx_frame[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[0][1]~q\,
	datad => \tx_frame[8][1]~q\,
	combout => \out_data~63_combout\);

-- Location: FF_X17_Y9_N7
\rx_frame[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][1]~q\);

-- Location: FF_X18_Y9_N27
\tx_frame[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[12][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][1]~q\);

-- Location: FF_X18_Y5_N25
\rx_frame[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][1]~q\);

-- Location: LCCOMB_X18_Y9_N20
\tx_frame[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[4][1]~feeder_combout\ = \rx_frame[10][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[10][1]~q\,
	combout => \tx_frame[4][1]~feeder_combout\);

-- Location: FF_X18_Y9_N21
\tx_frame[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[4][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][1]~q\);

-- Location: LCCOMB_X18_Y9_N26
\out_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~64_combout\ = (tx_cnt(2) & ((\out_data~63_combout\ & (\tx_frame[12][1]~q\)) # (!\out_data~63_combout\ & ((\tx_frame[4][1]~q\))))) # (!tx_cnt(2) & (\out_data~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~63_combout\,
	datac => \tx_frame[12][1]~q\,
	datad => \tx_frame[4][1]~q\,
	combout => \out_data~64_combout\);

-- Location: LCCOMB_X18_Y6_N22
\tx_frame[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][1]~feeder_combout\ = \rx_frame[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][1]~q\,
	combout => \tx_frame[9][1]~feeder_combout\);

-- Location: FF_X18_Y6_N23
\tx_frame[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][1]~q\);

-- Location: LCCOMB_X17_Y7_N6
\rx_frame[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[7][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[7][1]~feeder_combout\);

-- Location: FF_X17_Y7_N7
\rx_frame[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[7][1]~feeder_combout\,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][1]~q\);

-- Location: FF_X18_Y9_N25
\tx_frame[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][1]~q\);

-- Location: LCCOMB_X18_Y9_N24
\out_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~61_combout\ = (tx_cnt(2) & (((tx_cnt(3))))) # (!tx_cnt(2) & ((tx_cnt(3) & (\tx_frame[9][1]~q\)) # (!tx_cnt(3) & ((\tx_frame[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[9][1]~q\,
	datac => \tx_frame[1][1]~q\,
	datad => tx_cnt(3),
	combout => \out_data~61_combout\);

-- Location: LCCOMB_X19_Y8_N12
\rx_frame[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[13][1]~feeder_combout\);

-- Location: FF_X19_Y8_N13
\rx_frame[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[13][1]~feeder_combout\,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][1]~q\);

-- Location: FF_X18_Y9_N15
\tx_frame[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[13][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][1]~q\);

-- Location: FF_X19_Y7_N13
\rx_frame[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][1]~q\);

-- Location: LCCOMB_X19_Y7_N10
\tx_frame[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[5][1]~feeder_combout\ = \rx_frame[11][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[11][1]~q\,
	combout => \tx_frame[5][1]~feeder_combout\);

-- Location: FF_X19_Y7_N11
\tx_frame[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[5][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][1]~q\);

-- Location: LCCOMB_X18_Y9_N14
\out_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~62_combout\ = (tx_cnt(2) & ((\out_data~61_combout\ & (\tx_frame[13][1]~q\)) # (!\out_data~61_combout\ & ((\tx_frame[5][1]~q\))))) # (!tx_cnt(2) & (\out_data~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~61_combout\,
	datac => \tx_frame[13][1]~q\,
	datad => \tx_frame[5][1]~q\,
	combout => \out_data~62_combout\);

-- Location: LCCOMB_X17_Y9_N14
\out_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~65_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\out_data~62_combout\))) # (!tx_cnt(0) & (\out_data~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~64_combout\,
	datac => \out_data~62_combout\,
	datad => tx_cnt(0),
	combout => \out_data~65_combout\);

-- Location: LCCOMB_X13_Y7_N30
\out_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~68_combout\ = (tx_cnt(1) & ((\out_data~65_combout\ & ((\out_data~67_combout\))) # (!\out_data~65_combout\ & (\out_data~60_combout\)))) # (!tx_cnt(1) & (((\out_data~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~60_combout\,
	datac => \out_data~67_combout\,
	datad => \out_data~65_combout\,
	combout => \out_data~68_combout\);

-- Location: LCCOMB_X11_Y6_N30
\out_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~69_combout\ = (\out_data~10_combout\ & (((tx_cnt(5))))) # (!\out_data~10_combout\ & ((tx_cnt(5) & (\out_data~58_combout\)) # (!tx_cnt(5) & ((\out_data~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~58_combout\,
	datab => \out_data~10_combout\,
	datac => \out_data~68_combout\,
	datad => tx_cnt(5),
	combout => \out_data~69_combout\);

-- Location: FF_X13_Y6_N9
\rx_frame[49][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][1]~q\);

-- Location: FF_X11_Y6_N21
\tx_frame[49][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][1]~q\);

-- Location: LCCOMB_X13_Y5_N4
\rx_frame[21][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[21][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[21][1]~feeder_combout\);

-- Location: FF_X13_Y5_N5
\rx_frame[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[21][1]~feeder_combout\,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][1]~q\);

-- Location: LCCOMB_X10_Y5_N24
\tx_frame[21][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[21][1]~feeder_combout\ = \rx_frame[21][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[21][1]~q\,
	combout => \tx_frame[21][1]~feeder_combout\);

-- Location: FF_X10_Y5_N25
\tx_frame[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[21][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][1]~q\);

-- Location: FF_X11_Y5_N3
\tx_frame[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][1]~q\);

-- Location: FF_X12_Y8_N21
\rx_frame[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][1]~q\);

-- Location: FF_X12_Y5_N3
\tx_frame[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[17][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][1]~q\);

-- Location: FF_X12_Y3_N25
\rx_frame[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][1]~q\);

-- Location: LCCOMB_X12_Y5_N16
\tx_frame[25][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][1]~feeder_combout\ = \rx_frame[25][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][1]~q\,
	combout => \tx_frame[25][1]~feeder_combout\);

-- Location: FF_X12_Y5_N17
\tx_frame[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][1]~q\);

-- Location: LCCOMB_X12_Y5_N2
\out_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~39_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[25][1]~q\))) # (!tx_cnt(3) & (\tx_frame[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[17][1]~q\,
	datad => \tx_frame[25][1]~q\,
	combout => \out_data~39_combout\);

-- Location: LCCOMB_X11_Y5_N2
\out_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~40_combout\ = (tx_cnt(2) & ((\out_data~39_combout\ & ((\tx_frame[29][1]~q\))) # (!\out_data~39_combout\ & (\tx_frame[21][1]~q\)))) # (!tx_cnt(2) & (((\out_data~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[21][1]~q\,
	datac => \tx_frame[29][1]~q\,
	datad => \out_data~39_combout\,
	combout => \out_data~40_combout\);

-- Location: LCCOMB_X14_Y5_N12
\tx_frame[26][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[26][1]~feeder_combout\ = \rx_frame[30][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[30][1]~q\,
	combout => \tx_frame[26][1]~feeder_combout\);

-- Location: FF_X14_Y5_N13
\tx_frame[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[26][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][1]~q\);

-- Location: FF_X11_Y4_N9
\rx_frame[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][1]~q\);

-- Location: FF_X10_Y4_N13
\tx_frame[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[26][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][1]~q\);

-- Location: FF_X16_Y2_N7
\rx_frame[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][1]~q\);

-- Location: LCCOMB_X11_Y4_N10
\tx_frame[22][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][1]~feeder_combout\ = \rx_frame[22][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[22][1]~q\,
	combout => \tx_frame[22][1]~feeder_combout\);

-- Location: FF_X11_Y4_N11
\tx_frame[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][1]~q\);

-- Location: FF_X12_Y4_N11
\rx_frame[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][1]~q\);

-- Location: FF_X11_Y4_N29
\tx_frame[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][1]~q\);

-- Location: LCCOMB_X11_Y4_N28
\out_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~41_combout\ = (tx_cnt(3) & (((tx_cnt(2))))) # (!tx_cnt(3) & ((tx_cnt(2) & (\tx_frame[22][1]~q\)) # (!tx_cnt(2) & ((\tx_frame[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[22][1]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[18][1]~q\,
	datad => tx_cnt(2),
	combout => \out_data~41_combout\);

-- Location: LCCOMB_X10_Y4_N12
\out_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~42_combout\ = (tx_cnt(3) & ((\out_data~41_combout\ & ((\tx_frame[30][1]~q\))) # (!\out_data~41_combout\ & (\tx_frame[26][1]~q\)))) # (!tx_cnt(3) & (((\out_data~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[26][1]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[30][1]~q\,
	datad => \out_data~41_combout\,
	combout => \out_data~42_combout\);

-- Location: FF_X14_Y2_N9
\rx_frame[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][1]~q\);

-- Location: LCCOMB_X13_Y3_N0
\tx_frame[20][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][1]~feeder_combout\ = \rx_frame[20][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[20][1]~q\,
	combout => \tx_frame[20][1]~feeder_combout\);

-- Location: FF_X13_Y3_N1
\tx_frame[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][1]~q\);

-- Location: FF_X14_Y4_N19
\rx_frame[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][1]~q\);

-- Location: LCCOMB_X10_Y4_N22
\tx_frame[24][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[24][1]~feeder_combout\ = \rx_frame[24][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[24][1]~q\,
	combout => \tx_frame[24][1]~feeder_combout\);

-- Location: FF_X10_Y4_N23
\tx_frame[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[24][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][1]~q\);

-- Location: LCCOMB_X13_Y4_N24
\rx_frame[16][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[16][1]~feeder_combout\);

-- Location: FF_X13_Y4_N25
\rx_frame[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[16][1]~feeder_combout\,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][1]~q\);

-- Location: FF_X10_Y4_N17
\tx_frame[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][1]~q\);

-- Location: LCCOMB_X10_Y4_N16
\out_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~43_combout\ = (tx_cnt(3) & ((\tx_frame[24][1]~q\) # ((tx_cnt(2))))) # (!tx_cnt(3) & (((\tx_frame[16][1]~q\ & !tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[24][1]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[16][1]~q\,
	datad => tx_cnt(2),
	combout => \out_data~43_combout\);

-- Location: FF_X10_Y4_N19
\tx_frame[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[32][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][1]~q\);

-- Location: LCCOMB_X10_Y4_N18
\out_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~44_combout\ = (\out_data~43_combout\ & (((\tx_frame[28][1]~q\) # (!tx_cnt(2))))) # (!\out_data~43_combout\ & (\tx_frame[20][1]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[20][1]~q\,
	datab => \out_data~43_combout\,
	datac => \tx_frame[28][1]~q\,
	datad => tx_cnt(2),
	combout => \out_data~44_combout\);

-- Location: LCCOMB_X10_Y4_N0
\out_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~45_combout\ = (tx_cnt(0) & (((tx_cnt(1))))) # (!tx_cnt(0) & ((tx_cnt(1) & (\out_data~42_combout\)) # (!tx_cnt(1) & ((\out_data~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~42_combout\,
	datab => tx_cnt(0),
	datac => tx_cnt(1),
	datad => \out_data~44_combout\,
	combout => \out_data~45_combout\);

-- Location: FF_X12_Y3_N3
\rx_frame[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][1]~q\);

-- Location: FF_X11_Y5_N7
\tx_frame[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[19][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][1]~q\);

-- Location: LCCOMB_X11_Y3_N18
\rx_frame[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[23][1]~feeder_combout\);

-- Location: FF_X11_Y3_N19
\rx_frame[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[23][1]~feeder_combout\,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][1]~q\);

-- Location: LCCOMB_X10_Y5_N14
\tx_frame[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[23][1]~feeder_combout\ = \rx_frame[23][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[23][1]~q\,
	combout => \tx_frame[23][1]~feeder_combout\);

-- Location: FF_X10_Y5_N15
\tx_frame[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[23][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][1]~q\);

-- Location: LCCOMB_X11_Y5_N6
\out_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~46_combout\ = (tx_cnt(2) & ((tx_cnt(3)) # ((\tx_frame[23][1]~q\)))) # (!tx_cnt(2) & (!tx_cnt(3) & (\tx_frame[19][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[19][1]~q\,
	datad => \tx_frame[23][1]~q\,
	combout => \out_data~46_combout\);

-- Location: LCCOMB_X11_Y5_N14
\rx_frame[27][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_frame[27][1]~feeder_combout\);

-- Location: FF_X11_Y5_N15
\rx_frame[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[27][1]~feeder_combout\,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][1]~q\);

-- Location: FF_X11_Y5_N29
\tx_frame[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][1]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][1]~q\);

-- Location: LCCOMB_X16_Y5_N4
\tx_frame[27][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][1]~feeder_combout\ = \rx_frame[31][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][1]~q\,
	combout => \tx_frame[27][1]~feeder_combout\);

-- Location: FF_X16_Y5_N5
\tx_frame[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][1]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][1]~q\);

-- Location: LCCOMB_X11_Y5_N28
\out_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~47_combout\ = (\out_data~46_combout\ & (((\tx_frame[31][1]~q\)) # (!tx_cnt(3)))) # (!\out_data~46_combout\ & (tx_cnt(3) & ((\tx_frame[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~46_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[31][1]~q\,
	datad => \tx_frame[27][1]~q\,
	combout => \out_data~47_combout\);

-- Location: LCCOMB_X10_Y5_N20
\out_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~48_combout\ = (\out_data~45_combout\ & (((\out_data~47_combout\) # (!tx_cnt(0))))) # (!\out_data~45_combout\ & (\out_data~40_combout\ & (tx_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~40_combout\,
	datab => \out_data~45_combout\,
	datac => tx_cnt(0),
	datad => \out_data~47_combout\,
	combout => \out_data~48_combout\);

-- Location: LCCOMB_X11_Y6_N20
\out_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~70_combout\ = (\out_data~69_combout\ & (((\tx_frame[49][1]~q\)) # (!\out_data~10_combout\))) # (!\out_data~69_combout\ & (\out_data~10_combout\ & ((\out_data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~69_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][1]~q\,
	datad => \out_data~48_combout\,
	combout => \out_data~70_combout\);

-- Location: LCCOMB_X11_Y6_N10
\out_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~71_combout\ = (\state.SEND~q\ & \out_data~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~70_combout\,
	combout => \out_data~71_combout\);

-- Location: LCCOMB_X11_Y3_N10
\tx_frame[27][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][2]~feeder_combout\ = \rx_frame[31][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][2]~q\,
	combout => \tx_frame[27][2]~feeder_combout\);

-- Location: FF_X11_Y3_N11
\tx_frame[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][2]~q\);

-- Location: LCCOMB_X11_Y5_N4
\rx_frame[27][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[27][2]~feeder_combout\);

-- Location: FF_X11_Y5_N5
\rx_frame[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[27][2]~feeder_combout\,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][2]~q\);

-- Location: FF_X11_Y3_N1
\tx_frame[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][2]~q\);

-- Location: FF_X12_Y3_N15
\rx_frame[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][2]~q\);

-- Location: FF_X11_Y3_N25
\tx_frame[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[19][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][2]~q\);

-- Location: LCCOMB_X11_Y3_N12
\rx_frame[23][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[23][2]~feeder_combout\);

-- Location: FF_X11_Y3_N13
\rx_frame[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[23][2]~feeder_combout\,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][2]~q\);

-- Location: LCCOMB_X11_Y3_N16
\tx_frame[23][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[23][2]~feeder_combout\ = \rx_frame[23][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[23][2]~q\,
	combout => \tx_frame[23][2]~feeder_combout\);

-- Location: FF_X11_Y3_N17
\tx_frame[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[23][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][2]~q\);

-- Location: LCCOMB_X11_Y3_N24
\out_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~79_combout\ = (tx_cnt(3) & (tx_cnt(2))) # (!tx_cnt(3) & ((tx_cnt(2) & ((\tx_frame[23][2]~q\))) # (!tx_cnt(2) & (\tx_frame[19][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(2),
	datac => \tx_frame[19][2]~q\,
	datad => \tx_frame[23][2]~q\,
	combout => \out_data~79_combout\);

-- Location: LCCOMB_X11_Y3_N0
\out_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~80_combout\ = (tx_cnt(3) & ((\out_data~79_combout\ & ((\tx_frame[31][2]~q\))) # (!\out_data~79_combout\ & (\tx_frame[27][2]~q\)))) # (!tx_cnt(3) & (((\out_data~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[27][2]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[31][2]~q\,
	datad => \out_data~79_combout\,
	combout => \out_data~80_combout\);

-- Location: LCCOMB_X14_Y5_N28
\tx_frame[26][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[26][2]~feeder_combout\ = \rx_frame[30][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[30][2]~q\,
	combout => \tx_frame[26][2]~feeder_combout\);

-- Location: FF_X14_Y5_N29
\tx_frame[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[26][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][2]~q\);

-- Location: LCCOMB_X11_Y4_N26
\rx_frame[26][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[26][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[26][2]~feeder_combout\);

-- Location: FF_X11_Y4_N27
\rx_frame[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[26][2]~feeder_combout\,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][2]~q\);

-- Location: FF_X11_Y4_N21
\tx_frame[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[26][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][2]~q\);

-- Location: FF_X16_Y2_N13
\rx_frame[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][2]~q\);

-- Location: LCCOMB_X11_Y2_N20
\tx_frame[22][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][2]~feeder_combout\ = \rx_frame[22][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][2]~q\,
	combout => \tx_frame[22][2]~feeder_combout\);

-- Location: FF_X11_Y2_N21
\tx_frame[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][2]~q\);

-- Location: LCCOMB_X12_Y4_N0
\rx_frame[18][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[18][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[18][2]~feeder_combout\);

-- Location: FF_X12_Y4_N1
\rx_frame[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[18][2]~feeder_combout\,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][2]~q\);

-- Location: FF_X11_Y4_N3
\tx_frame[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][2]~q\);

-- Location: LCCOMB_X11_Y4_N2
\out_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~74_combout\ = (tx_cnt(3) & (((tx_cnt(2))))) # (!tx_cnt(3) & ((tx_cnt(2) & (\tx_frame[22][2]~q\)) # (!tx_cnt(2) & ((\tx_frame[18][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[22][2]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[18][2]~q\,
	datad => tx_cnt(2),
	combout => \out_data~74_combout\);

-- Location: LCCOMB_X11_Y4_N20
\out_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~75_combout\ = (tx_cnt(3) & ((\out_data~74_combout\ & ((\tx_frame[30][2]~q\))) # (!\out_data~74_combout\ & (\tx_frame[26][2]~q\)))) # (!tx_cnt(3) & (((\out_data~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[26][2]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[30][2]~q\,
	datad => \out_data~74_combout\,
	combout => \out_data~75_combout\);

-- Location: LCCOMB_X14_Y2_N24
\rx_frame[20][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[20][2]~feeder_combout\);

-- Location: FF_X14_Y2_N25
\rx_frame[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[20][2]~feeder_combout\,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][2]~q\);

-- Location: LCCOMB_X12_Y2_N14
\tx_frame[20][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][2]~feeder_combout\ = \rx_frame[20][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[20][2]~q\,
	combout => \tx_frame[20][2]~feeder_combout\);

-- Location: FF_X12_Y2_N15
\tx_frame[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][2]~q\);

-- Location: LCCOMB_X14_Y4_N26
\rx_frame[24][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[24][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[24][2]~feeder_combout\);

-- Location: FF_X14_Y4_N27
\rx_frame[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[24][2]~feeder_combout\,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][2]~q\);

-- Location: LCCOMB_X10_Y4_N6
\tx_frame[24][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[24][2]~feeder_combout\ = \rx_frame[24][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[24][2]~q\,
	combout => \tx_frame[24][2]~feeder_combout\);

-- Location: FF_X10_Y4_N7
\tx_frame[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[24][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][2]~q\);

-- Location: LCCOMB_X13_Y4_N22
\rx_frame[16][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[16][2]~feeder_combout\);

-- Location: FF_X13_Y4_N23
\rx_frame[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[16][2]~feeder_combout\,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][2]~q\);

-- Location: FF_X10_Y4_N29
\tx_frame[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][2]~q\);

-- Location: LCCOMB_X10_Y4_N28
\out_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~76_combout\ = (tx_cnt(3) & ((\tx_frame[24][2]~q\) # ((tx_cnt(2))))) # (!tx_cnt(3) & (((\tx_frame[16][2]~q\ & !tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[24][2]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[16][2]~q\,
	datad => tx_cnt(2),
	combout => \out_data~76_combout\);

-- Location: FF_X11_Y4_N17
\tx_frame[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[32][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][2]~q\);

-- Location: LCCOMB_X11_Y4_N16
\out_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~77_combout\ = (\out_data~76_combout\ & (((\tx_frame[28][2]~q\) # (!tx_cnt(2))))) # (!\out_data~76_combout\ & (\tx_frame[20][2]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[20][2]~q\,
	datab => \out_data~76_combout\,
	datac => \tx_frame[28][2]~q\,
	datad => tx_cnt(2),
	combout => \out_data~77_combout\);

-- Location: LCCOMB_X11_Y4_N4
\out_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~78_combout\ = (tx_cnt(0) & (((tx_cnt(1))))) # (!tx_cnt(0) & ((tx_cnt(1) & (\out_data~75_combout\)) # (!tx_cnt(1) & ((\out_data~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~75_combout\,
	datac => tx_cnt(1),
	datad => \out_data~77_combout\,
	combout => \out_data~78_combout\);

-- Location: LCCOMB_X12_Y8_N14
\rx_frame[17][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[17][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[17][2]~feeder_combout\);

-- Location: FF_X12_Y8_N15
\rx_frame[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[17][2]~feeder_combout\,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][2]~q\);

-- Location: FF_X12_Y5_N25
\tx_frame[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[17][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][2]~q\);

-- Location: FF_X12_Y3_N13
\rx_frame[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][2]~q\);

-- Location: LCCOMB_X12_Y5_N18
\tx_frame[25][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][2]~feeder_combout\ = \rx_frame[25][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][2]~q\,
	combout => \tx_frame[25][2]~feeder_combout\);

-- Location: FF_X12_Y5_N19
\tx_frame[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][2]~q\);

-- Location: LCCOMB_X12_Y5_N24
\out_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~72_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[25][2]~q\))) # (!tx_cnt(3) & (\tx_frame[17][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[17][2]~q\,
	datad => \tx_frame[25][2]~q\,
	combout => \out_data~72_combout\);

-- Location: FF_X12_Y5_N27
\tx_frame[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][2]~q\);

-- Location: FF_X13_Y5_N19
\rx_frame[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][2]~q\);

-- Location: LCCOMB_X12_Y5_N10
\tx_frame[21][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[21][2]~feeder_combout\ = \rx_frame[21][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[21][2]~q\,
	combout => \tx_frame[21][2]~feeder_combout\);

-- Location: FF_X12_Y5_N11
\tx_frame[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[21][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][2]~q\);

-- Location: LCCOMB_X12_Y5_N26
\out_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~73_combout\ = (tx_cnt(2) & ((\out_data~72_combout\ & (\tx_frame[29][2]~q\)) # (!\out_data~72_combout\ & ((\tx_frame[21][2]~q\))))) # (!tx_cnt(2) & (\out_data~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~72_combout\,
	datac => \tx_frame[29][2]~q\,
	datad => \tx_frame[21][2]~q\,
	combout => \out_data~73_combout\);

-- Location: LCCOMB_X11_Y4_N18
\out_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~81_combout\ = (tx_cnt(0) & ((\out_data~78_combout\ & (\out_data~80_combout\)) # (!\out_data~78_combout\ & ((\out_data~73_combout\))))) # (!tx_cnt(0) & (((\out_data~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~80_combout\,
	datac => \out_data~78_combout\,
	datad => \out_data~73_combout\,
	combout => \out_data~81_combout\);

-- Location: FF_X13_Y6_N17
\rx_frame[49][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][2]~q\);

-- Location: FF_X12_Y7_N11
\tx_frame[49][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][2]~q\);

-- Location: LCCOMB_X16_Y7_N28
\tx_frame[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[11][2]~feeder_combout\ = \rx_frame[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[5][2]~q\,
	combout => \tx_frame[11][2]~feeder_combout\);

-- Location: FF_X16_Y7_N29
\tx_frame[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[11][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][2]~q\);

-- Location: FF_X23_Y7_N31
\rx_frame[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][2]~q\);

-- Location: FF_X22_Y7_N25
\tx_frame[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[9][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][2]~q\);

-- Location: LCCOMB_X22_Y3_N12
\tx_frame[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[7][2]~feeder_combout\ = \rx_frame[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[1][2]~q\,
	combout => \tx_frame[7][2]~feeder_combout\);

-- Location: FF_X22_Y3_N13
\tx_frame[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[7][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][2]~q\);

-- Location: LCCOMB_X22_Y7_N24
\out_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~99_combout\ = (tx_cnt(3) & (tx_cnt(2))) # (!tx_cnt(3) & ((tx_cnt(2) & ((\tx_frame[7][2]~q\))) # (!tx_cnt(2) & (\tx_frame[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(2),
	datac => \tx_frame[3][2]~q\,
	datad => \tx_frame[7][2]~q\,
	combout => \out_data~99_combout\);

-- Location: LCCOMB_X22_Y7_N0
\rx_frame[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[15][2]~feeder_combout\);

-- Location: FF_X22_Y7_N1
\rx_frame[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[15][2]~feeder_combout\,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][2]~q\);

-- Location: FF_X19_Y7_N29
\tx_frame[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][2]~q\);

-- Location: LCCOMB_X19_Y7_N28
\out_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~100_combout\ = (\out_data~99_combout\ & (((\tx_frame[15][2]~q\) # (!tx_cnt(3))))) # (!\out_data~99_combout\ & (\tx_frame[11][2]~q\ & ((tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[11][2]~q\,
	datab => \out_data~99_combout\,
	datac => \tx_frame[15][2]~q\,
	datad => tx_cnt(3),
	combout => \out_data~100_combout\);

-- Location: LCCOMB_X18_Y5_N28
\rx_frame[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[10][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[10][2]~feeder_combout\);

-- Location: FF_X18_Y5_N29
\rx_frame[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[10][2]~feeder_combout\,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][2]~q\);

-- Location: LCCOMB_X12_Y7_N12
\tx_frame[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[4][2]~feeder_combout\ = \rx_frame[10][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[10][2]~q\,
	combout => \tx_frame[4][2]~feeder_combout\);

-- Location: FF_X12_Y7_N13
\tx_frame[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[4][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][2]~q\);

-- Location: LCCOMB_X16_Y9_N4
\rx_frame[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[12][2]~feeder_combout\);

-- Location: FF_X16_Y9_N5
\rx_frame[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[12][2]~feeder_combout\,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][2]~q\);

-- Location: FF_X12_Y7_N23
\tx_frame[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[12][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][2]~q\);

-- Location: LCCOMB_X14_Y6_N12
\tx_frame[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[8][2]~feeder_combout\ = \rx_frame[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[2][2]~q\,
	combout => \tx_frame[8][2]~feeder_combout\);

-- Location: FF_X14_Y6_N13
\tx_frame[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[8][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][2]~q\);

-- Location: FF_X14_Y7_N15
\rx_frame[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][2]~q\);

-- Location: FF_X13_Y7_N23
\tx_frame[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][2]~q\);

-- Location: LCCOMB_X13_Y7_N22
\out_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~96_combout\ = (tx_cnt(2) & (((tx_cnt(3))))) # (!tx_cnt(2) & ((tx_cnt(3) & (\tx_frame[8][2]~q\)) # (!tx_cnt(3) & ((\tx_frame[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[8][2]~q\,
	datac => \tx_frame[0][2]~q\,
	datad => tx_cnt(3),
	combout => \out_data~96_combout\);

-- Location: LCCOMB_X12_Y7_N22
\out_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~97_combout\ = (tx_cnt(2) & ((\out_data~96_combout\ & ((\tx_frame[12][2]~q\))) # (!\out_data~96_combout\ & (\tx_frame[4][2]~q\)))) # (!tx_cnt(2) & (((\out_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[4][2]~q\,
	datab => tx_cnt(2),
	datac => \tx_frame[12][2]~q\,
	datad => \out_data~96_combout\,
	combout => \out_data~97_combout\);

-- Location: LCCOMB_X18_Y6_N14
\tx_frame[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][2]~feeder_combout\ = \rx_frame[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][2]~q\,
	combout => \tx_frame[9][2]~feeder_combout\);

-- Location: FF_X18_Y6_N15
\tx_frame[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][2]~q\);

-- Location: FF_X17_Y7_N15
\rx_frame[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][2]~q\);

-- Location: FF_X17_Y7_N23
\tx_frame[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][2]~q\);

-- Location: LCCOMB_X17_Y7_N22
\out_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~94_combout\ = (tx_cnt(2) & (((tx_cnt(3))))) # (!tx_cnt(2) & ((tx_cnt(3) & (\tx_frame[9][2]~q\)) # (!tx_cnt(3) & ((\tx_frame[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[9][2]~q\,
	datac => \tx_frame[1][2]~q\,
	datad => tx_cnt(3),
	combout => \out_data~94_combout\);

-- Location: LCCOMB_X19_Y8_N16
\rx_frame[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[13][2]~feeder_combout\);

-- Location: FF_X19_Y8_N17
\rx_frame[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[13][2]~feeder_combout\,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][2]~q\);

-- Location: FF_X13_Y7_N25
\tx_frame[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[13][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][2]~q\);

-- Location: LCCOMB_X19_Y7_N24
\rx_frame[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[11][2]~feeder_combout\);

-- Location: FF_X19_Y7_N25
\rx_frame[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][2]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][2]~q\);

-- Location: LCCOMB_X12_Y7_N14
\tx_frame[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[5][2]~feeder_combout\ = \rx_frame[11][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[11][2]~q\,
	combout => \tx_frame[5][2]~feeder_combout\);

-- Location: FF_X12_Y7_N15
\tx_frame[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[5][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][2]~q\);

-- Location: LCCOMB_X13_Y7_N24
\out_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~95_combout\ = (tx_cnt(2) & ((\out_data~94_combout\ & (\tx_frame[13][2]~q\)) # (!\out_data~94_combout\ & ((\tx_frame[5][2]~q\))))) # (!tx_cnt(2) & (\out_data~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~94_combout\,
	datac => \tx_frame[13][2]~q\,
	datad => \tx_frame[5][2]~q\,
	combout => \out_data~95_combout\);

-- Location: LCCOMB_X12_Y7_N8
\out_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~98_combout\ = (tx_cnt(0) & ((tx_cnt(1)) # ((\out_data~95_combout\)))) # (!tx_cnt(0) & (!tx_cnt(1) & (\out_data~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \out_data~97_combout\,
	datad => \out_data~95_combout\,
	combout => \out_data~98_combout\);

-- Location: FF_X14_Y8_N3
\tx_frame[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][2]~q\);

-- Location: LCCOMB_X21_Y7_N18
\rx_frame[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[14][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[14][2]~feeder_combout\);

-- Location: FF_X21_Y7_N19
\rx_frame[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[14][2]~feeder_combout\,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][2]~q\);

-- Location: FF_X21_Y8_N25
\tx_frame[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][2]~q\);

-- Location: LCCOMB_X21_Y3_N0
\tx_frame[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][2]~feeder_combout\ = \rx_frame[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][2]~q\,
	combout => \tx_frame[6][2]~feeder_combout\);

-- Location: FF_X21_Y3_N1
\tx_frame[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][2]~q\);

-- Location: LCCOMB_X17_Y8_N2
\rx_frame[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[8][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[8][2]~feeder_combout\);

-- Location: FF_X17_Y8_N3
\rx_frame[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[8][2]~feeder_combout\,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][2]~q\);

-- Location: FF_X21_Y8_N19
\tx_frame[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[8][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][2]~q\);

-- Location: LCCOMB_X21_Y8_N18
\out_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~92_combout\ = (tx_cnt(3) & (((tx_cnt(2))))) # (!tx_cnt(3) & ((tx_cnt(2) & (\tx_frame[6][2]~q\)) # (!tx_cnt(2) & ((\tx_frame[2][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[6][2]~q\,
	datac => \tx_frame[2][2]~q\,
	datad => tx_cnt(2),
	combout => \out_data~92_combout\);

-- Location: LCCOMB_X21_Y8_N24
\out_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~93_combout\ = (tx_cnt(3) & ((\out_data~92_combout\ & ((\tx_frame[14][2]~q\))) # (!\out_data~92_combout\ & (\tx_frame[10][2]~q\)))) # (!tx_cnt(3) & (((\out_data~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[10][2]~q\,
	datac => \tx_frame[14][2]~q\,
	datad => \out_data~92_combout\,
	combout => \out_data~93_combout\);

-- Location: LCCOMB_X12_Y7_N26
\out_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~101_combout\ = (tx_cnt(1) & ((\out_data~98_combout\ & (\out_data~100_combout\)) # (!\out_data~98_combout\ & ((\out_data~93_combout\))))) # (!tx_cnt(1) & (((\out_data~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~100_combout\,
	datab => tx_cnt(1),
	datac => \out_data~98_combout\,
	datad => \out_data~93_combout\,
	combout => \out_data~101_combout\);

-- Location: FF_X16_Y8_N15
\rx_frame[46][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][2]~q\);

-- Location: LCCOMB_X17_Y8_N12
\tx_frame[46][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][2]~feeder_combout\ = \rx_frame[46][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][2]~q\,
	combout => \tx_frame[46][2]~feeder_combout\);

-- Location: FF_X17_Y8_N13
\tx_frame[46][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][2]~q\);

-- Location: LCCOMB_X16_Y5_N18
\rx_frame[47][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[47][2]~feeder_combout\);

-- Location: FF_X16_Y5_N19
\rx_frame[47][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[47][2]~feeder_combout\,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][2]~q\);

-- Location: FF_X18_Y8_N27
\tx_frame[47][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][2]~q\);

-- Location: LCCOMB_X18_Y8_N8
\rx_frame[44][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[44][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[44][2]~feeder_combout\);

-- Location: FF_X18_Y8_N9
\rx_frame[44][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[44][2]~feeder_combout\,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][2]~q\);

-- Location: FF_X18_Y8_N17
\tx_frame[44][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][2]~q\);

-- Location: LCCOMB_X21_Y8_N4
\rx_frame[45][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[45][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[45][2]~feeder_combout\);

-- Location: FF_X21_Y8_N5
\rx_frame[45][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[45][2]~feeder_combout\,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][2]~q\);

-- Location: LCCOMB_X18_Y8_N10
\tx_frame[45][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][2]~feeder_combout\ = \rx_frame[45][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[45][2]~q\,
	combout => \tx_frame[45][2]~feeder_combout\);

-- Location: FF_X18_Y8_N11
\tx_frame[45][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][2]~q\);

-- Location: LCCOMB_X18_Y8_N16
\out_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~89_combout\ = (tx_cnt(0) & ((tx_cnt(1)) # ((\tx_frame[45][2]~q\)))) # (!tx_cnt(0) & (!tx_cnt(1) & (\tx_frame[44][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[44][2]~q\,
	datad => \tx_frame[45][2]~q\,
	combout => \out_data~89_combout\);

-- Location: LCCOMB_X18_Y8_N26
\out_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~90_combout\ = (tx_cnt(1) & ((\out_data~89_combout\ & ((\tx_frame[47][2]~q\))) # (!\out_data~89_combout\ & (\tx_frame[46][2]~q\)))) # (!tx_cnt(1) & (((\out_data~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[46][2]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[47][2]~q\,
	datad => \out_data~89_combout\,
	combout => \out_data~90_combout\);

-- Location: LCCOMB_X14_Y4_N20
\rx_frame[28][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[28][2]~feeder_combout\);

-- Location: FF_X14_Y4_N21
\rx_frame[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[28][2]~feeder_combout\,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][2]~q\);

-- Location: LCCOMB_X14_Y8_N6
\tx_frame[32][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][2]~feeder_combout\ = \rx_frame[28][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][2]~q\,
	combout => \tx_frame[32][2]~feeder_combout\);

-- Location: FF_X14_Y8_N7
\tx_frame[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][2]~q\);

-- Location: FF_X16_Y2_N15
\rx_frame[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][2]~q\);

-- Location: FF_X18_Y8_N31
\tx_frame[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][2]~q\);

-- Location: LCCOMB_X18_Y5_N18
\rx_frame[35][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[35][2]~feeder_combout\);

-- Location: FF_X18_Y5_N19
\rx_frame[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][2]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][2]~q\);

-- Location: FF_X21_Y5_N7
\tx_frame[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][2]~q\);

-- Location: FF_X22_Y5_N7
\rx_frame[38][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][2]~q\);

-- Location: LCCOMB_X21_Y5_N24
\tx_frame[38][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][2]~feeder_combout\ = \rx_frame[38][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][2]~q\,
	combout => \tx_frame[38][2]~feeder_combout\);

-- Location: FF_X21_Y5_N25
\tx_frame[38][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][2]~q\);

-- Location: FF_X19_Y4_N11
\rx_frame[39][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][2]~q\);

-- Location: FF_X21_Y5_N11
\tx_frame[39][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][2]~q\);

-- Location: LCCOMB_X22_Y4_N0
\rx_frame[36][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[36][2]~feeder_combout\);

-- Location: FF_X22_Y4_N1
\rx_frame[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[36][2]~feeder_combout\,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][2]~q\);

-- Location: FF_X22_Y5_N5
\tx_frame[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][2]~q\);

-- Location: LCCOMB_X21_Y4_N12
\rx_frame[37][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[37][2]~feeder_combout\);

-- Location: FF_X21_Y4_N13
\rx_frame[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[37][2]~feeder_combout\,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][2]~q\);

-- Location: LCCOMB_X21_Y4_N24
\tx_frame[37][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][2]~feeder_combout\ = \rx_frame[37][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][2]~q\,
	combout => \tx_frame[37][2]~feeder_combout\);

-- Location: FF_X21_Y4_N25
\tx_frame[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][2]~q\);

-- Location: LCCOMB_X22_Y5_N4
\out_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~84_combout\ = (tx_cnt(1) & (tx_cnt(0))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\tx_frame[37][2]~q\))) # (!tx_cnt(0) & (\tx_frame[36][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[36][2]~q\,
	datad => \tx_frame[37][2]~q\,
	combout => \out_data~84_combout\);

-- Location: LCCOMB_X21_Y5_N10
\out_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~85_combout\ = (tx_cnt(1) & ((\out_data~84_combout\ & ((\tx_frame[39][2]~q\))) # (!\out_data~84_combout\ & (\tx_frame[38][2]~q\)))) # (!tx_cnt(1) & (((\out_data~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[38][2]~q\,
	datac => \tx_frame[39][2]~q\,
	datad => \out_data~84_combout\,
	combout => \out_data~85_combout\);

-- Location: LCCOMB_X21_Y5_N6
\out_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~86_combout\ = (\out_data~19_combout\ & (((\out_data~85_combout\)) # (!\out_data~18_combout\))) # (!\out_data~19_combout\ & (\out_data~18_combout\ & (\tx_frame[35][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~19_combout\,
	datab => \out_data~18_combout\,
	datac => \tx_frame[35][2]~q\,
	datad => \out_data~85_combout\,
	combout => \out_data~86_combout\);

-- Location: LCCOMB_X18_Y8_N30
\out_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~87_combout\ = (\out_data~15_combout\ & ((\out_data~86_combout\ & ((\tx_frame[33][2]~q\))) # (!\out_data~86_combout\ & (\tx_frame[32][2]~q\)))) # (!\out_data~15_combout\ & (((\out_data~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[32][2]~q\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][2]~q\,
	datad => \out_data~86_combout\,
	combout => \out_data~87_combout\);

-- Location: LCCOMB_X13_Y8_N28
\rx_frame[41][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[41][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[41][2]~feeder_combout\);

-- Location: FF_X13_Y8_N29
\rx_frame[41][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[41][2]~feeder_combout\,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][2]~q\);

-- Location: LCCOMB_X14_Y6_N10
\tx_frame[41][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][2]~feeder_combout\ = \rx_frame[41][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][2]~q\,
	combout => \tx_frame[41][2]~feeder_combout\);

-- Location: FF_X14_Y6_N11
\tx_frame[41][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][2]~q\);

-- Location: LCCOMB_X19_Y6_N12
\rx_frame[40][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[40][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[40][2]~feeder_combout\);

-- Location: FF_X19_Y6_N13
\rx_frame[40][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[40][2]~feeder_combout\,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][2]~q\);

-- Location: FF_X22_Y6_N5
\tx_frame[40][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][2]~q\);

-- Location: FF_X17_Y5_N15
\rx_frame[42][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][2]~q\);

-- Location: LCCOMB_X21_Y5_N26
\tx_frame[42][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][2]~feeder_combout\ = \rx_frame[42][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][2]~q\,
	combout => \tx_frame[42][2]~feeder_combout\);

-- Location: FF_X21_Y5_N27
\tx_frame[42][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][2]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][2]~q\);

-- Location: LCCOMB_X22_Y6_N4
\out_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~82_combout\ = (tx_cnt(0) & (tx_cnt(1))) # (!tx_cnt(0) & ((tx_cnt(1) & ((\tx_frame[42][2]~q\))) # (!tx_cnt(1) & (\tx_frame[40][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[40][2]~q\,
	datad => \tx_frame[42][2]~q\,
	combout => \out_data~82_combout\);

-- Location: FF_X21_Y6_N7
\rx_frame[43][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][2]~q\);

-- Location: FF_X22_Y6_N27
\tx_frame[43][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][2]~q\);

-- Location: LCCOMB_X22_Y6_N26
\out_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~83_combout\ = (\out_data~82_combout\ & (((\tx_frame[43][2]~q\) # (!tx_cnt(0))))) # (!\out_data~82_combout\ & (\tx_frame[41][2]~q\ & ((tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[41][2]~q\,
	datab => \out_data~82_combout\,
	datac => \tx_frame[43][2]~q\,
	datad => tx_cnt(0),
	combout => \out_data~83_combout\);

-- Location: LCCOMB_X18_Y8_N0
\out_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~88_combout\ = (\out_data~11_combout\ & (\out_data~14_combout\)) # (!\out_data~11_combout\ & ((\out_data~14_combout\ & ((\out_data~83_combout\))) # (!\out_data~14_combout\ & (\out_data~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~14_combout\,
	datac => \out_data~87_combout\,
	datad => \out_data~83_combout\,
	combout => \out_data~88_combout\);

-- Location: LCCOMB_X19_Y8_N30
\rx_frame[48][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_frame[48][2]~feeder_combout\);

-- Location: FF_X19_Y8_N31
\rx_frame[48][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[48][2]~feeder_combout\,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][2]~q\);

-- Location: FF_X18_Y8_N5
\tx_frame[48][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][2]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][2]~q\);

-- Location: LCCOMB_X18_Y8_N4
\out_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~91_combout\ = (\out_data~88_combout\ & ((\out_data~90_combout\) # ((!\out_data~11_combout\)))) # (!\out_data~88_combout\ & (((\tx_frame[48][2]~q\ & \out_data~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~90_combout\,
	datab => \out_data~88_combout\,
	datac => \tx_frame[48][2]~q\,
	datad => \out_data~11_combout\,
	combout => \out_data~91_combout\);

-- Location: LCCOMB_X12_Y7_N24
\out_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~102_combout\ = (tx_cnt(5) & ((\out_data~10_combout\) # ((\out_data~91_combout\)))) # (!tx_cnt(5) & (!\out_data~10_combout\ & (\out_data~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(5),
	datab => \out_data~10_combout\,
	datac => \out_data~101_combout\,
	datad => \out_data~91_combout\,
	combout => \out_data~102_combout\);

-- Location: LCCOMB_X12_Y7_N10
\out_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~103_combout\ = (\out_data~10_combout\ & ((\out_data~102_combout\ & ((\tx_frame[49][2]~q\))) # (!\out_data~102_combout\ & (\out_data~81_combout\)))) # (!\out_data~10_combout\ & (((\out_data~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~81_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][2]~q\,
	datad => \out_data~102_combout\,
	combout => \out_data~103_combout\);

-- Location: LCCOMB_X12_Y5_N4
\out_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~104_combout\ = (\state.SEND~q\ & \out_data~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~103_combout\,
	combout => \out_data~104_combout\);

-- Location: LCCOMB_X11_Y3_N20
\rx_frame[23][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[23][3]~feeder_combout\);

-- Location: FF_X11_Y3_N21
\rx_frame[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[23][3]~feeder_combout\,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][3]~q\);

-- Location: LCCOMB_X11_Y3_N6
\tx_frame[23][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[23][3]~feeder_combout\ = \rx_frame[23][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[23][3]~q\,
	combout => \tx_frame[23][3]~feeder_combout\);

-- Location: FF_X11_Y3_N7
\tx_frame[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[23][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][3]~q\);

-- Location: LCCOMB_X12_Y3_N30
\rx_frame[19][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[19][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[19][3]~feeder_combout\);

-- Location: FF_X12_Y3_N31
\rx_frame[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[19][3]~feeder_combout\,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][3]~q\);

-- Location: FF_X11_Y3_N15
\tx_frame[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[19][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][3]~q\);

-- Location: LCCOMB_X11_Y3_N14
\out_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~112_combout\ = (tx_cnt(2) & ((\tx_frame[23][3]~q\) # ((tx_cnt(3))))) # (!tx_cnt(2) & (((\tx_frame[19][3]~q\ & !tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[23][3]~q\,
	datab => tx_cnt(2),
	datac => \tx_frame[19][3]~q\,
	datad => tx_cnt(3),
	combout => \out_data~112_combout\);

-- Location: FF_X11_Y5_N9
\rx_frame[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][3]~q\);

-- Location: FF_X11_Y5_N23
\tx_frame[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][3]~q\);

-- Location: LCCOMB_X11_Y5_N18
\tx_frame[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][3]~feeder_combout\ = \rx_frame[31][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][3]~q\,
	combout => \tx_frame[27][3]~feeder_combout\);

-- Location: FF_X11_Y5_N19
\tx_frame[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][3]~q\);

-- Location: LCCOMB_X11_Y5_N22
\out_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~113_combout\ = (\out_data~112_combout\ & (((\tx_frame[31][3]~q\)) # (!tx_cnt(3)))) # (!\out_data~112_combout\ & (tx_cnt(3) & ((\tx_frame[27][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~112_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[31][3]~q\,
	datad => \tx_frame[27][3]~q\,
	combout => \out_data~113_combout\);

-- Location: FF_X12_Y4_N15
\rx_frame[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][3]~q\);

-- Location: FF_X13_Y2_N7
\tx_frame[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][3]~q\);

-- Location: LCCOMB_X16_Y2_N16
\rx_frame[22][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[22][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[22][3]~feeder_combout\);

-- Location: FF_X16_Y2_N17
\rx_frame[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[22][3]~feeder_combout\,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][3]~q\);

-- Location: LCCOMB_X13_Y2_N24
\tx_frame[22][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][3]~feeder_combout\ = \rx_frame[22][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][3]~q\,
	combout => \tx_frame[22][3]~feeder_combout\);

-- Location: FF_X13_Y2_N25
\tx_frame[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][3]~q\);

-- Location: LCCOMB_X13_Y2_N6
\out_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~107_combout\ = (tx_cnt(2) & ((tx_cnt(3)) # ((\tx_frame[22][3]~q\)))) # (!tx_cnt(2) & (!tx_cnt(3) & (\tx_frame[18][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[18][3]~q\,
	datad => \tx_frame[22][3]~q\,
	combout => \out_data~107_combout\);

-- Location: FF_X13_Y2_N27
\rx_frame[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][3]~q\);

-- Location: FF_X13_Y2_N31
\tx_frame[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[26][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][3]~q\);

-- Location: LCCOMB_X14_Y5_N4
\tx_frame[26][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[26][3]~feeder_combout\ = \rx_frame[30][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[30][3]~q\,
	combout => \tx_frame[26][3]~feeder_combout\);

-- Location: FF_X14_Y5_N5
\tx_frame[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[26][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][3]~q\);

-- Location: LCCOMB_X13_Y2_N30
\out_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~108_combout\ = (\out_data~107_combout\ & (((\tx_frame[30][3]~q\)) # (!tx_cnt(3)))) # (!\out_data~107_combout\ & (tx_cnt(3) & ((\tx_frame[26][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~107_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[30][3]~q\,
	datad => \tx_frame[26][3]~q\,
	combout => \out_data~108_combout\);

-- Location: LCCOMB_X13_Y4_N8
\rx_frame[16][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[16][3]~feeder_combout\);

-- Location: FF_X13_Y4_N9
\rx_frame[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[16][3]~feeder_combout\,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][3]~q\);

-- Location: FF_X13_Y2_N15
\tx_frame[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][3]~q\);

-- Location: LCCOMB_X14_Y4_N2
\rx_frame[24][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[24][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[24][3]~feeder_combout\);

-- Location: FF_X14_Y4_N3
\rx_frame[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[24][3]~feeder_combout\,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][3]~q\);

-- Location: LCCOMB_X13_Y2_N0
\tx_frame[24][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[24][3]~feeder_combout\ = \rx_frame[24][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[24][3]~q\,
	combout => \tx_frame[24][3]~feeder_combout\);

-- Location: FF_X13_Y2_N1
\tx_frame[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[24][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][3]~q\);

-- Location: LCCOMB_X13_Y2_N14
\out_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~109_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[24][3]~q\))) # (!tx_cnt(3) & (\tx_frame[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[16][3]~q\,
	datad => \tx_frame[24][3]~q\,
	combout => \out_data~109_combout\);

-- Location: FF_X13_Y2_N13
\tx_frame[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[32][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][3]~q\);

-- Location: LCCOMB_X14_Y2_N22
\rx_frame[20][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[20][3]~feeder_combout\);

-- Location: FF_X14_Y2_N23
\rx_frame[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[20][3]~feeder_combout\,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][3]~q\);

-- Location: LCCOMB_X13_Y2_N20
\tx_frame[20][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][3]~feeder_combout\ = \rx_frame[20][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[20][3]~q\,
	combout => \tx_frame[20][3]~feeder_combout\);

-- Location: FF_X13_Y2_N21
\tx_frame[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][3]~q\);

-- Location: LCCOMB_X13_Y2_N12
\out_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~110_combout\ = (tx_cnt(2) & ((\out_data~109_combout\ & (\tx_frame[28][3]~q\)) # (!\out_data~109_combout\ & ((\tx_frame[20][3]~q\))))) # (!tx_cnt(2) & (\out_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~109_combout\,
	datac => \tx_frame[28][3]~q\,
	datad => \tx_frame[20][3]~q\,
	combout => \out_data~110_combout\);

-- Location: LCCOMB_X13_Y2_N4
\out_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~111_combout\ = (tx_cnt(0) & (((tx_cnt(1))))) # (!tx_cnt(0) & ((tx_cnt(1) & (\out_data~108_combout\)) # (!tx_cnt(1) & ((\out_data~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~108_combout\,
	datab => tx_cnt(0),
	datac => tx_cnt(1),
	datad => \out_data~110_combout\,
	combout => \out_data~111_combout\);

-- Location: LCCOMB_X12_Y8_N12
\rx_frame[17][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[17][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[17][3]~feeder_combout\);

-- Location: FF_X12_Y8_N13
\rx_frame[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[17][3]~feeder_combout\,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][3]~q\);

-- Location: FF_X11_Y5_N17
\tx_frame[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[17][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][3]~q\);

-- Location: LCCOMB_X12_Y3_N0
\rx_frame[25][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[25][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[25][3]~feeder_combout\);

-- Location: FF_X12_Y3_N1
\rx_frame[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[25][3]~feeder_combout\,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][3]~q\);

-- Location: LCCOMB_X11_Y5_N10
\tx_frame[25][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][3]~feeder_combout\ = \rx_frame[25][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][3]~q\,
	combout => \tx_frame[25][3]~feeder_combout\);

-- Location: FF_X11_Y5_N11
\tx_frame[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][3]~q\);

-- Location: LCCOMB_X11_Y5_N16
\out_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~105_combout\ = (tx_cnt(2) & (tx_cnt(3))) # (!tx_cnt(2) & ((tx_cnt(3) & ((\tx_frame[25][3]~q\))) # (!tx_cnt(3) & (\tx_frame[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(3),
	datac => \tx_frame[17][3]~q\,
	datad => \tx_frame[25][3]~q\,
	combout => \out_data~105_combout\);

-- Location: FF_X11_Y5_N13
\tx_frame[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][3]~q\);

-- Location: LCCOMB_X13_Y5_N28
\rx_frame[21][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[21][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[21][3]~feeder_combout\);

-- Location: FF_X13_Y5_N29
\rx_frame[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[21][3]~feeder_combout\,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][3]~q\);

-- Location: LCCOMB_X12_Y5_N28
\tx_frame[21][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[21][3]~feeder_combout\ = \rx_frame[21][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[21][3]~q\,
	combout => \tx_frame[21][3]~feeder_combout\);

-- Location: FF_X12_Y5_N29
\tx_frame[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[21][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][3]~q\);

-- Location: LCCOMB_X11_Y5_N12
\out_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~106_combout\ = (tx_cnt(2) & ((\out_data~105_combout\ & (\tx_frame[29][3]~q\)) # (!\out_data~105_combout\ & ((\tx_frame[21][3]~q\))))) # (!tx_cnt(2) & (\out_data~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~105_combout\,
	datac => \tx_frame[29][3]~q\,
	datad => \tx_frame[21][3]~q\,
	combout => \out_data~106_combout\);

-- Location: LCCOMB_X11_Y5_N0
\out_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~114_combout\ = (\out_data~111_combout\ & ((\out_data~113_combout\) # ((!tx_cnt(0))))) # (!\out_data~111_combout\ & (((tx_cnt(0) & \out_data~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~113_combout\,
	datab => \out_data~111_combout\,
	datac => tx_cnt(0),
	datad => \out_data~106_combout\,
	combout => \out_data~114_combout\);

-- Location: FF_X11_Y6_N23
\rx_frame[49][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][3]~q\);

-- Location: FF_X11_Y6_N27
\tx_frame[49][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][3]~q\);

-- Location: FF_X19_Y8_N15
\rx_frame[48][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][3]~q\);

-- Location: FF_X18_Y8_N25
\tx_frame[48][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][3]~q\);

-- Location: LCCOMB_X21_Y5_N30
\rx_frame[35][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[35][3]~feeder_combout\);

-- Location: FF_X21_Y5_N31
\rx_frame[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][3]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][3]~q\);

-- Location: FF_X21_Y4_N21
\tx_frame[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][3]~q\);

-- Location: FF_X22_Y5_N1
\rx_frame[38][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][3]~q\);

-- Location: LCCOMB_X22_Y5_N30
\tx_frame[38][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][3]~feeder_combout\ = \rx_frame[38][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][3]~q\,
	combout => \tx_frame[38][3]~feeder_combout\);

-- Location: FF_X22_Y5_N31
\tx_frame[38][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][3]~q\);

-- Location: FF_X22_Y4_N23
\rx_frame[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][3]~q\);

-- Location: FF_X22_Y4_N11
\tx_frame[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][3]~q\);

-- Location: LCCOMB_X22_Y4_N10
\out_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~117_combout\ = (tx_cnt(1) & ((\tx_frame[38][3]~q\) # ((tx_cnt(0))))) # (!tx_cnt(1) & (((\tx_frame[36][3]~q\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[38][3]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[36][3]~q\,
	datad => tx_cnt(0),
	combout => \out_data~117_combout\);

-- Location: LCCOMB_X21_Y4_N4
\rx_frame[37][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[37][3]~feeder_combout\);

-- Location: FF_X21_Y4_N5
\rx_frame[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[37][3]~feeder_combout\,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][3]~q\);

-- Location: FF_X21_Y4_N17
\tx_frame[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[37][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][3]~q\);

-- Location: FF_X19_Y4_N13
\rx_frame[39][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][3]~q\);

-- Location: FF_X22_Y4_N27
\tx_frame[39][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][3]~q\);

-- Location: LCCOMB_X22_Y4_N26
\out_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~118_combout\ = (\out_data~117_combout\ & (((\tx_frame[39][3]~q\) # (!tx_cnt(0))))) # (!\out_data~117_combout\ & (\tx_frame[37][3]~q\ & ((tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~117_combout\,
	datab => \tx_frame[37][3]~q\,
	datac => \tx_frame[39][3]~q\,
	datad => tx_cnt(0),
	combout => \out_data~118_combout\);

-- Location: LCCOMB_X21_Y4_N20
\out_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~119_combout\ = (\out_data~18_combout\ & ((\out_data~19_combout\ & ((\out_data~118_combout\))) # (!\out_data~19_combout\ & (\tx_frame[35][3]~q\)))) # (!\out_data~18_combout\ & (\out_data~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~18_combout\,
	datab => \out_data~19_combout\,
	datac => \tx_frame[35][3]~q\,
	datad => \out_data~118_combout\,
	combout => \out_data~119_combout\);

-- Location: LCCOMB_X14_Y2_N20
\rx_frame[29][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[29][3]~feeder_combout\);

-- Location: FF_X14_Y2_N21
\rx_frame[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[29][3]~feeder_combout\,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][3]~q\);

-- Location: FF_X21_Y4_N19
\tx_frame[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][3]~q\);

-- Location: LCCOMB_X14_Y4_N12
\rx_frame[28][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[28][3]~feeder_combout\);

-- Location: FF_X14_Y4_N13
\rx_frame[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[28][3]~feeder_combout\,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][3]~q\);

-- Location: LCCOMB_X22_Y4_N2
\tx_frame[32][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][3]~feeder_combout\ = \rx_frame[28][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][3]~q\,
	combout => \tx_frame[32][3]~feeder_combout\);

-- Location: FF_X22_Y4_N3
\tx_frame[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][3]~q\);

-- Location: LCCOMB_X21_Y4_N18
\out_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~120_combout\ = (\out_data~15_combout\ & ((\out_data~119_combout\ & (\tx_frame[33][3]~q\)) # (!\out_data~119_combout\ & ((\tx_frame[32][3]~q\))))) # (!\out_data~15_combout\ & (\out_data~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~15_combout\,
	datab => \out_data~119_combout\,
	datac => \tx_frame[33][3]~q\,
	datad => \tx_frame[32][3]~q\,
	combout => \out_data~120_combout\);

-- Location: LCCOMB_X18_Y8_N24
\out_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~121_combout\ = (\out_data~11_combout\ & ((\out_data~14_combout\) # ((\tx_frame[48][3]~q\)))) # (!\out_data~11_combout\ & (!\out_data~14_combout\ & ((\out_data~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~14_combout\,
	datac => \tx_frame[48][3]~q\,
	datad => \out_data~120_combout\,
	combout => \out_data~121_combout\);

-- Location: FF_X17_Y5_N13
\rx_frame[42][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][3]~q\);

-- Location: LCCOMB_X17_Y6_N22
\tx_frame[42][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][3]~feeder_combout\ = \rx_frame[42][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][3]~q\,
	combout => \tx_frame[42][3]~feeder_combout\);

-- Location: FF_X17_Y6_N23
\tx_frame[42][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][3]~q\);

-- Location: FF_X21_Y6_N21
\rx_frame[43][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][3]~q\);

-- Location: FF_X17_Y6_N5
\tx_frame[43][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][3]~q\);

-- Location: FF_X19_Y6_N11
\rx_frame[40][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][3]~q\);

-- Location: FF_X16_Y6_N25
\tx_frame[40][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][3]~q\);

-- Location: LCCOMB_X13_Y8_N22
\rx_frame[41][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[41][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[41][3]~feeder_combout\);

-- Location: FF_X13_Y8_N23
\rx_frame[41][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[41][3]~feeder_combout\,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][3]~q\);

-- Location: LCCOMB_X16_Y6_N2
\tx_frame[41][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][3]~feeder_combout\ = \rx_frame[41][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][3]~q\,
	combout => \tx_frame[41][3]~feeder_combout\);

-- Location: FF_X16_Y6_N3
\tx_frame[41][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][3]~q\);

-- Location: LCCOMB_X16_Y6_N24
\out_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~115_combout\ = (tx_cnt(1) & (tx_cnt(0))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\tx_frame[41][3]~q\))) # (!tx_cnt(0) & (\tx_frame[40][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[40][3]~q\,
	datad => \tx_frame[41][3]~q\,
	combout => \out_data~115_combout\);

-- Location: LCCOMB_X17_Y6_N4
\out_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~116_combout\ = (tx_cnt(1) & ((\out_data~115_combout\ & ((\tx_frame[43][3]~q\))) # (!\out_data~115_combout\ & (\tx_frame[42][3]~q\)))) # (!tx_cnt(1) & (((\out_data~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[42][3]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[43][3]~q\,
	datad => \out_data~115_combout\,
	combout => \out_data~116_combout\);

-- Location: LCCOMB_X16_Y8_N24
\rx_frame[46][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[46][3]~feeder_combout\);

-- Location: FF_X16_Y8_N25
\rx_frame[46][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[46][3]~feeder_combout\,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][3]~q\);

-- Location: LCCOMB_X16_Y8_N10
\tx_frame[46][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][3]~feeder_combout\ = \rx_frame[46][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][3]~q\,
	combout => \tx_frame[46][3]~feeder_combout\);

-- Location: FF_X16_Y8_N11
\tx_frame[46][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][3]~q\);

-- Location: LCCOMB_X18_Y8_N2
\rx_frame[44][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[44][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[44][3]~feeder_combout\);

-- Location: FF_X18_Y8_N3
\rx_frame[44][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[44][3]~feeder_combout\,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][3]~q\);

-- Location: FF_X16_Y8_N13
\tx_frame[44][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][3]~q\);

-- Location: LCCOMB_X16_Y8_N12
\out_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~122_combout\ = (tx_cnt(1) & ((\tx_frame[46][3]~q\) # ((tx_cnt(0))))) # (!tx_cnt(1) & (((\tx_frame[44][3]~q\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[46][3]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[44][3]~q\,
	datad => tx_cnt(0),
	combout => \out_data~122_combout\);

-- Location: FF_X16_Y5_N29
\rx_frame[47][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][3]~q\);

-- Location: FF_X16_Y8_N7
\tx_frame[47][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][3]~q\);

-- Location: LCCOMB_X21_Y8_N22
\rx_frame[45][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[45][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[45][3]~feeder_combout\);

-- Location: FF_X21_Y8_N23
\rx_frame[45][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[45][3]~feeder_combout\,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][3]~q\);

-- Location: FF_X21_Y8_N11
\tx_frame[45][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[45][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][3]~q\);

-- Location: LCCOMB_X16_Y8_N6
\out_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~123_combout\ = (\out_data~122_combout\ & (((\tx_frame[47][3]~q\)) # (!tx_cnt(0)))) # (!\out_data~122_combout\ & (tx_cnt(0) & ((\tx_frame[45][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~122_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[47][3]~q\,
	datad => \tx_frame[45][3]~q\,
	combout => \out_data~123_combout\);

-- Location: LCCOMB_X14_Y6_N20
\out_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~124_combout\ = (\out_data~121_combout\ & (((\out_data~123_combout\) # (!\out_data~14_combout\)))) # (!\out_data~121_combout\ & (\out_data~116_combout\ & ((\out_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~121_combout\,
	datab => \out_data~116_combout\,
	datac => \out_data~123_combout\,
	datad => \out_data~14_combout\,
	combout => \out_data~124_combout\);

-- Location: FF_X19_Y6_N9
\rx_frame[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][3]~q\);

-- Location: LCCOMB_X16_Y6_N22
\tx_frame[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[4][3]~feeder_combout\ = \rx_frame[10][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[10][3]~q\,
	combout => \tx_frame[4][3]~feeder_combout\);

-- Location: FF_X16_Y6_N23
\tx_frame[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[4][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][3]~q\);

-- Location: FF_X17_Y9_N27
\rx_frame[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][3]~q\);

-- Location: FF_X13_Y7_N19
\tx_frame[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[12][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][3]~q\);

-- Location: LCCOMB_X13_Y6_N0
\tx_frame[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[8][3]~feeder_combout\ = \rx_frame[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[2][3]~q\,
	combout => \tx_frame[8][3]~feeder_combout\);

-- Location: FF_X13_Y6_N1
\tx_frame[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[8][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][3]~q\);

-- Location: LCCOMB_X14_Y7_N20
\rx_frame[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[6][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[6][3]~feeder_combout\);

-- Location: FF_X14_Y7_N21
\rx_frame[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[6][3]~feeder_combout\,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][3]~q\);

-- Location: FF_X13_Y7_N13
\tx_frame[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][3]~q\);

-- Location: LCCOMB_X13_Y7_N12
\out_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~129_combout\ = (tx_cnt(2) & (((tx_cnt(3))))) # (!tx_cnt(2) & ((tx_cnt(3) & (\tx_frame[8][3]~q\)) # (!tx_cnt(3) & ((\tx_frame[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[8][3]~q\,
	datac => \tx_frame[0][3]~q\,
	datad => tx_cnt(3),
	combout => \out_data~129_combout\);

-- Location: LCCOMB_X13_Y7_N18
\out_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~130_combout\ = (tx_cnt(2) & ((\out_data~129_combout\ & ((\tx_frame[12][3]~q\))) # (!\out_data~129_combout\ & (\tx_frame[4][3]~q\)))) # (!tx_cnt(2) & (((\out_data~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[4][3]~q\,
	datac => \tx_frame[12][3]~q\,
	datad => \out_data~129_combout\,
	combout => \out_data~130_combout\);

-- Location: LCCOMB_X18_Y6_N18
\tx_frame[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][3]~feeder_combout\ = \rx_frame[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][3]~q\,
	combout => \tx_frame[9][3]~feeder_combout\);

-- Location: FF_X18_Y6_N19
\tx_frame[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][3]~q\);

-- Location: LCCOMB_X17_Y7_N4
\rx_frame[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[7][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[7][3]~feeder_combout\);

-- Location: FF_X17_Y7_N5
\rx_frame[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[7][3]~feeder_combout\,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][3]~q\);

-- Location: FF_X18_Y7_N5
\tx_frame[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][3]~q\);

-- Location: LCCOMB_X18_Y7_N4
\out_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~127_combout\ = (tx_cnt(3) & ((\tx_frame[9][3]~q\) # ((tx_cnt(2))))) # (!tx_cnt(3) & (((\tx_frame[1][3]~q\ & !tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[9][3]~q\,
	datac => \tx_frame[1][3]~q\,
	datad => tx_cnt(2),
	combout => \out_data~127_combout\);

-- Location: FF_X19_Y8_N25
\rx_frame[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][3]~q\);

-- Location: LCCOMB_X16_Y7_N22
\tx_frame[13][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[13][3]~feeder_combout\ = \rx_frame[13][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[13][3]~q\,
	combout => \tx_frame[13][3]~feeder_combout\);

-- Location: FF_X16_Y7_N23
\tx_frame[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[13][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][3]~q\);

-- Location: LCCOMB_X19_Y7_N2
\rx_frame[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[11][3]~feeder_combout\);

-- Location: FF_X19_Y7_N3
\rx_frame[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][3]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][3]~q\);

-- Location: FF_X17_Y7_N19
\tx_frame[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[11][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][3]~q\);

-- Location: LCCOMB_X17_Y7_N18
\out_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~128_combout\ = (\out_data~127_combout\ & ((\tx_frame[13][3]~q\) # ((!tx_cnt(2))))) # (!\out_data~127_combout\ & (((\tx_frame[5][3]~q\ & tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~127_combout\,
	datab => \tx_frame[13][3]~q\,
	datac => \tx_frame[5][3]~q\,
	datad => tx_cnt(2),
	combout => \out_data~128_combout\);

-- Location: LCCOMB_X13_Y7_N0
\out_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~131_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\out_data~128_combout\))) # (!tx_cnt(0) & (\out_data~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~130_combout\,
	datac => \out_data~128_combout\,
	datad => tx_cnt(0),
	combout => \out_data~131_combout\);

-- Location: LCCOMB_X23_Y7_N20
\rx_frame[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[9][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[9][3]~feeder_combout\);

-- Location: FF_X23_Y7_N21
\rx_frame[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[9][3]~feeder_combout\,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][3]~q\);

-- Location: FF_X22_Y7_N23
\tx_frame[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[9][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][3]~q\);

-- Location: FF_X22_Y3_N9
\tx_frame[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[1][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][3]~q\);

-- Location: LCCOMB_X22_Y7_N22
\out_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~132_combout\ = (tx_cnt(3) & (tx_cnt(2))) # (!tx_cnt(3) & ((tx_cnt(2) & ((\tx_frame[7][3]~q\))) # (!tx_cnt(2) & (\tx_frame[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(2),
	datac => \tx_frame[3][3]~q\,
	datad => \tx_frame[7][3]~q\,
	combout => \out_data~132_combout\);

-- Location: LCCOMB_X22_Y7_N20
\rx_frame[15][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_frame[15][3]~feeder_combout\);

-- Location: FF_X22_Y7_N21
\rx_frame[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[15][3]~feeder_combout\,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][3]~q\);

-- Location: FF_X21_Y7_N11
\tx_frame[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][3]~q\);

-- Location: LCCOMB_X16_Y7_N12
\tx_frame[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[11][3]~feeder_combout\ = \rx_frame[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[5][3]~q\,
	combout => \tx_frame[11][3]~feeder_combout\);

-- Location: FF_X16_Y7_N13
\tx_frame[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[11][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][3]~q\);

-- Location: LCCOMB_X21_Y7_N10
\out_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~133_combout\ = (tx_cnt(3) & ((\out_data~132_combout\ & (\tx_frame[15][3]~q\)) # (!\out_data~132_combout\ & ((\tx_frame[11][3]~q\))))) # (!tx_cnt(3) & (\out_data~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \out_data~132_combout\,
	datac => \tx_frame[15][3]~q\,
	datad => \tx_frame[11][3]~q\,
	combout => \out_data~133_combout\);

-- Location: LCCOMB_X21_Y3_N12
\tx_frame[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][3]~feeder_combout\ = \rx_frame[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][3]~q\,
	combout => \tx_frame[6][3]~feeder_combout\);

-- Location: FF_X21_Y3_N13
\tx_frame[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][3]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][3]~q\);

-- Location: FF_X17_Y8_N9
\rx_frame[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][3]~q\);

-- Location: FF_X17_Y8_N23
\tx_frame[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[8][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][3]~q\);

-- Location: LCCOMB_X17_Y8_N22
\out_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~125_combout\ = (tx_cnt(2) & ((\tx_frame[6][3]~q\) # ((tx_cnt(3))))) # (!tx_cnt(2) & (((\tx_frame[2][3]~q\ & !tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[6][3]~q\,
	datab => tx_cnt(2),
	datac => \tx_frame[2][3]~q\,
	datad => tx_cnt(3),
	combout => \out_data~125_combout\);

-- Location: FF_X14_Y8_N5
\tx_frame[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][3]~q\);

-- Location: FF_X21_Y7_N1
\rx_frame[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][3]~q\);

-- Location: FF_X17_Y8_N5
\tx_frame[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][3]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][3]~q\);

-- Location: LCCOMB_X17_Y8_N4
\out_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~126_combout\ = (\out_data~125_combout\ & (((\tx_frame[14][3]~q\) # (!tx_cnt(3))))) # (!\out_data~125_combout\ & (\tx_frame[10][3]~q\ & ((tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~125_combout\,
	datab => \tx_frame[10][3]~q\,
	datac => \tx_frame[14][3]~q\,
	datad => tx_cnt(3),
	combout => \out_data~126_combout\);

-- Location: LCCOMB_X13_Y7_N26
\out_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~134_combout\ = (tx_cnt(1) & ((\out_data~131_combout\ & (\out_data~133_combout\)) # (!\out_data~131_combout\ & ((\out_data~126_combout\))))) # (!tx_cnt(1) & (\out_data~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~131_combout\,
	datac => \out_data~133_combout\,
	datad => \out_data~126_combout\,
	combout => \out_data~134_combout\);

-- Location: LCCOMB_X11_Y6_N24
\out_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~135_combout\ = (tx_cnt(5) & ((\out_data~124_combout\) # ((\out_data~10_combout\)))) # (!tx_cnt(5) & (((!\out_data~10_combout\ & \out_data~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~124_combout\,
	datab => tx_cnt(5),
	datac => \out_data~10_combout\,
	datad => \out_data~134_combout\,
	combout => \out_data~135_combout\);

-- Location: LCCOMB_X11_Y6_N26
\out_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~136_combout\ = (\out_data~10_combout\ & ((\out_data~135_combout\ & ((\tx_frame[49][3]~q\))) # (!\out_data~135_combout\ & (\out_data~114_combout\)))) # (!\out_data~10_combout\ & (((\out_data~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~114_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][3]~q\,
	datad => \out_data~135_combout\,
	combout => \out_data~136_combout\);

-- Location: LCCOMB_X11_Y6_N4
\out_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~137_combout\ = (\out_data~136_combout\ & \state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_data~136_combout\,
	datad => \state.SEND~q\,
	combout => \out_data~137_combout\);

-- Location: LCCOMB_X16_Y8_N26
\rx_frame[46][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[46][4]~feeder_combout\);

-- Location: FF_X16_Y8_N27
\rx_frame[46][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[46][4]~feeder_combout\,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][4]~q\);

-- Location: LCCOMB_X16_Y5_N16
\tx_frame[46][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][4]~feeder_combout\ = \rx_frame[46][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][4]~q\,
	combout => \tx_frame[46][4]~feeder_combout\);

-- Location: FF_X16_Y5_N17
\tx_frame[46][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][4]~q\);

-- Location: LCCOMB_X16_Y5_N30
\rx_frame[47][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[47][4]~feeder_combout\);

-- Location: FF_X16_Y5_N31
\rx_frame[47][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[47][4]~feeder_combout\,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][4]~q\);

-- Location: FF_X16_Y5_N27
\tx_frame[47][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][4]~q\);

-- Location: LCCOMB_X18_Y8_N28
\rx_frame[44][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[44][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[44][4]~feeder_combout\);

-- Location: FF_X18_Y8_N29
\rx_frame[44][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[44][4]~feeder_combout\,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][4]~q\);

-- Location: FF_X17_Y6_N7
\tx_frame[44][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][4]~q\);

-- Location: FF_X21_Y8_N17
\rx_frame[45][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][4]~q\);

-- Location: LCCOMB_X21_Y6_N2
\tx_frame[45][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][4]~feeder_combout\ = \rx_frame[45][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][4]~q\,
	combout => \tx_frame[45][4]~feeder_combout\);

-- Location: FF_X21_Y6_N3
\tx_frame[45][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][4]~q\);

-- Location: LCCOMB_X17_Y6_N6
\out_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~155_combout\ = (tx_cnt(0) & ((tx_cnt(1)) # ((\tx_frame[45][4]~q\)))) # (!tx_cnt(0) & (!tx_cnt(1) & (\tx_frame[44][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[44][4]~q\,
	datad => \tx_frame[45][4]~q\,
	combout => \out_data~155_combout\);

-- Location: LCCOMB_X16_Y5_N26
\out_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~156_combout\ = (tx_cnt(1) & ((\out_data~155_combout\ & ((\tx_frame[47][4]~q\))) # (!\out_data~155_combout\ & (\tx_frame[46][4]~q\)))) # (!tx_cnt(1) & (((\out_data~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[46][4]~q\,
	datac => \tx_frame[47][4]~q\,
	datad => \out_data~155_combout\,
	combout => \out_data~156_combout\);

-- Location: FF_X19_Y8_N3
\rx_frame[48][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][4]~q\);

-- Location: FF_X16_Y8_N17
\tx_frame[48][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][4]~q\);

-- Location: LCCOMB_X21_Y4_N6
\rx_frame[37][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[37][4]~feeder_combout\);

-- Location: FF_X21_Y4_N7
\rx_frame[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[37][4]~feeder_combout\,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][4]~q\);

-- Location: LCCOMB_X21_Y4_N26
\tx_frame[37][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][4]~feeder_combout\ = \rx_frame[37][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][4]~q\,
	combout => \tx_frame[37][4]~feeder_combout\);

-- Location: FF_X21_Y4_N27
\tx_frame[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][4]~q\);

-- Location: FF_X22_Y4_N15
\rx_frame[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][4]~q\);

-- Location: FF_X22_Y4_N7
\tx_frame[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][4]~q\);

-- Location: LCCOMB_X22_Y4_N6
\out_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~150_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & (\tx_frame[37][4]~q\)) # (!tx_cnt(0) & ((\tx_frame[36][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[37][4]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[36][4]~q\,
	datad => tx_cnt(0),
	combout => \out_data~150_combout\);

-- Location: FF_X19_Y4_N15
\rx_frame[39][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][4]~q\);

-- Location: FF_X22_Y4_N29
\tx_frame[39][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][4]~q\);

-- Location: LCCOMB_X22_Y5_N10
\rx_frame[38][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[38][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[38][4]~feeder_combout\);

-- Location: FF_X22_Y5_N11
\rx_frame[38][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[38][4]~feeder_combout\,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][4]~q\);

-- Location: LCCOMB_X22_Y5_N28
\tx_frame[38][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][4]~feeder_combout\ = \rx_frame[38][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][4]~q\,
	combout => \tx_frame[38][4]~feeder_combout\);

-- Location: FF_X22_Y5_N29
\tx_frame[38][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][4]~q\);

-- Location: LCCOMB_X22_Y4_N28
\out_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~151_combout\ = (\out_data~150_combout\ & (((\tx_frame[39][4]~q\)) # (!tx_cnt(1)))) # (!\out_data~150_combout\ & (tx_cnt(1) & ((\tx_frame[38][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~150_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[39][4]~q\,
	datad => \tx_frame[38][4]~q\,
	combout => \out_data~151_combout\);

-- Location: LCCOMB_X18_Y5_N30
\rx_frame[35][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[35][4]~feeder_combout\);

-- Location: FF_X18_Y5_N31
\rx_frame[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][4]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][4]~q\);

-- Location: FF_X19_Y4_N3
\tx_frame[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][4]~q\);

-- Location: LCCOMB_X19_Y4_N2
\out_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~152_combout\ = (\out_data~19_combout\ & ((\out_data~151_combout\) # ((!\out_data~18_combout\)))) # (!\out_data~19_combout\ & (((\tx_frame[35][4]~q\ & \out_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~151_combout\,
	datab => \out_data~19_combout\,
	datac => \tx_frame[35][4]~q\,
	datad => \out_data~18_combout\,
	combout => \out_data~152_combout\);

-- Location: LCCOMB_X16_Y2_N24
\rx_frame[29][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[29][4]~feeder_combout\);

-- Location: FF_X16_Y2_N25
\rx_frame[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[29][4]~feeder_combout\,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][4]~q\);

-- Location: FF_X18_Y8_N19
\tx_frame[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][4]~q\);

-- Location: FF_X14_Y4_N25
\rx_frame[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][4]~q\);

-- Location: LCCOMB_X17_Y8_N18
\tx_frame[32][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][4]~feeder_combout\ = \rx_frame[28][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[28][4]~q\,
	combout => \tx_frame[32][4]~feeder_combout\);

-- Location: FF_X17_Y8_N19
\tx_frame[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][4]~q\);

-- Location: LCCOMB_X18_Y8_N18
\out_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~153_combout\ = (\out_data~152_combout\ & (((\tx_frame[33][4]~q\)) # (!\out_data~15_combout\))) # (!\out_data~152_combout\ & (\out_data~15_combout\ & ((\tx_frame[32][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~152_combout\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][4]~q\,
	datad => \tx_frame[32][4]~q\,
	combout => \out_data~153_combout\);

-- Location: FF_X19_Y6_N31
\rx_frame[40][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][4]~q\);

-- Location: FF_X21_Y6_N11
\tx_frame[40][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][4]~q\);

-- Location: FF_X17_Y5_N19
\rx_frame[42][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][4]~q\);

-- Location: LCCOMB_X21_Y5_N0
\tx_frame[42][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][4]~feeder_combout\ = \rx_frame[42][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][4]~q\,
	combout => \tx_frame[42][4]~feeder_combout\);

-- Location: FF_X21_Y5_N1
\tx_frame[42][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][4]~q\);

-- Location: LCCOMB_X21_Y6_N10
\out_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~148_combout\ = (tx_cnt(1) & ((tx_cnt(0)) # ((\tx_frame[42][4]~q\)))) # (!tx_cnt(1) & (!tx_cnt(0) & (\tx_frame[40][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[40][4]~q\,
	datad => \tx_frame[42][4]~q\,
	combout => \out_data~148_combout\);

-- Location: FF_X21_Y6_N27
\rx_frame[43][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][4]~q\);

-- Location: FF_X21_Y6_N25
\tx_frame[43][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][4]~q\);

-- Location: FF_X13_Y8_N17
\rx_frame[41][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][4]~q\);

-- Location: LCCOMB_X21_Y6_N18
\tx_frame[41][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][4]~feeder_combout\ = \rx_frame[41][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[41][4]~q\,
	combout => \tx_frame[41][4]~feeder_combout\);

-- Location: FF_X21_Y6_N19
\tx_frame[41][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][4]~q\);

-- Location: LCCOMB_X21_Y6_N24
\out_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~149_combout\ = (\out_data~148_combout\ & (((\tx_frame[43][4]~q\)) # (!tx_cnt(0)))) # (!\out_data~148_combout\ & (tx_cnt(0) & ((\tx_frame[41][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~148_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[43][4]~q\,
	datad => \tx_frame[41][4]~q\,
	combout => \out_data~149_combout\);

-- Location: LCCOMB_X17_Y8_N20
\out_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~154_combout\ = (\out_data~11_combout\ & (((\out_data~14_combout\)))) # (!\out_data~11_combout\ & ((\out_data~14_combout\ & ((\out_data~149_combout\))) # (!\out_data~14_combout\ & (\out_data~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~153_combout\,
	datac => \out_data~14_combout\,
	datad => \out_data~149_combout\,
	combout => \out_data~154_combout\);

-- Location: LCCOMB_X16_Y8_N16
\out_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~157_combout\ = (\out_data~11_combout\ & ((\out_data~154_combout\ & (\out_data~156_combout\)) # (!\out_data~154_combout\ & ((\tx_frame[48][4]~q\))))) # (!\out_data~11_combout\ & (((\out_data~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~156_combout\,
	datac => \tx_frame[48][4]~q\,
	datad => \out_data~154_combout\,
	combout => \out_data~157_combout\);

-- Location: LCCOMB_X19_Y7_N14
\rx_frame[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[11][4]~feeder_combout\);

-- Location: FF_X19_Y7_N15
\rx_frame[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][4]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][4]~q\);

-- Location: FF_X22_Y7_N3
\tx_frame[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[11][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][4]~q\);

-- Location: LCCOMB_X22_Y3_N2
\tx_frame[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[7][4]~feeder_combout\ = \rx_frame[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[1][4]~q\,
	combout => \tx_frame[7][4]~feeder_combout\);

-- Location: FF_X22_Y3_N3
\tx_frame[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[7][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][4]~q\);

-- Location: LCCOMB_X22_Y7_N2
\out_data~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~165_combout\ = (tx_cnt(3) & (tx_cnt(1))) # (!tx_cnt(3) & ((tx_cnt(1) & ((\tx_frame[7][4]~q\))) # (!tx_cnt(1) & (\tx_frame[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(1),
	datac => \tx_frame[5][4]~q\,
	datad => \tx_frame[7][4]~q\,
	combout => \out_data~165_combout\);

-- Location: LCCOMB_X22_Y7_N8
\rx_frame[15][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[15][4]~feeder_combout\);

-- Location: FF_X22_Y7_N9
\rx_frame[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[15][4]~feeder_combout\,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][4]~q\);

-- Location: FF_X22_Y7_N11
\tx_frame[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][4]~q\);

-- Location: FF_X19_Y8_N5
\rx_frame[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][4]~q\);

-- Location: LCCOMB_X22_Y8_N8
\tx_frame[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[13][4]~feeder_combout\ = \rx_frame[13][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[13][4]~q\,
	combout => \tx_frame[13][4]~feeder_combout\);

-- Location: FF_X22_Y8_N9
\tx_frame[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[13][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][4]~q\);

-- Location: LCCOMB_X22_Y7_N10
\out_data~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~166_combout\ = (tx_cnt(3) & ((\out_data~165_combout\ & (\tx_frame[15][4]~q\)) # (!\out_data~165_combout\ & ((\tx_frame[13][4]~q\))))) # (!tx_cnt(3) & (\out_data~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \out_data~165_combout\,
	datac => \tx_frame[15][4]~q\,
	datad => \tx_frame[13][4]~q\,
	combout => \out_data~166_combout\);

-- Location: LCCOMB_X17_Y9_N2
\rx_frame[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[12][4]~feeder_combout\);

-- Location: FF_X17_Y9_N3
\rx_frame[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[12][4]~feeder_combout\,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][4]~q\);

-- Location: LCCOMB_X21_Y7_N2
\tx_frame[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[12][4]~feeder_combout\ = \rx_frame[12][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[12][4]~q\,
	combout => \tx_frame[12][4]~feeder_combout\);

-- Location: FF_X21_Y7_N3
\tx_frame[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[12][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][4]~q\);

-- Location: FF_X21_Y7_N5
\rx_frame[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][4]~q\);

-- Location: FF_X21_Y7_N13
\tx_frame[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][4]~q\);

-- Location: LCCOMB_X18_Y5_N0
\rx_frame[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[10][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[10][4]~feeder_combout\);

-- Location: FF_X18_Y5_N1
\rx_frame[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[10][4]~feeder_combout\,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][4]~q\);

-- Location: FF_X21_Y7_N7
\tx_frame[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[10][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][4]~q\);

-- Location: LCCOMB_X21_Y7_N24
\tx_frame[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][4]~feeder_combout\ = \rx_frame[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][4]~q\,
	combout => \tx_frame[6][4]~feeder_combout\);

-- Location: FF_X21_Y7_N25
\tx_frame[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][4]~q\);

-- Location: LCCOMB_X21_Y7_N6
\out_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~158_combout\ = (tx_cnt(3) & (tx_cnt(1))) # (!tx_cnt(3) & ((tx_cnt(1) & ((\tx_frame[6][4]~q\))) # (!tx_cnt(1) & (\tx_frame[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(1),
	datac => \tx_frame[4][4]~q\,
	datad => \tx_frame[6][4]~q\,
	combout => \out_data~158_combout\);

-- Location: LCCOMB_X21_Y7_N12
\out_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~159_combout\ = (tx_cnt(3) & ((\out_data~158_combout\ & ((\tx_frame[14][4]~q\))) # (!\out_data~158_combout\ & (\tx_frame[12][4]~q\)))) # (!tx_cnt(3) & (((\out_data~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[12][4]~q\,
	datac => \tx_frame[14][4]~q\,
	datad => \out_data~158_combout\,
	combout => \out_data~159_combout\);

-- Location: LCCOMB_X17_Y7_N30
\rx_frame[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[7][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[7][4]~feeder_combout\);

-- Location: FF_X17_Y7_N31
\rx_frame[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[7][4]~feeder_combout\,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][4]~q\);

-- Location: FF_X17_Y7_N21
\tx_frame[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][4]~q\);

-- Location: LCCOMB_X17_Y6_N0
\tx_frame[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][4]~feeder_combout\ = \rx_frame[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][4]~q\,
	combout => \tx_frame[9][4]~feeder_combout\);

-- Location: FF_X17_Y6_N1
\tx_frame[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][4]~q\);

-- Location: LCCOMB_X17_Y7_N20
\out_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~160_combout\ = (tx_cnt(3) & ((tx_cnt(1)) # ((\tx_frame[9][4]~q\)))) # (!tx_cnt(3) & (!tx_cnt(1) & (\tx_frame[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(1),
	datac => \tx_frame[1][4]~q\,
	datad => \tx_frame[9][4]~q\,
	combout => \out_data~160_combout\);

-- Location: FF_X16_Y7_N15
\tx_frame[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][4]~q\);

-- Location: FF_X23_Y7_N23
\rx_frame[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][4]~q\);

-- Location: LCCOMB_X16_Y7_N10
\tx_frame[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[3][4]~feeder_combout\ = \rx_frame[9][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[9][4]~q\,
	combout => \tx_frame[3][4]~feeder_combout\);

-- Location: FF_X16_Y7_N11
\tx_frame[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[3][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][4]~q\);

-- Location: LCCOMB_X16_Y7_N14
\out_data~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~161_combout\ = (\out_data~160_combout\ & (((\tx_frame[11][4]~q\)) # (!tx_cnt(1)))) # (!\out_data~160_combout\ & (tx_cnt(1) & ((\tx_frame[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~160_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[11][4]~q\,
	datad => \tx_frame[3][4]~q\,
	combout => \out_data~161_combout\);

-- Location: LCCOMB_X17_Y8_N28
\rx_frame[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[8][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[8][4]~feeder_combout\);

-- Location: FF_X17_Y8_N29
\rx_frame[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[8][4]~feeder_combout\,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][4]~q\);

-- Location: LCCOMB_X13_Y7_N28
\tx_frame[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[2][4]~feeder_combout\ = \rx_frame[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[8][4]~q\,
	combout => \tx_frame[2][4]~feeder_combout\);

-- Location: FF_X13_Y7_N29
\tx_frame[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[2][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][4]~q\);

-- Location: FF_X13_Y7_N3
\tx_frame[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][4]~q\);

-- Location: FF_X14_Y7_N13
\rx_frame[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][4]~q\);

-- Location: FF_X14_Y7_N3
\tx_frame[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][4]~q\);

-- Location: LCCOMB_X14_Y6_N0
\tx_frame[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[8][4]~feeder_combout\ = \rx_frame[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[2][4]~q\,
	combout => \tx_frame[8][4]~feeder_combout\);

-- Location: FF_X14_Y6_N1
\tx_frame[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[8][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][4]~q\);

-- Location: LCCOMB_X14_Y7_N2
\out_data~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~162_combout\ = (tx_cnt(1) & (tx_cnt(3))) # (!tx_cnt(1) & ((tx_cnt(3) & ((\tx_frame[8][4]~q\))) # (!tx_cnt(3) & (\tx_frame[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[0][4]~q\,
	datad => \tx_frame[8][4]~q\,
	combout => \out_data~162_combout\);

-- Location: LCCOMB_X13_Y7_N2
\out_data~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~163_combout\ = (tx_cnt(1) & ((\out_data~162_combout\ & ((\tx_frame[10][4]~q\))) # (!\out_data~162_combout\ & (\tx_frame[2][4]~q\)))) # (!tx_cnt(1) & (((\out_data~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[2][4]~q\,
	datac => \tx_frame[10][4]~q\,
	datad => \out_data~162_combout\,
	combout => \out_data~163_combout\);

-- Location: LCCOMB_X13_Y7_N4
\out_data~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~164_combout\ = (tx_cnt(0) & ((\out_data~161_combout\) # ((tx_cnt(2))))) # (!tx_cnt(0) & (((!tx_cnt(2) & \out_data~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~161_combout\,
	datac => tx_cnt(2),
	datad => \out_data~163_combout\,
	combout => \out_data~164_combout\);

-- Location: LCCOMB_X12_Y7_N0
\out_data~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~167_combout\ = (tx_cnt(2) & ((\out_data~164_combout\ & (\out_data~166_combout\)) # (!\out_data~164_combout\ & ((\out_data~159_combout\))))) # (!tx_cnt(2) & (((\out_data~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~166_combout\,
	datab => \out_data~159_combout\,
	datac => tx_cnt(2),
	datad => \out_data~164_combout\,
	combout => \out_data~167_combout\);

-- Location: LCCOMB_X12_Y7_N30
\out_data~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~168_combout\ = (tx_cnt(5) & ((\out_data~10_combout\) # ((\out_data~157_combout\)))) # (!tx_cnt(5) & (!\out_data~10_combout\ & ((\out_data~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(5),
	datab => \out_data~10_combout\,
	datac => \out_data~157_combout\,
	datad => \out_data~167_combout\,
	combout => \out_data~168_combout\);

-- Location: LCCOMB_X13_Y6_N20
\rx_frame[49][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[49][4]~feeder_combout\);

-- Location: FF_X13_Y6_N21
\rx_frame[49][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[49][4]~feeder_combout\,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][4]~q\);

-- Location: FF_X12_Y6_N31
\tx_frame[49][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][4]~q\);

-- Location: LCCOMB_X14_Y2_N26
\rx_frame[20][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[20][4]~feeder_combout\);

-- Location: FF_X14_Y2_N27
\rx_frame[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[20][4]~feeder_combout\,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][4]~q\);

-- Location: LCCOMB_X10_Y4_N14
\tx_frame[20][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][4]~feeder_combout\ = \rx_frame[20][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[20][4]~q\,
	combout => \tx_frame[20][4]~feeder_combout\);

-- Location: FF_X10_Y4_N15
\tx_frame[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][4]~q\);

-- Location: FF_X13_Y5_N15
\rx_frame[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][4]~q\);

-- Location: LCCOMB_X10_Y4_N24
\tx_frame[17][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[17][4]~feeder_combout\ = \rx_frame[17][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[17][4]~q\,
	combout => \tx_frame[17][4]~feeder_combout\);

-- Location: FF_X10_Y4_N25
\tx_frame[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[17][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][4]~q\);

-- Location: FF_X13_Y4_N3
\rx_frame[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][4]~q\);

-- Location: FF_X11_Y4_N25
\tx_frame[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][4]~q\);

-- Location: LCCOMB_X11_Y4_N24
\out_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~142_combout\ = (tx_cnt(0) & ((\tx_frame[17][4]~q\) # ((tx_cnt(2))))) # (!tx_cnt(0) & (((\tx_frame[16][4]~q\ & !tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[17][4]~q\,
	datac => \tx_frame[16][4]~q\,
	datad => tx_cnt(2),
	combout => \out_data~142_combout\);

-- Location: FF_X13_Y5_N21
\rx_frame[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][4]~q\);

-- Location: FF_X11_Y4_N23
\tx_frame[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[21][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][4]~q\);

-- Location: LCCOMB_X11_Y4_N22
\out_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~143_combout\ = (\out_data~142_combout\ & (((\tx_frame[21][4]~q\) # (!tx_cnt(2))))) # (!\out_data~142_combout\ & (\tx_frame[20][4]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[20][4]~q\,
	datab => \out_data~142_combout\,
	datac => \tx_frame[21][4]~q\,
	datad => tx_cnt(2),
	combout => \out_data~143_combout\);

-- Location: LCCOMB_X14_Y3_N30
\tx_frame[28][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[28][4]~feeder_combout\ = \rx_frame[32][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[32][4]~q\,
	combout => \tx_frame[28][4]~feeder_combout\);

-- Location: FF_X14_Y3_N31
\tx_frame[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[28][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][4]~q\);

-- Location: FF_X14_Y4_N31
\rx_frame[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][4]~q\);

-- Location: FF_X14_Y3_N17
\tx_frame[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[24][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][4]~q\);

-- Location: LCCOMB_X14_Y3_N16
\out_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~140_combout\ = (tx_cnt(0) & (((tx_cnt(2))))) # (!tx_cnt(0) & ((tx_cnt(2) & (\tx_frame[28][4]~q\)) # (!tx_cnt(2) & ((\tx_frame[24][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[28][4]~q\,
	datab => tx_cnt(0),
	datac => \tx_frame[24][4]~q\,
	datad => tx_cnt(2),
	combout => \out_data~140_combout\);

-- Location: FF_X14_Y3_N25
\tx_frame[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][4]~q\);

-- Location: FF_X12_Y3_N23
\rx_frame[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][4]~q\);

-- Location: FF_X13_Y3_N19
\tx_frame[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[25][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][4]~q\);

-- Location: LCCOMB_X14_Y3_N24
\out_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~141_combout\ = (\out_data~140_combout\ & (((\tx_frame[29][4]~q\)) # (!tx_cnt(0)))) # (!\out_data~140_combout\ & (tx_cnt(0) & ((\tx_frame[25][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~140_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[29][4]~q\,
	datad => \tx_frame[25][4]~q\,
	combout => \out_data~141_combout\);

-- Location: LCCOMB_X11_Y4_N30
\out_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~144_combout\ = (tx_cnt(3) & (((tx_cnt(1)) # (\out_data~141_combout\)))) # (!tx_cnt(3) & (\out_data~143_combout\ & (!tx_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~143_combout\,
	datab => tx_cnt(3),
	datac => tx_cnt(1),
	datad => \out_data~141_combout\,
	combout => \out_data~144_combout\);

-- Location: LCCOMB_X12_Y4_N16
\rx_frame[18][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[18][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[18][4]~feeder_combout\);

-- Location: FF_X12_Y4_N17
\rx_frame[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[18][4]~feeder_combout\,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][4]~q\);

-- Location: FF_X11_Y2_N19
\tx_frame[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][4]~q\);

-- Location: FF_X12_Y3_N29
\rx_frame[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][4]~q\);

-- Location: LCCOMB_X12_Y2_N2
\tx_frame[19][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[19][4]~feeder_combout\ = \rx_frame[19][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[19][4]~q\,
	combout => \tx_frame[19][4]~feeder_combout\);

-- Location: FF_X12_Y2_N3
\tx_frame[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[19][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][4]~q\);

-- Location: LCCOMB_X11_Y2_N18
\out_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~138_combout\ = (tx_cnt(2) & (tx_cnt(0))) # (!tx_cnt(2) & ((tx_cnt(0) & ((\tx_frame[19][4]~q\))) # (!tx_cnt(0) & (\tx_frame[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(0),
	datac => \tx_frame[18][4]~q\,
	datad => \tx_frame[19][4]~q\,
	combout => \out_data~138_combout\);

-- Location: LCCOMB_X11_Y3_N30
\rx_frame[23][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[23][4]~feeder_combout\);

-- Location: FF_X11_Y3_N31
\rx_frame[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[23][4]~feeder_combout\,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][4]~q\);

-- Location: FF_X11_Y2_N1
\tx_frame[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[23][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][4]~q\);

-- Location: LCCOMB_X16_Y2_N10
\rx_frame[22][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[22][4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \rx_frame[22][4]~feeder_combout\);

-- Location: FF_X16_Y2_N11
\rx_frame[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[22][4]~feeder_combout\,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][4]~q\);

-- Location: LCCOMB_X12_Y2_N4
\tx_frame[22][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][4]~feeder_combout\ = \rx_frame[22][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][4]~q\,
	combout => \tx_frame[22][4]~feeder_combout\);

-- Location: FF_X12_Y2_N5
\tx_frame[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][4]~q\);

-- Location: LCCOMB_X11_Y2_N0
\out_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~139_combout\ = (tx_cnt(2) & ((\out_data~138_combout\ & (\tx_frame[23][4]~q\)) # (!\out_data~138_combout\ & ((\tx_frame[22][4]~q\))))) # (!tx_cnt(2) & (\out_data~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~138_combout\,
	datac => \tx_frame[23][4]~q\,
	datad => \tx_frame[22][4]~q\,
	combout => \out_data~139_combout\);

-- Location: FF_X10_Y5_N31
\tx_frame[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[30][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][4]~q\);

-- Location: FF_X10_Y4_N5
\rx_frame[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][4]~q\);

-- Location: FF_X10_Y4_N31
\tx_frame[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[26][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][4]~q\);

-- Location: LCCOMB_X10_Y5_N30
\out_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~145_combout\ = (tx_cnt(0) & (tx_cnt(2))) # (!tx_cnt(0) & ((tx_cnt(2) & ((\tx_frame[30][4]~q\))) # (!tx_cnt(2) & (\tx_frame[26][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(2),
	datac => \tx_frame[26][4]~q\,
	datad => \tx_frame[30][4]~q\,
	combout => \out_data~145_combout\);

-- Location: FF_X12_Y7_N5
\rx_frame[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][4]~q\);

-- Location: FF_X12_Y7_N19
\tx_frame[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][4]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][4]~q\);

-- Location: LCCOMB_X12_Y7_N28
\tx_frame[27][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][4]~feeder_combout\ = \rx_frame[31][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][4]~q\,
	combout => \tx_frame[27][4]~feeder_combout\);

-- Location: FF_X12_Y7_N29
\tx_frame[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][4]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][4]~q\);

-- Location: LCCOMB_X12_Y7_N18
\out_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~146_combout\ = (tx_cnt(0) & ((\out_data~145_combout\ & (\tx_frame[31][4]~q\)) # (!\out_data~145_combout\ & ((\tx_frame[27][4]~q\))))) # (!tx_cnt(0) & (\out_data~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~145_combout\,
	datac => \tx_frame[31][4]~q\,
	datad => \tx_frame[27][4]~q\,
	combout => \out_data~146_combout\);

-- Location: LCCOMB_X11_Y4_N12
\out_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~147_combout\ = (\out_data~144_combout\ & (((\out_data~146_combout\) # (!tx_cnt(1))))) # (!\out_data~144_combout\ & (\out_data~139_combout\ & (tx_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~144_combout\,
	datab => \out_data~139_combout\,
	datac => tx_cnt(1),
	datad => \out_data~146_combout\,
	combout => \out_data~147_combout\);

-- Location: LCCOMB_X12_Y6_N30
\out_data~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~169_combout\ = (\out_data~168_combout\ & (((\tx_frame[49][4]~q\)) # (!\out_data~10_combout\))) # (!\out_data~168_combout\ & (\out_data~10_combout\ & ((\out_data~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~168_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][4]~q\,
	datad => \out_data~147_combout\,
	combout => \out_data~169_combout\);

-- Location: LCCOMB_X19_Y5_N8
\out_data~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~170_combout\ = (\state.SEND~q\ & \out_data~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~169_combout\,
	combout => \out_data~170_combout\);

-- Location: FF_X21_Y8_N27
\rx_frame[45][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][5]~q\);

-- Location: LCCOMB_X13_Y6_N10
\tx_frame[45][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][5]~feeder_combout\ = \rx_frame[45][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][5]~q\,
	combout => \tx_frame[45][5]~feeder_combout\);

-- Location: FF_X13_Y6_N11
\tx_frame[45][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][5]~q\);

-- Location: FF_X16_Y8_N21
\rx_frame[46][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][5]~q\);

-- Location: LCCOMB_X12_Y6_N20
\tx_frame[46][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][5]~feeder_combout\ = \rx_frame[46][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][5]~q\,
	combout => \tx_frame[46][5]~feeder_combout\);

-- Location: FF_X12_Y6_N21
\tx_frame[46][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][5]~q\);

-- Location: FF_X13_Y8_N25
\rx_frame[44][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][5]~q\);

-- Location: FF_X13_Y6_N19
\tx_frame[44][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][5]~q\);

-- Location: LCCOMB_X13_Y6_N18
\out_data~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~178_combout\ = (tx_cnt(1) & ((\tx_frame[46][5]~q\) # ((tx_cnt(0))))) # (!tx_cnt(1) & (((\tx_frame[44][5]~q\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[46][5]~q\,
	datac => \tx_frame[44][5]~q\,
	datad => tx_cnt(0),
	combout => \out_data~178_combout\);

-- Location: LCCOMB_X16_Y5_N10
\rx_frame[47][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[47][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[47][5]~feeder_combout\);

-- Location: FF_X16_Y5_N11
\rx_frame[47][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[47][5]~feeder_combout\,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][5]~q\);

-- Location: FF_X13_Y6_N23
\tx_frame[47][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][5]~q\);

-- Location: LCCOMB_X13_Y6_N22
\out_data~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~179_combout\ = (\out_data~178_combout\ & (((\tx_frame[47][5]~q\) # (!tx_cnt(0))))) # (!\out_data~178_combout\ & (\tx_frame[45][5]~q\ & ((tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[45][5]~q\,
	datab => \out_data~178_combout\,
	datac => \tx_frame[47][5]~q\,
	datad => tx_cnt(0),
	combout => \out_data~179_combout\);

-- Location: LCCOMB_X19_Y8_N10
\rx_frame[48][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[48][5]~feeder_combout\);

-- Location: FF_X19_Y8_N11
\rx_frame[48][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[48][5]~feeder_combout\,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][5]~q\);

-- Location: FF_X18_Y8_N21
\tx_frame[48][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][5]~q\);

-- Location: FF_X21_Y4_N3
\rx_frame[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][5]~q\);

-- Location: LCCOMB_X21_Y4_N28
\tx_frame[37][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][5]~feeder_combout\ = \rx_frame[37][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][5]~q\,
	combout => \tx_frame[37][5]~feeder_combout\);

-- Location: FF_X21_Y4_N29
\tx_frame[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][5]~q\);

-- Location: LCCOMB_X19_Y4_N18
\rx_frame[39][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[39][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[39][5]~feeder_combout\);

-- Location: FF_X19_Y4_N19
\rx_frame[39][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[39][5]~feeder_combout\,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][5]~q\);

-- Location: FF_X22_Y4_N17
\tx_frame[39][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][5]~q\);

-- Location: LCCOMB_X22_Y5_N20
\rx_frame[38][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[38][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[38][5]~feeder_combout\);

-- Location: FF_X22_Y5_N21
\rx_frame[38][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[38][5]~feeder_combout\,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][5]~q\);

-- Location: LCCOMB_X22_Y5_N14
\tx_frame[38][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][5]~feeder_combout\ = \rx_frame[38][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[38][5]~q\,
	combout => \tx_frame[38][5]~feeder_combout\);

-- Location: FF_X22_Y5_N15
\tx_frame[38][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][5]~q\);

-- Location: LCCOMB_X22_Y4_N8
\rx_frame[36][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[36][5]~feeder_combout\);

-- Location: FF_X22_Y4_N9
\rx_frame[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[36][5]~feeder_combout\,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][5]~q\);

-- Location: FF_X22_Y4_N13
\tx_frame[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][5]~q\);

-- Location: LCCOMB_X22_Y4_N12
\out_data~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~173_combout\ = (tx_cnt(1) & ((\tx_frame[38][5]~q\) # ((tx_cnt(0))))) # (!tx_cnt(1) & (((\tx_frame[36][5]~q\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[38][5]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[36][5]~q\,
	datad => tx_cnt(0),
	combout => \out_data~173_combout\);

-- Location: LCCOMB_X22_Y4_N16
\out_data~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~174_combout\ = (tx_cnt(0) & ((\out_data~173_combout\ & ((\tx_frame[39][5]~q\))) # (!\out_data~173_combout\ & (\tx_frame[37][5]~q\)))) # (!tx_cnt(0) & (((\out_data~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[37][5]~q\,
	datac => \tx_frame[39][5]~q\,
	datad => \out_data~173_combout\,
	combout => \out_data~174_combout\);

-- Location: LCCOMB_X18_Y5_N6
\rx_frame[35][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[35][5]~feeder_combout\);

-- Location: FF_X18_Y5_N7
\rx_frame[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][5]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][5]~q\);

-- Location: FF_X19_Y4_N23
\tx_frame[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][5]~q\);

-- Location: LCCOMB_X19_Y4_N22
\out_data~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~175_combout\ = (\out_data~19_combout\ & ((\out_data~174_combout\) # ((!\out_data~18_combout\)))) # (!\out_data~19_combout\ & (((\tx_frame[35][5]~q\ & \out_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~174_combout\,
	datab => \out_data~19_combout\,
	datac => \tx_frame[35][5]~q\,
	datad => \out_data~18_combout\,
	combout => \out_data~175_combout\);

-- Location: LCCOMB_X14_Y2_N12
\rx_frame[29][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[29][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[29][5]~feeder_combout\);

-- Location: FF_X14_Y2_N13
\rx_frame[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[29][5]~feeder_combout\,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][5]~q\);

-- Location: FF_X19_Y4_N29
\tx_frame[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][5]~q\);

-- Location: LCCOMB_X14_Y4_N10
\rx_frame[28][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[28][5]~feeder_combout\);

-- Location: FF_X14_Y4_N11
\rx_frame[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[28][5]~feeder_combout\,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][5]~q\);

-- Location: LCCOMB_X21_Y4_N22
\tx_frame[32][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][5]~feeder_combout\ = \rx_frame[28][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][5]~q\,
	combout => \tx_frame[32][5]~feeder_combout\);

-- Location: FF_X21_Y4_N23
\tx_frame[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][5]~q\);

-- Location: LCCOMB_X19_Y4_N28
\out_data~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~176_combout\ = (\out_data~175_combout\ & (((\tx_frame[33][5]~q\)) # (!\out_data~15_combout\))) # (!\out_data~175_combout\ & (\out_data~15_combout\ & ((\tx_frame[32][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~175_combout\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][5]~q\,
	datad => \tx_frame[32][5]~q\,
	combout => \out_data~176_combout\);

-- Location: LCCOMB_X18_Y8_N20
\out_data~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~177_combout\ = (\out_data~11_combout\ & ((\out_data~14_combout\) # ((\tx_frame[48][5]~q\)))) # (!\out_data~11_combout\ & (!\out_data~14_combout\ & ((\out_data~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~14_combout\,
	datac => \tx_frame[48][5]~q\,
	datad => \out_data~176_combout\,
	combout => \out_data~177_combout\);

-- Location: LCCOMB_X19_Y6_N4
\rx_frame[40][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[40][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[40][5]~feeder_combout\);

-- Location: FF_X19_Y6_N5
\rx_frame[40][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[40][5]~feeder_combout\,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][5]~q\);

-- Location: FF_X17_Y6_N27
\tx_frame[40][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][5]~q\);

-- Location: FF_X13_Y8_N11
\rx_frame[41][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][5]~q\);

-- Location: LCCOMB_X17_Y6_N12
\tx_frame[41][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][5]~feeder_combout\ = \rx_frame[41][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][5]~q\,
	combout => \tx_frame[41][5]~feeder_combout\);

-- Location: FF_X17_Y6_N13
\tx_frame[41][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][5]~q\);

-- Location: LCCOMB_X17_Y6_N26
\out_data~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~171_combout\ = (tx_cnt(0) & ((tx_cnt(1)) # ((\tx_frame[41][5]~q\)))) # (!tx_cnt(0) & (!tx_cnt(1) & (\tx_frame[40][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[40][5]~q\,
	datad => \tx_frame[41][5]~q\,
	combout => \out_data~171_combout\);

-- Location: LCCOMB_X21_Y6_N4
\rx_frame[43][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[43][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[43][5]~feeder_combout\);

-- Location: FF_X21_Y6_N5
\rx_frame[43][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[43][5]~feeder_combout\,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][5]~q\);

-- Location: FF_X17_Y6_N25
\tx_frame[43][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][5]~q\);

-- Location: LCCOMB_X19_Y5_N26
\rx_frame[42][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[42][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[42][5]~feeder_combout\);

-- Location: FF_X19_Y5_N27
\rx_frame[42][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[42][5]~feeder_combout\,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][5]~q\);

-- Location: LCCOMB_X17_Y6_N10
\tx_frame[42][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][5]~feeder_combout\ = \rx_frame[42][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][5]~q\,
	combout => \tx_frame[42][5]~feeder_combout\);

-- Location: FF_X17_Y6_N11
\tx_frame[42][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][5]~q\);

-- Location: LCCOMB_X17_Y6_N24
\out_data~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~172_combout\ = (\out_data~171_combout\ & (((\tx_frame[43][5]~q\)) # (!tx_cnt(1)))) # (!\out_data~171_combout\ & (tx_cnt(1) & ((\tx_frame[42][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~171_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[43][5]~q\,
	datad => \tx_frame[42][5]~q\,
	combout => \out_data~172_combout\);

-- Location: LCCOMB_X13_Y6_N24
\out_data~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~180_combout\ = (\out_data~177_combout\ & ((\out_data~179_combout\) # ((!\out_data~14_combout\)))) # (!\out_data~177_combout\ & (((\out_data~172_combout\ & \out_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~179_combout\,
	datab => \out_data~177_combout\,
	datac => \out_data~172_combout\,
	datad => \out_data~14_combout\,
	combout => \out_data~180_combout\);

-- Location: LCCOMB_X13_Y6_N4
\rx_frame[49][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[49][5]~feeder_combout\);

-- Location: FF_X13_Y6_N5
\rx_frame[49][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[49][5]~feeder_combout\,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][5]~q\);

-- Location: FF_X13_Y6_N27
\tx_frame[49][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][5]~q\);

-- Location: LCCOMB_X18_Y5_N16
\rx_frame[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[10][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[10][5]~feeder_combout\);

-- Location: FF_X18_Y5_N17
\rx_frame[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[10][5]~feeder_combout\,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][5]~q\);

-- Location: FF_X18_Y9_N5
\tx_frame[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[10][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][5]~q\);

-- Location: LCCOMB_X17_Y9_N20
\rx_frame[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[12][5]~feeder_combout\);

-- Location: FF_X17_Y9_N21
\rx_frame[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[12][5]~feeder_combout\,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][5]~q\);

-- Location: LCCOMB_X17_Y9_N18
\tx_frame[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[12][5]~feeder_combout\ = \rx_frame[12][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[12][5]~q\,
	combout => \tx_frame[12][5]~feeder_combout\);

-- Location: FF_X17_Y9_N19
\tx_frame[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[12][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][5]~q\);

-- Location: LCCOMB_X18_Y9_N4
\out_data~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~193_combout\ = (tx_cnt(3) & ((tx_cnt(1)) # ((\tx_frame[12][5]~q\)))) # (!tx_cnt(3) & (!tx_cnt(1) & (\tx_frame[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(1),
	datac => \tx_frame[4][5]~q\,
	datad => \tx_frame[12][5]~q\,
	combout => \out_data~193_combout\);

-- Location: LCCOMB_X21_Y7_N22
\rx_frame[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[14][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[14][5]~feeder_combout\);

-- Location: FF_X21_Y7_N23
\rx_frame[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[14][5]~feeder_combout\,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][5]~q\);

-- Location: FF_X18_Y7_N11
\tx_frame[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][5]~q\);

-- Location: LCCOMB_X22_Y7_N6
\tx_frame[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][5]~feeder_combout\ = \rx_frame[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][5]~q\,
	combout => \tx_frame[6][5]~feeder_combout\);

-- Location: FF_X22_Y7_N7
\tx_frame[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][5]~q\);

-- Location: LCCOMB_X18_Y7_N10
\out_data~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~194_combout\ = (tx_cnt(1) & ((\out_data~193_combout\ & (\tx_frame[14][5]~q\)) # (!\out_data~193_combout\ & ((\tx_frame[6][5]~q\))))) # (!tx_cnt(1) & (\out_data~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~193_combout\,
	datac => \tx_frame[14][5]~q\,
	datad => \tx_frame[6][5]~q\,
	combout => \out_data~194_combout\);

-- Location: LCCOMB_X13_Y7_N14
\tx_frame[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[8][5]~feeder_combout\ = \rx_frame[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[2][5]~q\,
	combout => \tx_frame[8][5]~feeder_combout\);

-- Location: FF_X13_Y7_N15
\tx_frame[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[8][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][5]~q\);

-- Location: FF_X14_Y7_N25
\tx_frame[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][5]~q\);

-- Location: FF_X14_Y7_N27
\rx_frame[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][5]~q\);

-- Location: FF_X14_Y7_N7
\tx_frame[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][5]~q\);

-- Location: FF_X17_Y8_N31
\rx_frame[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][5]~q\);

-- Location: LCCOMB_X14_Y7_N10
\tx_frame[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[2][5]~feeder_combout\ = \rx_frame[8][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[8][5]~q\,
	combout => \tx_frame[2][5]~feeder_combout\);

-- Location: FF_X14_Y7_N11
\tx_frame[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[2][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][5]~q\);

-- Location: LCCOMB_X14_Y7_N6
\out_data~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~195_combout\ = (tx_cnt(1) & ((tx_cnt(3)) # ((\tx_frame[2][5]~q\)))) # (!tx_cnt(1) & (!tx_cnt(3) & (\tx_frame[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[0][5]~q\,
	datad => \tx_frame[2][5]~q\,
	combout => \out_data~195_combout\);

-- Location: LCCOMB_X14_Y7_N24
\out_data~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~196_combout\ = (tx_cnt(3) & ((\out_data~195_combout\ & ((\tx_frame[10][5]~q\))) # (!\out_data~195_combout\ & (\tx_frame[8][5]~q\)))) # (!tx_cnt(3) & (((\out_data~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[8][5]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[10][5]~q\,
	datad => \out_data~195_combout\,
	combout => \out_data~196_combout\);

-- Location: LCCOMB_X18_Y7_N12
\out_data~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~197_combout\ = (tx_cnt(0) & (((tx_cnt(2))))) # (!tx_cnt(0) & ((tx_cnt(2) & (\out_data~194_combout\)) # (!tx_cnt(2) & ((\out_data~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~194_combout\,
	datab => \out_data~196_combout\,
	datac => tx_cnt(0),
	datad => tx_cnt(2),
	combout => \out_data~197_combout\);

-- Location: FF_X17_Y7_N1
\rx_frame[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][5]~q\);

-- Location: FF_X18_Y7_N27
\tx_frame[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][5]~q\);

-- Location: LCCOMB_X23_Y7_N24
\rx_frame[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[9][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[9][5]~feeder_combout\);

-- Location: FF_X23_Y7_N25
\rx_frame[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[9][5]~feeder_combout\,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][5]~q\);

-- Location: LCCOMB_X23_Y7_N8
\tx_frame[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[3][5]~feeder_combout\ = \rx_frame[9][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[9][5]~q\,
	combout => \tx_frame[3][5]~feeder_combout\);

-- Location: FF_X23_Y7_N9
\tx_frame[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[3][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][5]~q\);

-- Location: LCCOMB_X18_Y7_N26
\out_data~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~191_combout\ = (tx_cnt(1) & ((tx_cnt(3)) # ((\tx_frame[3][5]~q\)))) # (!tx_cnt(1) & (!tx_cnt(3) & (\tx_frame[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[1][5]~q\,
	datad => \tx_frame[3][5]~q\,
	combout => \out_data~191_combout\);

-- Location: FF_X18_Y7_N29
\tx_frame[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][5]~q\);

-- Location: FF_X18_Y6_N7
\tx_frame[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[3][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][5]~q\);

-- Location: LCCOMB_X18_Y7_N28
\out_data~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~192_combout\ = (\out_data~191_combout\ & (((\tx_frame[11][5]~q\)) # (!tx_cnt(3)))) # (!\out_data~191_combout\ & (tx_cnt(3) & ((\tx_frame[9][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~191_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[11][5]~q\,
	datad => \tx_frame[9][5]~q\,
	combout => \out_data~192_combout\);

-- Location: LCCOMB_X19_Y8_N8
\rx_frame[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[13][5]~feeder_combout\);

-- Location: FF_X19_Y8_N9
\rx_frame[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[13][5]~feeder_combout\,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][5]~q\);

-- Location: LCCOMB_X19_Y7_N18
\tx_frame[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[13][5]~feeder_combout\ = \rx_frame[13][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[13][5]~q\,
	combout => \tx_frame[13][5]~feeder_combout\);

-- Location: FF_X19_Y7_N19
\tx_frame[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[13][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][5]~q\);

-- Location: LCCOMB_X19_Y7_N26
\rx_frame[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[11][5]~feeder_combout\);

-- Location: FF_X19_Y7_N27
\rx_frame[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][5]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][5]~q\);

-- Location: FF_X19_Y7_N31
\tx_frame[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[11][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][5]~q\);

-- Location: LCCOMB_X19_Y7_N30
\out_data~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~198_combout\ = (tx_cnt(3) & ((\tx_frame[13][5]~q\) # ((tx_cnt(1))))) # (!tx_cnt(3) & (((\tx_frame[5][5]~q\ & !tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[13][5]~q\,
	datac => \tx_frame[5][5]~q\,
	datad => tx_cnt(1),
	combout => \out_data~198_combout\);

-- Location: LCCOMB_X22_Y3_N20
\tx_frame[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[7][5]~feeder_combout\ = \rx_frame[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[1][5]~q\,
	combout => \tx_frame[7][5]~feeder_combout\);

-- Location: FF_X22_Y3_N21
\tx_frame[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[7][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][5]~q\);

-- Location: FF_X22_Y7_N5
\rx_frame[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][5]~q\);

-- Location: FF_X19_Y7_N23
\tx_frame[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][5]~q\);

-- Location: LCCOMB_X19_Y7_N22
\out_data~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~199_combout\ = (\out_data~198_combout\ & (((\tx_frame[15][5]~q\) # (!tx_cnt(1))))) # (!\out_data~198_combout\ & (\tx_frame[7][5]~q\ & ((tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~198_combout\,
	datab => \tx_frame[7][5]~q\,
	datac => \tx_frame[15][5]~q\,
	datad => tx_cnt(1),
	combout => \out_data~199_combout\);

-- Location: LCCOMB_X18_Y7_N14
\out_data~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~200_combout\ = (\out_data~197_combout\ & (((\out_data~199_combout\) # (!tx_cnt(0))))) # (!\out_data~197_combout\ & (\out_data~192_combout\ & (tx_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~197_combout\,
	datab => \out_data~192_combout\,
	datac => tx_cnt(0),
	datad => \out_data~199_combout\,
	combout => \out_data~200_combout\);

-- Location: LCCOMB_X14_Y3_N12
\tx_frame[28][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[28][5]~feeder_combout\ = \rx_frame[32][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[32][5]~q\,
	combout => \tx_frame[28][5]~feeder_combout\);

-- Location: FF_X14_Y3_N13
\tx_frame[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[28][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][5]~q\);

-- Location: FF_X12_Y3_N9
\rx_frame[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][5]~q\);

-- Location: LCCOMB_X13_Y3_N28
\tx_frame[25][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][5]~feeder_combout\ = \rx_frame[25][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][5]~q\,
	combout => \tx_frame[25][5]~feeder_combout\);

-- Location: FF_X13_Y3_N29
\tx_frame[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][5]~q\);

-- Location: FF_X13_Y4_N13
\rx_frame[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][5]~q\);

-- Location: FF_X14_Y3_N3
\tx_frame[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[24][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][5]~q\);

-- Location: LCCOMB_X14_Y3_N2
\out_data~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~181_combout\ = (tx_cnt(2) & (((tx_cnt(0))))) # (!tx_cnt(2) & ((tx_cnt(0) & (\tx_frame[25][5]~q\)) # (!tx_cnt(0) & ((\tx_frame[24][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[25][5]~q\,
	datac => \tx_frame[24][5]~q\,
	datad => tx_cnt(0),
	combout => \out_data~181_combout\);

-- Location: FF_X14_Y3_N11
\tx_frame[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][5]~q\);

-- Location: LCCOMB_X14_Y3_N10
\out_data~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~182_combout\ = (\out_data~181_combout\ & (((\tx_frame[29][5]~q\) # (!tx_cnt(2))))) # (!\out_data~181_combout\ & (\tx_frame[28][5]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[28][5]~q\,
	datab => \out_data~181_combout\,
	datac => \tx_frame[29][5]~q\,
	datad => tx_cnt(2),
	combout => \out_data~182_combout\);

-- Location: FF_X11_Y4_N7
\rx_frame[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][5]~q\);

-- Location: LCCOMB_X10_Y4_N26
\tx_frame[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[30][5]~feeder_combout\ = \rx_frame[26][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[26][5]~q\,
	combout => \tx_frame[30][5]~feeder_combout\);

-- Location: FF_X10_Y4_N27
\tx_frame[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[30][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][5]~q\);

-- Location: LCCOMB_X14_Y5_N14
\tx_frame[27][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][5]~feeder_combout\ = \rx_frame[31][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][5]~q\,
	combout => \tx_frame[27][5]~feeder_combout\);

-- Location: FF_X14_Y5_N15
\tx_frame[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][5]~q\);

-- Location: FF_X14_Y5_N11
\tx_frame[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[30][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][5]~q\);

-- Location: LCCOMB_X14_Y5_N10
\out_data~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~188_combout\ = (tx_cnt(2) & (((tx_cnt(0))))) # (!tx_cnt(2) & ((tx_cnt(0) & (\tx_frame[27][5]~q\)) # (!tx_cnt(0) & ((\tx_frame[26][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[27][5]~q\,
	datac => \tx_frame[26][5]~q\,
	datad => tx_cnt(0),
	combout => \out_data~188_combout\);

-- Location: LCCOMB_X9_Y4_N16
\rx_frame[27][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[27][5]~feeder_combout\);

-- Location: FF_X9_Y4_N17
\rx_frame[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[27][5]~feeder_combout\,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][5]~q\);

-- Location: FF_X10_Y4_N21
\tx_frame[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][5]~q\);

-- Location: LCCOMB_X10_Y4_N20
\out_data~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~189_combout\ = (\out_data~188_combout\ & (((\tx_frame[31][5]~q\) # (!tx_cnt(2))))) # (!\out_data~188_combout\ & (\tx_frame[30][5]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[30][5]~q\,
	datab => \out_data~188_combout\,
	datac => \tx_frame[31][5]~q\,
	datad => tx_cnt(2),
	combout => \out_data~189_combout\);

-- Location: LCCOMB_X14_Y2_N6
\rx_frame[20][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[20][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_frame[20][5]~feeder_combout\);

-- Location: FF_X14_Y2_N7
\rx_frame[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[20][5]~feeder_combout\,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][5]~q\);

-- Location: LCCOMB_X12_Y6_N12
\tx_frame[20][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][5]~feeder_combout\ = \rx_frame[20][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[20][5]~q\,
	combout => \tx_frame[20][5]~feeder_combout\);

-- Location: FF_X12_Y6_N13
\tx_frame[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][5]~q\);

-- Location: FF_X13_Y5_N1
\rx_frame[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][5]~q\);

-- Location: FF_X12_Y6_N1
\tx_frame[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[21][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][5]~q\);

-- Location: FF_X13_Y4_N15
\rx_frame[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][5]~q\);

-- Location: FF_X12_Y6_N7
\tx_frame[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][5]~q\);

-- Location: FF_X13_Y5_N11
\rx_frame[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][5]~q\);

-- Location: LCCOMB_X12_Y6_N18
\tx_frame[17][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[17][5]~feeder_combout\ = \rx_frame[17][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[17][5]~q\,
	combout => \tx_frame[17][5]~feeder_combout\);

-- Location: FF_X12_Y6_N19
\tx_frame[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[17][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][5]~q\);

-- Location: LCCOMB_X12_Y6_N6
\out_data~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~185_combout\ = (tx_cnt(0) & ((tx_cnt(2)) # ((\tx_frame[17][5]~q\)))) # (!tx_cnt(0) & (!tx_cnt(2) & (\tx_frame[16][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(2),
	datac => \tx_frame[16][5]~q\,
	datad => \tx_frame[17][5]~q\,
	combout => \out_data~185_combout\);

-- Location: LCCOMB_X12_Y6_N0
\out_data~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~186_combout\ = (tx_cnt(2) & ((\out_data~185_combout\ & ((\tx_frame[21][5]~q\))) # (!\out_data~185_combout\ & (\tx_frame[20][5]~q\)))) # (!tx_cnt(2) & (((\out_data~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[20][5]~q\,
	datab => tx_cnt(2),
	datac => \tx_frame[21][5]~q\,
	datad => \out_data~185_combout\,
	combout => \out_data~186_combout\);

-- Location: FF_X12_Y4_N29
\rx_frame[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][5]~q\);

-- Location: FF_X11_Y2_N3
\tx_frame[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][5]~q\);

-- Location: FF_X16_Y2_N27
\rx_frame[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][5]~q\);

-- Location: LCCOMB_X12_Y2_N24
\tx_frame[22][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][5]~feeder_combout\ = \rx_frame[22][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][5]~q\,
	combout => \tx_frame[22][5]~feeder_combout\);

-- Location: FF_X12_Y2_N25
\tx_frame[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][5]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][5]~q\);

-- Location: LCCOMB_X11_Y2_N2
\out_data~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~183_combout\ = (tx_cnt(2) & ((tx_cnt(0)) # ((\tx_frame[22][5]~q\)))) # (!tx_cnt(2) & (!tx_cnt(0) & (\tx_frame[18][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(0),
	datac => \tx_frame[18][5]~q\,
	datad => \tx_frame[22][5]~q\,
	combout => \out_data~183_combout\);

-- Location: FF_X11_Y3_N5
\rx_frame[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][5]~q\);

-- Location: FF_X11_Y3_N27
\tx_frame[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[23][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][5]~q\);

-- Location: FF_X12_Y3_N11
\rx_frame[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][5]~q\);

-- Location: FF_X11_Y3_N29
\tx_frame[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[19][5]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][5]~q\);

-- Location: LCCOMB_X11_Y3_N26
\out_data~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~184_combout\ = (\out_data~183_combout\ & (((\tx_frame[23][5]~q\)) # (!tx_cnt(0)))) # (!\out_data~183_combout\ & (tx_cnt(0) & ((\tx_frame[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~183_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[23][5]~q\,
	datad => \tx_frame[19][5]~q\,
	combout => \out_data~184_combout\);

-- Location: LCCOMB_X10_Y4_N8
\out_data~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~187_combout\ = (tx_cnt(3) & (((tx_cnt(1))))) # (!tx_cnt(3) & ((tx_cnt(1) & ((\out_data~184_combout\))) # (!tx_cnt(1) & (\out_data~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~186_combout\,
	datab => tx_cnt(3),
	datac => tx_cnt(1),
	datad => \out_data~184_combout\,
	combout => \out_data~187_combout\);

-- Location: LCCOMB_X10_Y4_N2
\out_data~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~190_combout\ = (\out_data~187_combout\ & (((\out_data~189_combout\) # (!tx_cnt(3))))) # (!\out_data~187_combout\ & (\out_data~182_combout\ & ((tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~182_combout\,
	datab => \out_data~189_combout\,
	datac => \out_data~187_combout\,
	datad => tx_cnt(3),
	combout => \out_data~190_combout\);

-- Location: LCCOMB_X13_Y6_N2
\out_data~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~201_combout\ = (tx_cnt(5) & (((\out_data~10_combout\)))) # (!tx_cnt(5) & ((\out_data~10_combout\ & ((\out_data~190_combout\))) # (!\out_data~10_combout\ & (\out_data~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~200_combout\,
	datab => \out_data~190_combout\,
	datac => tx_cnt(5),
	datad => \out_data~10_combout\,
	combout => \out_data~201_combout\);

-- Location: LCCOMB_X13_Y6_N26
\out_data~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~202_combout\ = (tx_cnt(5) & ((\out_data~201_combout\ & ((\tx_frame[49][5]~q\))) # (!\out_data~201_combout\ & (\out_data~180_combout\)))) # (!tx_cnt(5) & (((\out_data~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(5),
	datab => \out_data~180_combout\,
	datac => \tx_frame[49][5]~q\,
	datad => \out_data~201_combout\,
	combout => \out_data~202_combout\);

-- Location: LCCOMB_X13_Y6_N6
\out_data~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~203_combout\ = (\out_data~202_combout\ & \state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_data~202_combout\,
	datad => \state.SEND~q\,
	combout => \out_data~203_combout\);

-- Location: FF_X13_Y4_N31
\rx_frame[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][6]~q\);

-- Location: FF_X13_Y3_N15
\tx_frame[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][6]~q\);

-- Location: LCCOMB_X12_Y8_N6
\rx_frame[17][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[17][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[17][6]~feeder_combout\);

-- Location: FF_X12_Y8_N7
\rx_frame[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[17][6]~feeder_combout\,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][6]~q\);

-- Location: LCCOMB_X13_Y3_N16
\tx_frame[17][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[17][6]~feeder_combout\ = \rx_frame[17][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[17][6]~q\,
	combout => \tx_frame[17][6]~feeder_combout\);

-- Location: FF_X13_Y3_N17
\tx_frame[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[17][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][6]~q\);

-- Location: LCCOMB_X13_Y3_N14
\out_data~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~208_combout\ = (tx_cnt(2) & (tx_cnt(0))) # (!tx_cnt(2) & ((tx_cnt(0) & ((\tx_frame[17][6]~q\))) # (!tx_cnt(0) & (\tx_frame[16][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(0),
	datac => \tx_frame[16][6]~q\,
	datad => \tx_frame[17][6]~q\,
	combout => \out_data~208_combout\);

-- Location: FF_X14_Y2_N1
\rx_frame[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][6]~q\);

-- Location: LCCOMB_X14_Y3_N28
\tx_frame[20][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][6]~feeder_combout\ = \rx_frame[20][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[20][6]~q\,
	combout => \tx_frame[20][6]~feeder_combout\);

-- Location: FF_X14_Y3_N29
\tx_frame[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][6]~q\);

-- Location: LCCOMB_X13_Y5_N26
\rx_frame[21][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[21][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[21][6]~feeder_combout\);

-- Location: FF_X13_Y5_N27
\rx_frame[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[21][6]~feeder_combout\,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][6]~q\);

-- Location: FF_X14_Y3_N21
\tx_frame[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[21][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][6]~q\);

-- Location: LCCOMB_X14_Y3_N20
\out_data~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~209_combout\ = (\out_data~208_combout\ & (((\tx_frame[21][6]~q\) # (!tx_cnt(2))))) # (!\out_data~208_combout\ & (\tx_frame[20][6]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~208_combout\,
	datab => \tx_frame[20][6]~q\,
	datac => \tx_frame[21][6]~q\,
	datad => tx_cnt(2),
	combout => \out_data~209_combout\);

-- Location: FF_X12_Y3_N19
\rx_frame[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][6]~q\);

-- Location: LCCOMB_X13_Y3_N26
\tx_frame[25][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[25][6]~feeder_combout\ = \rx_frame[25][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[25][6]~q\,
	combout => \tx_frame[25][6]~feeder_combout\);

-- Location: FF_X13_Y3_N27
\tx_frame[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[25][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][6]~q\);

-- Location: FF_X14_Y3_N19
\tx_frame[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][6]~q\);

-- Location: FF_X13_Y4_N29
\rx_frame[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][6]~q\);

-- Location: FF_X13_Y3_N23
\tx_frame[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[24][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][6]~q\);

-- Location: LCCOMB_X13_Y3_N24
\tx_frame[28][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[28][6]~feeder_combout\ = \rx_frame[32][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[32][6]~q\,
	combout => \tx_frame[28][6]~feeder_combout\);

-- Location: FF_X13_Y3_N25
\tx_frame[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[28][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][6]~q\);

-- Location: LCCOMB_X13_Y3_N22
\out_data~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~206_combout\ = (tx_cnt(2) & ((tx_cnt(0)) # ((\tx_frame[28][6]~q\)))) # (!tx_cnt(2) & (!tx_cnt(0) & (\tx_frame[24][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(0),
	datac => \tx_frame[24][6]~q\,
	datad => \tx_frame[28][6]~q\,
	combout => \out_data~206_combout\);

-- Location: LCCOMB_X14_Y3_N18
\out_data~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~207_combout\ = (tx_cnt(0) & ((\out_data~206_combout\ & ((\tx_frame[29][6]~q\))) # (!\out_data~206_combout\ & (\tx_frame[25][6]~q\)))) # (!tx_cnt(0) & (((\out_data~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[25][6]~q\,
	datab => tx_cnt(0),
	datac => \tx_frame[29][6]~q\,
	datad => \out_data~206_combout\,
	combout => \out_data~207_combout\);

-- Location: LCCOMB_X13_Y3_N12
\out_data~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~210_combout\ = (tx_cnt(1) & (((tx_cnt(3))))) # (!tx_cnt(1) & ((tx_cnt(3) & ((\out_data~207_combout\))) # (!tx_cnt(3) & (\out_data~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~209_combout\,
	datab => tx_cnt(1),
	datac => tx_cnt(3),
	datad => \out_data~207_combout\,
	combout => \out_data~210_combout\);

-- Location: FF_X12_Y4_N21
\rx_frame[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][6]~q\);

-- Location: FF_X13_Y3_N3
\tx_frame[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][6]~q\);

-- Location: FF_X12_Y3_N21
\rx_frame[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][6]~q\);

-- Location: LCCOMB_X13_Y3_N20
\tx_frame[19][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[19][6]~feeder_combout\ = \rx_frame[19][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[19][6]~q\,
	combout => \tx_frame[19][6]~feeder_combout\);

-- Location: FF_X13_Y3_N21
\tx_frame[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[19][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][6]~q\);

-- Location: LCCOMB_X13_Y3_N2
\out_data~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~204_combout\ = (tx_cnt(2) & (tx_cnt(0))) # (!tx_cnt(2) & ((tx_cnt(0) & ((\tx_frame[19][6]~q\))) # (!tx_cnt(0) & (\tx_frame[18][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => tx_cnt(0),
	datac => \tx_frame[18][6]~q\,
	datad => \tx_frame[19][6]~q\,
	combout => \out_data~204_combout\);

-- Location: LCCOMB_X11_Y3_N22
\rx_frame[23][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[23][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[23][6]~feeder_combout\);

-- Location: FF_X11_Y3_N23
\rx_frame[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[23][6]~feeder_combout\,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][6]~q\);

-- Location: FF_X13_Y3_N5
\tx_frame[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[23][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][6]~q\);

-- Location: LCCOMB_X16_Y2_N0
\rx_frame[22][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[22][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[22][6]~feeder_combout\);

-- Location: FF_X16_Y2_N1
\rx_frame[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[22][6]~feeder_combout\,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][6]~q\);

-- Location: LCCOMB_X13_Y3_N6
\tx_frame[22][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][6]~feeder_combout\ = \rx_frame[22][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[22][6]~q\,
	combout => \tx_frame[22][6]~feeder_combout\);

-- Location: FF_X13_Y3_N7
\tx_frame[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][6]~q\);

-- Location: LCCOMB_X13_Y3_N4
\out_data~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~205_combout\ = (tx_cnt(2) & ((\out_data~204_combout\ & (\tx_frame[23][6]~q\)) # (!\out_data~204_combout\ & ((\tx_frame[22][6]~q\))))) # (!tx_cnt(2) & (\out_data~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~204_combout\,
	datac => \tx_frame[23][6]~q\,
	datad => \tx_frame[22][6]~q\,
	combout => \out_data~205_combout\);

-- Location: FF_X12_Y6_N3
\tx_frame[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[30][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][6]~q\);

-- Location: LCCOMB_X11_Y4_N14
\rx_frame[26][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[26][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[26][6]~feeder_combout\);

-- Location: FF_X11_Y4_N15
\rx_frame[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[26][6]~feeder_combout\,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][6]~q\);

-- Location: LCCOMB_X11_Y6_N18
\tx_frame[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[30][6]~feeder_combout\ = \rx_frame[26][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[26][6]~q\,
	combout => \tx_frame[30][6]~feeder_combout\);

-- Location: FF_X11_Y6_N19
\tx_frame[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[30][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][6]~q\);

-- Location: LCCOMB_X12_Y6_N2
\out_data~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~211_combout\ = (tx_cnt(0) & (tx_cnt(2))) # (!tx_cnt(0) & ((tx_cnt(2) & ((\tx_frame[30][6]~q\))) # (!tx_cnt(2) & (\tx_frame[26][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(2),
	datac => \tx_frame[26][6]~q\,
	datad => \tx_frame[30][6]~q\,
	combout => \out_data~211_combout\);

-- Location: LCCOMB_X12_Y6_N8
\rx_frame[27][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[27][6]~feeder_combout\);

-- Location: FF_X12_Y6_N9
\rx_frame[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[27][6]~feeder_combout\,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][6]~q\);

-- Location: FF_X12_Y6_N29
\tx_frame[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][6]~q\);

-- Location: LCCOMB_X12_Y6_N10
\tx_frame[27][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[27][6]~feeder_combout\ = \rx_frame[31][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[31][6]~q\,
	combout => \tx_frame[27][6]~feeder_combout\);

-- Location: FF_X12_Y6_N11
\tx_frame[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[27][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][6]~q\);

-- Location: LCCOMB_X12_Y6_N28
\out_data~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~212_combout\ = (tx_cnt(0) & ((\out_data~211_combout\ & (\tx_frame[31][6]~q\)) # (!\out_data~211_combout\ & ((\tx_frame[27][6]~q\))))) # (!tx_cnt(0) & (\out_data~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~211_combout\,
	datac => \tx_frame[31][6]~q\,
	datad => \tx_frame[27][6]~q\,
	combout => \out_data~212_combout\);

-- Location: LCCOMB_X13_Y3_N30
\out_data~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~213_combout\ = (\out_data~210_combout\ & (((\out_data~212_combout\)) # (!tx_cnt(1)))) # (!\out_data~210_combout\ & (tx_cnt(1) & (\out_data~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~210_combout\,
	datab => tx_cnt(1),
	datac => \out_data~205_combout\,
	datad => \out_data~212_combout\,
	combout => \out_data~213_combout\);

-- Location: FF_X13_Y6_N29
\rx_frame[49][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][6]~q\);

-- Location: FF_X11_Y6_N7
\tx_frame[49][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][6]~q\);

-- Location: LCCOMB_X16_Y8_N18
\rx_frame[46][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[46][6]~feeder_combout\);

-- Location: FF_X16_Y8_N19
\rx_frame[46][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[46][6]~feeder_combout\,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][6]~q\);

-- Location: LCCOMB_X16_Y8_N22
\tx_frame[46][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][6]~feeder_combout\ = \rx_frame[46][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][6]~q\,
	combout => \tx_frame[46][6]~feeder_combout\);

-- Location: FF_X16_Y8_N23
\tx_frame[46][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][6]~q\);

-- Location: FF_X16_Y5_N21
\rx_frame[47][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][6]~q\);

-- Location: FF_X22_Y6_N7
\tx_frame[47][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][6]~q\);

-- Location: LCCOMB_X13_Y8_N20
\rx_frame[44][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[44][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[44][6]~feeder_combout\);

-- Location: FF_X13_Y8_N21
\rx_frame[44][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[44][6]~feeder_combout\,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][6]~q\);

-- Location: FF_X21_Y6_N9
\tx_frame[44][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][6]~q\);

-- Location: FF_X21_Y8_N29
\rx_frame[45][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][6]~q\);

-- Location: LCCOMB_X21_Y6_N12
\tx_frame[45][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][6]~feeder_combout\ = \rx_frame[45][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][6]~q\,
	combout => \tx_frame[45][6]~feeder_combout\);

-- Location: FF_X21_Y6_N13
\tx_frame[45][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][6]~q\);

-- Location: LCCOMB_X21_Y6_N8
\out_data~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~221_combout\ = (tx_cnt(1) & (tx_cnt(0))) # (!tx_cnt(1) & ((tx_cnt(0) & ((\tx_frame[45][6]~q\))) # (!tx_cnt(0) & (\tx_frame[44][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[44][6]~q\,
	datad => \tx_frame[45][6]~q\,
	combout => \out_data~221_combout\);

-- Location: LCCOMB_X22_Y6_N6
\out_data~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~222_combout\ = (tx_cnt(1) & ((\out_data~221_combout\ & ((\tx_frame[47][6]~q\))) # (!\out_data~221_combout\ & (\tx_frame[46][6]~q\)))) # (!tx_cnt(1) & (((\out_data~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[46][6]~q\,
	datac => \tx_frame[47][6]~q\,
	datad => \out_data~221_combout\,
	combout => \out_data~222_combout\);

-- Location: LCCOMB_X19_Y8_N22
\rx_frame[48][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[48][6]~feeder_combout\);

-- Location: FF_X19_Y8_N23
\rx_frame[48][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[48][6]~feeder_combout\,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][6]~q\);

-- Location: FF_X22_Y6_N9
\tx_frame[48][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][6]~q\);

-- Location: FF_X18_Y5_N27
\rx_frame[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][6]~q\);

-- Location: FF_X22_Y6_N11
\tx_frame[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][6]~q\);

-- Location: LCCOMB_X21_Y4_N14
\rx_frame[37][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[37][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[37][6]~feeder_combout\);

-- Location: FF_X21_Y4_N15
\rx_frame[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[37][6]~feeder_combout\,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][6]~q\);

-- Location: LCCOMB_X22_Y6_N22
\tx_frame[37][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[37][6]~feeder_combout\ = \rx_frame[37][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[37][6]~q\,
	combout => \tx_frame[37][6]~feeder_combout\);

-- Location: FF_X22_Y6_N23
\tx_frame[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[37][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][6]~q\);

-- Location: LCCOMB_X22_Y4_N18
\rx_frame[36][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[36][6]~feeder_combout\);

-- Location: FF_X22_Y4_N19
\rx_frame[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[36][6]~feeder_combout\,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][6]~q\);

-- Location: FF_X22_Y6_N21
\tx_frame[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][6]~q\);

-- Location: LCCOMB_X22_Y6_N20
\out_data~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~216_combout\ = (tx_cnt(1) & (((tx_cnt(0))))) # (!tx_cnt(1) & ((tx_cnt(0) & (\tx_frame[37][6]~q\)) # (!tx_cnt(0) & ((\tx_frame[36][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[37][6]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[36][6]~q\,
	datad => tx_cnt(0),
	combout => \out_data~216_combout\);

-- Location: LCCOMB_X19_Y4_N24
\rx_frame[39][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[39][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[39][6]~feeder_combout\);

-- Location: FF_X19_Y4_N25
\rx_frame[39][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[39][6]~feeder_combout\,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][6]~q\);

-- Location: FF_X22_Y6_N3
\tx_frame[39][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][6]~q\);

-- Location: LCCOMB_X22_Y5_N22
\rx_frame[38][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[38][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[38][6]~feeder_combout\);

-- Location: FF_X22_Y5_N23
\rx_frame[38][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[38][6]~feeder_combout\,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][6]~q\);

-- Location: LCCOMB_X22_Y6_N28
\tx_frame[38][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[38][6]~feeder_combout\ = \rx_frame[38][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[38][6]~q\,
	combout => \tx_frame[38][6]~feeder_combout\);

-- Location: FF_X22_Y6_N29
\tx_frame[38][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[38][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][6]~q\);

-- Location: LCCOMB_X22_Y6_N2
\out_data~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~217_combout\ = (tx_cnt(1) & ((\out_data~216_combout\ & (\tx_frame[39][6]~q\)) # (!\out_data~216_combout\ & ((\tx_frame[38][6]~q\))))) # (!tx_cnt(1) & (\out_data~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \out_data~216_combout\,
	datac => \tx_frame[39][6]~q\,
	datad => \tx_frame[38][6]~q\,
	combout => \out_data~217_combout\);

-- Location: LCCOMB_X22_Y6_N10
\out_data~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~218_combout\ = (\out_data~19_combout\ & (((\out_data~217_combout\)) # (!\out_data~18_combout\))) # (!\out_data~19_combout\ & (\out_data~18_combout\ & (\tx_frame[35][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~19_combout\,
	datab => \out_data~18_combout\,
	datac => \tx_frame[35][6]~q\,
	datad => \out_data~217_combout\,
	combout => \out_data~218_combout\);

-- Location: FF_X14_Y4_N17
\rx_frame[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][6]~q\);

-- Location: LCCOMB_X22_Y6_N18
\tx_frame[32][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][6]~feeder_combout\ = \rx_frame[28][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][6]~q\,
	combout => \tx_frame[32][6]~feeder_combout\);

-- Location: FF_X22_Y6_N19
\tx_frame[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][6]~q\);

-- Location: FF_X14_Y2_N11
\rx_frame[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][6]~q\);

-- Location: FF_X22_Y6_N13
\tx_frame[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][6]~q\);

-- Location: LCCOMB_X22_Y6_N12
\out_data~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~219_combout\ = (\out_data~218_combout\ & (((\tx_frame[33][6]~q\) # (!\out_data~15_combout\)))) # (!\out_data~218_combout\ & (\tx_frame[32][6]~q\ & ((\out_data~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~218_combout\,
	datab => \tx_frame[32][6]~q\,
	datac => \tx_frame[33][6]~q\,
	datad => \out_data~15_combout\,
	combout => \out_data~219_combout\);

-- Location: LCCOMB_X19_Y6_N2
\rx_frame[40][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[40][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[40][6]~feeder_combout\);

-- Location: FF_X19_Y6_N3
\rx_frame[40][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[40][6]~feeder_combout\,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][6]~q\);

-- Location: FF_X22_Y6_N31
\tx_frame[40][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][6]~q\);

-- Location: FF_X19_Y5_N5
\rx_frame[42][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][6]~q\);

-- Location: FF_X19_Y5_N9
\tx_frame[42][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[42][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][6]~q\);

-- Location: LCCOMB_X22_Y6_N30
\out_data~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~214_combout\ = (tx_cnt(0) & (tx_cnt(1))) # (!tx_cnt(0) & ((tx_cnt(1) & ((\tx_frame[42][6]~q\))) # (!tx_cnt(1) & (\tx_frame[40][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(1),
	datac => \tx_frame[40][6]~q\,
	datad => \tx_frame[42][6]~q\,
	combout => \out_data~214_combout\);

-- Location: LCCOMB_X13_Y8_N14
\rx_frame[41][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[41][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[41][6]~feeder_combout\);

-- Location: FF_X13_Y8_N15
\rx_frame[41][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[41][6]~feeder_combout\,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][6]~q\);

-- Location: LCCOMB_X21_Y6_N28
\tx_frame[41][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][6]~feeder_combout\ = \rx_frame[41][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[41][6]~q\,
	combout => \tx_frame[41][6]~feeder_combout\);

-- Location: FF_X21_Y6_N29
\tx_frame[41][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][6]~q\);

-- Location: FF_X21_Y6_N17
\rx_frame[43][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][6]~q\);

-- Location: FF_X22_Y6_N1
\tx_frame[43][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][6]~q\);

-- Location: LCCOMB_X22_Y6_N0
\out_data~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~215_combout\ = (\out_data~214_combout\ & (((\tx_frame[43][6]~q\) # (!tx_cnt(0))))) # (!\out_data~214_combout\ & (\tx_frame[41][6]~q\ & ((tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~214_combout\,
	datab => \tx_frame[41][6]~q\,
	datac => \tx_frame[43][6]~q\,
	datad => tx_cnt(0),
	combout => \out_data~215_combout\);

-- Location: LCCOMB_X22_Y6_N16
\out_data~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~220_combout\ = (\out_data~11_combout\ & (((\out_data~14_combout\)))) # (!\out_data~11_combout\ & ((\out_data~14_combout\ & ((\out_data~215_combout\))) # (!\out_data~14_combout\ & (\out_data~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~219_combout\,
	datab => \out_data~11_combout\,
	datac => \out_data~14_combout\,
	datad => \out_data~215_combout\,
	combout => \out_data~220_combout\);

-- Location: LCCOMB_X22_Y6_N8
\out_data~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~223_combout\ = (\out_data~11_combout\ & ((\out_data~220_combout\ & (\out_data~222_combout\)) # (!\out_data~220_combout\ & ((\tx_frame[48][6]~q\))))) # (!\out_data~11_combout\ & (((\out_data~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~222_combout\,
	datab => \out_data~11_combout\,
	datac => \tx_frame[48][6]~q\,
	datad => \out_data~220_combout\,
	combout => \out_data~223_combout\);

-- Location: FF_X23_Y7_N19
\rx_frame[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][6]~q\);

-- Location: LCCOMB_X23_Y7_N26
\tx_frame[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[3][6]~feeder_combout\ = \rx_frame[9][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[9][6]~q\,
	combout => \tx_frame[3][6]~feeder_combout\);

-- Location: FF_X23_Y7_N27
\tx_frame[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[3][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][6]~q\);

-- Location: FF_X17_Y7_N13
\tx_frame[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][6]~q\);

-- Location: LCCOMB_X18_Y6_N4
\tx_frame[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][6]~feeder_combout\ = \rx_frame[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][6]~q\,
	combout => \tx_frame[9][6]~feeder_combout\);

-- Location: FF_X18_Y6_N5
\tx_frame[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][6]~q\);

-- Location: LCCOMB_X17_Y7_N8
\rx_frame[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[7][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[7][6]~feeder_combout\);

-- Location: FF_X17_Y7_N9
\rx_frame[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[7][6]~feeder_combout\,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][6]~q\);

-- Location: FF_X17_Y7_N29
\tx_frame[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][6]~q\);

-- Location: LCCOMB_X17_Y7_N28
\out_data~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~224_combout\ = (tx_cnt(1) & (((tx_cnt(3))))) # (!tx_cnt(1) & ((tx_cnt(3) & (\tx_frame[9][6]~q\)) # (!tx_cnt(3) & ((\tx_frame[1][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[9][6]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[1][6]~q\,
	datad => tx_cnt(3),
	combout => \out_data~224_combout\);

-- Location: LCCOMB_X17_Y7_N12
\out_data~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~225_combout\ = (tx_cnt(1) & ((\out_data~224_combout\ & ((\tx_frame[11][6]~q\))) # (!\out_data~224_combout\ & (\tx_frame[3][6]~q\)))) # (!tx_cnt(1) & (((\out_data~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[3][6]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[11][6]~q\,
	datad => \out_data~224_combout\,
	combout => \out_data~225_combout\);

-- Location: LCCOMB_X19_Y7_N0
\rx_frame[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[11][6]~feeder_combout\);

-- Location: FF_X19_Y7_N1
\rx_frame[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][6]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][6]~q\);

-- Location: FF_X18_Y7_N7
\tx_frame[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[11][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][6]~q\);

-- Location: LCCOMB_X22_Y7_N16
\tx_frame[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[7][6]~feeder_combout\ = \rx_frame[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[1][6]~q\,
	combout => \tx_frame[7][6]~feeder_combout\);

-- Location: FF_X22_Y7_N17
\tx_frame[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[7][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][6]~q\);

-- Location: LCCOMB_X18_Y7_N6
\out_data~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~231_combout\ = (tx_cnt(1) & ((tx_cnt(3)) # ((\tx_frame[7][6]~q\)))) # (!tx_cnt(1) & (!tx_cnt(3) & (\tx_frame[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[5][6]~q\,
	datad => \tx_frame[7][6]~q\,
	combout => \out_data~231_combout\);

-- Location: LCCOMB_X19_Y8_N20
\rx_frame[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[13][6]~feeder_combout\);

-- Location: FF_X19_Y8_N21
\rx_frame[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[13][6]~feeder_combout\,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][6]~q\);

-- Location: LCCOMB_X18_Y7_N20
\tx_frame[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[13][6]~feeder_combout\ = \rx_frame[13][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[13][6]~q\,
	combout => \tx_frame[13][6]~feeder_combout\);

-- Location: FF_X18_Y7_N21
\tx_frame[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[13][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][6]~q\);

-- Location: LCCOMB_X22_Y7_N26
\rx_frame[15][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[15][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[15][6]~feeder_combout\);

-- Location: FF_X22_Y7_N27
\rx_frame[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[15][6]~feeder_combout\,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][6]~q\);

-- Location: FF_X18_Y7_N25
\tx_frame[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][6]~q\);

-- Location: LCCOMB_X18_Y7_N24
\out_data~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~232_combout\ = (\out_data~231_combout\ & (((\tx_frame[15][6]~q\) # (!tx_cnt(3))))) # (!\out_data~231_combout\ & (\tx_frame[13][6]~q\ & ((tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~231_combout\,
	datab => \tx_frame[13][6]~q\,
	datac => \tx_frame[15][6]~q\,
	datad => tx_cnt(3),
	combout => \out_data~232_combout\);

-- Location: FF_X17_Y8_N1
\rx_frame[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][6]~q\);

-- Location: LCCOMB_X17_Y8_N14
\tx_frame[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[2][6]~feeder_combout\ = \rx_frame[8][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[8][6]~q\,
	combout => \tx_frame[2][6]~feeder_combout\);

-- Location: FF_X17_Y8_N15
\tx_frame[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[2][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][6]~q\);

-- Location: FF_X14_Y6_N17
\tx_frame[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[2][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][6]~q\);

-- Location: FF_X14_Y7_N31
\rx_frame[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][6]~q\);

-- Location: FF_X14_Y7_N17
\tx_frame[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][6]~q\);

-- Location: LCCOMB_X14_Y7_N16
\out_data~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~228_combout\ = (tx_cnt(1) & (((tx_cnt(3))))) # (!tx_cnt(1) & ((tx_cnt(3) & (\tx_frame[8][6]~q\)) # (!tx_cnt(3) & ((\tx_frame[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => \tx_frame[8][6]~q\,
	datac => \tx_frame[0][6]~q\,
	datad => tx_cnt(3),
	combout => \out_data~228_combout\);

-- Location: FF_X14_Y7_N29
\tx_frame[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][6]~q\);

-- Location: LCCOMB_X14_Y7_N28
\out_data~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~229_combout\ = (\out_data~228_combout\ & (((\tx_frame[10][6]~q\) # (!tx_cnt(1))))) # (!\out_data~228_combout\ & (\tx_frame[2][6]~q\ & ((tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[2][6]~q\,
	datab => \out_data~228_combout\,
	datac => \tx_frame[10][6]~q\,
	datad => tx_cnt(1),
	combout => \out_data~229_combout\);

-- Location: FF_X18_Y5_N9
\rx_frame[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][6]~q\);

-- Location: FF_X18_Y7_N23
\tx_frame[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[10][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][6]~q\);

-- Location: FF_X21_Y3_N31
\tx_frame[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[0][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][6]~q\);

-- Location: LCCOMB_X18_Y7_N22
\out_data~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~226_combout\ = (tx_cnt(1) & ((tx_cnt(3)) # ((\tx_frame[6][6]~q\)))) # (!tx_cnt(1) & (!tx_cnt(3) & (\tx_frame[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[4][6]~q\,
	datad => \tx_frame[6][6]~q\,
	combout => \out_data~226_combout\);

-- Location: FF_X21_Y7_N9
\rx_frame[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][6]~q\);

-- Location: FF_X18_Y7_N1
\tx_frame[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][6]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][6]~q\);

-- Location: LCCOMB_X17_Y9_N22
\rx_frame[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_frame[12][6]~feeder_combout\);

-- Location: FF_X17_Y9_N23
\rx_frame[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[12][6]~feeder_combout\,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][6]~q\);

-- Location: LCCOMB_X18_Y7_N16
\tx_frame[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[12][6]~feeder_combout\ = \rx_frame[12][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[12][6]~q\,
	combout => \tx_frame[12][6]~feeder_combout\);

-- Location: FF_X18_Y7_N17
\tx_frame[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[12][6]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][6]~q\);

-- Location: LCCOMB_X18_Y7_N0
\out_data~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~227_combout\ = (\out_data~226_combout\ & (((\tx_frame[14][6]~q\)) # (!tx_cnt(3)))) # (!\out_data~226_combout\ & (tx_cnt(3) & ((\tx_frame[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~226_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[14][6]~q\,
	datad => \tx_frame[12][6]~q\,
	combout => \out_data~227_combout\);

-- Location: LCCOMB_X18_Y7_N2
\out_data~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~230_combout\ = (tx_cnt(2) & (((tx_cnt(0)) # (\out_data~227_combout\)))) # (!tx_cnt(2) & (\out_data~229_combout\ & (!tx_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~229_combout\,
	datac => tx_cnt(0),
	datad => \out_data~227_combout\,
	combout => \out_data~230_combout\);

-- Location: LCCOMB_X18_Y7_N30
\out_data~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~233_combout\ = (tx_cnt(0) & ((\out_data~230_combout\ & ((\out_data~232_combout\))) # (!\out_data~230_combout\ & (\out_data~225_combout\)))) # (!tx_cnt(0) & (((\out_data~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~225_combout\,
	datab => \out_data~232_combout\,
	datac => tx_cnt(0),
	datad => \out_data~230_combout\,
	combout => \out_data~233_combout\);

-- Location: LCCOMB_X11_Y6_N16
\out_data~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~234_combout\ = (tx_cnt(5) & ((\out_data~223_combout\) # ((\out_data~10_combout\)))) # (!tx_cnt(5) & (((!\out_data~10_combout\ & \out_data~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~223_combout\,
	datab => tx_cnt(5),
	datac => \out_data~10_combout\,
	datad => \out_data~233_combout\,
	combout => \out_data~234_combout\);

-- Location: LCCOMB_X11_Y6_N6
\out_data~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~235_combout\ = (\out_data~10_combout\ & ((\out_data~234_combout\ & ((\tx_frame[49][6]~q\))) # (!\out_data~234_combout\ & (\out_data~213_combout\)))) # (!\out_data~10_combout\ & (((\out_data~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~213_combout\,
	datab => \out_data~10_combout\,
	datac => \tx_frame[49][6]~q\,
	datad => \out_data~234_combout\,
	combout => \out_data~235_combout\);

-- Location: LCCOMB_X11_Y6_N28
\out_data~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~236_combout\ = (\state.SEND~q\ & \out_data~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~235_combout\,
	combout => \out_data~236_combout\);

-- Location: LCCOMB_X13_Y4_N20
\rx_frame[16][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[16][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[16][7]~feeder_combout\);

-- Location: FF_X13_Y4_N21
\rx_frame[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[16][7]~feeder_combout\,
	ena => \rx_frame[16][0]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[16][7]~q\);

-- Location: FF_X10_Y5_N11
\tx_frame[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[16][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[16][7]~q\);

-- Location: LCCOMB_X13_Y5_N16
\rx_frame[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[17][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[17][7]~feeder_combout\);

-- Location: FF_X13_Y5_N17
\rx_frame[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[17][7]~feeder_combout\,
	ena => \rx_frame[17][0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[17][7]~q\);

-- Location: LCCOMB_X10_Y5_N28
\tx_frame[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[17][7]~feeder_combout\ = \rx_frame[17][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[17][7]~q\,
	combout => \tx_frame[17][7]~feeder_combout\);

-- Location: FF_X10_Y5_N29
\tx_frame[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[17][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[17][7]~q\);

-- Location: LCCOMB_X10_Y5_N10
\out_data~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~251_combout\ = (tx_cnt(0) & ((tx_cnt(2)) # ((\tx_frame[17][7]~q\)))) # (!tx_cnt(0) & (!tx_cnt(2) & (\tx_frame[16][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(2),
	datac => \tx_frame[16][7]~q\,
	datad => \tx_frame[17][7]~q\,
	combout => \out_data~251_combout\);

-- Location: LCCOMB_X13_Y5_N22
\rx_frame[21][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[21][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[21][7]~feeder_combout\);

-- Location: FF_X13_Y5_N23
\rx_frame[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[21][7]~feeder_combout\,
	ena => \rx_frame[21][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[21][7]~q\);

-- Location: FF_X10_Y5_N13
\tx_frame[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[21][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[21][7]~q\);

-- Location: FF_X14_Y2_N31
\rx_frame[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[20][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[20][7]~q\);

-- Location: LCCOMB_X10_Y5_N18
\tx_frame[20][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[20][7]~feeder_combout\ = \rx_frame[20][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[20][7]~q\,
	combout => \tx_frame[20][7]~feeder_combout\);

-- Location: FF_X10_Y5_N19
\tx_frame[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[20][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[20][7]~q\);

-- Location: LCCOMB_X10_Y5_N12
\out_data~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~252_combout\ = (\out_data~251_combout\ & (((\tx_frame[21][7]~q\)) # (!tx_cnt(2)))) # (!\out_data~251_combout\ & (tx_cnt(2) & ((\tx_frame[20][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~251_combout\,
	datab => tx_cnt(2),
	datac => \tx_frame[21][7]~q\,
	datad => \tx_frame[20][7]~q\,
	combout => \out_data~252_combout\);

-- Location: LCCOMB_X12_Y3_N26
\rx_frame[19][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[19][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[19][7]~feeder_combout\);

-- Location: FF_X12_Y3_N27
\rx_frame[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[19][7]~feeder_combout\,
	ena => \rx_frame[19][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[19][7]~q\);

-- Location: LCCOMB_X10_Y5_N16
\tx_frame[19][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[19][7]~feeder_combout\ = \rx_frame[19][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[19][7]~q\,
	combout => \tx_frame[19][7]~feeder_combout\);

-- Location: FF_X10_Y5_N17
\tx_frame[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[19][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[19][7]~q\);

-- Location: FF_X11_Y3_N9
\rx_frame[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[23][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[23][7]~q\);

-- Location: FF_X10_Y5_N5
\tx_frame[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[23][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[23][7]~q\);

-- Location: FF_X11_Y7_N1
\rx_frame[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[18][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[18][7]~q\);

-- Location: FF_X10_Y5_N3
\tx_frame[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[18][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[18][7]~q\);

-- Location: LCCOMB_X16_Y2_N22
\rx_frame[22][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[22][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[22][7]~feeder_combout\);

-- Location: FF_X16_Y2_N23
\rx_frame[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[22][7]~feeder_combout\,
	ena => \rx_frame[22][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[22][7]~q\);

-- Location: LCCOMB_X11_Y2_N4
\tx_frame[22][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[22][7]~feeder_combout\ = \rx_frame[22][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[22][7]~q\,
	combout => \tx_frame[22][7]~feeder_combout\);

-- Location: FF_X11_Y2_N5
\tx_frame[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[22][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[22][7]~q\);

-- Location: LCCOMB_X10_Y5_N2
\out_data~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~249_combout\ = (tx_cnt(0) & (tx_cnt(2))) # (!tx_cnt(0) & ((tx_cnt(2) & ((\tx_frame[22][7]~q\))) # (!tx_cnt(2) & (\tx_frame[18][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => tx_cnt(2),
	datac => \tx_frame[18][7]~q\,
	datad => \tx_frame[22][7]~q\,
	combout => \out_data~249_combout\);

-- Location: LCCOMB_X10_Y5_N4
\out_data~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~250_combout\ = (tx_cnt(0) & ((\out_data~249_combout\ & ((\tx_frame[23][7]~q\))) # (!\out_data~249_combout\ & (\tx_frame[19][7]~q\)))) # (!tx_cnt(0) & (((\out_data~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[19][7]~q\,
	datac => \tx_frame[23][7]~q\,
	datad => \out_data~249_combout\,
	combout => \out_data~250_combout\);

-- Location: LCCOMB_X10_Y5_N22
\out_data~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~253_combout\ = (tx_cnt(3) & (((tx_cnt(1))))) # (!tx_cnt(3) & ((tx_cnt(1) & ((\out_data~250_combout\))) # (!tx_cnt(1) & (\out_data~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~252_combout\,
	datab => tx_cnt(3),
	datac => \out_data~250_combout\,
	datad => tx_cnt(1),
	combout => \out_data~253_combout\);

-- Location: FF_X12_Y5_N5
\tx_frame[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[31][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[27][7]~q\);

-- Location: FF_X11_Y5_N21
\tx_frame[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[30][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[26][7]~q\);

-- Location: LCCOMB_X11_Y5_N20
\out_data~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~254_combout\ = (tx_cnt(2) & (((tx_cnt(0))))) # (!tx_cnt(2) & ((tx_cnt(0) & (\tx_frame[27][7]~q\)) # (!tx_cnt(0) & ((\tx_frame[26][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \tx_frame[27][7]~q\,
	datac => \tx_frame[26][7]~q\,
	datad => tx_cnt(0),
	combout => \out_data~254_combout\);

-- Location: LCCOMB_X11_Y5_N30
\rx_frame[27][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[27][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[27][7]~feeder_combout\);

-- Location: FF_X11_Y5_N31
\rx_frame[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[27][7]~feeder_combout\,
	ena => \rx_frame[27][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[27][7]~q\);

-- Location: FF_X11_Y5_N27
\tx_frame[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[27][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[31][7]~q\);

-- Location: LCCOMB_X11_Y4_N0
\rx_frame[26][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[26][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[26][7]~feeder_combout\);

-- Location: FF_X11_Y4_N1
\rx_frame[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[26][7]~feeder_combout\,
	ena => \rx_frame[26][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[26][7]~q\);

-- Location: LCCOMB_X11_Y5_N24
\tx_frame[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[30][7]~feeder_combout\ = \rx_frame[26][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[26][7]~q\,
	combout => \tx_frame[30][7]~feeder_combout\);

-- Location: FF_X11_Y5_N25
\tx_frame[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[30][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[30][7]~q\);

-- Location: LCCOMB_X11_Y5_N26
\out_data~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~255_combout\ = (tx_cnt(2) & ((\out_data~254_combout\ & (\tx_frame[31][7]~q\)) # (!\out_data~254_combout\ & ((\tx_frame[30][7]~q\))))) # (!tx_cnt(2) & (\out_data~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(2),
	datab => \out_data~254_combout\,
	datac => \tx_frame[31][7]~q\,
	datad => \tx_frame[30][7]~q\,
	combout => \out_data~255_combout\);

-- Location: LCCOMB_X12_Y3_N4
\rx_frame[25][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[25][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[25][7]~feeder_combout\);

-- Location: FF_X12_Y3_N5
\rx_frame[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[25][7]~feeder_combout\,
	ena => \rx_frame[25][0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[25][7]~q\);

-- Location: FF_X13_Y3_N9
\tx_frame[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[25][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[25][7]~q\);

-- Location: LCCOMB_X14_Y4_N4
\rx_frame[24][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[24][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[24][7]~feeder_combout\);

-- Location: FF_X14_Y4_N5
\rx_frame[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[24][7]~feeder_combout\,
	ena => \rx_frame[24][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[24][7]~q\);

-- Location: FF_X14_Y3_N7
\tx_frame[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[24][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[24][7]~q\);

-- Location: LCCOMB_X14_Y3_N6
\out_data~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~247_combout\ = (tx_cnt(0) & ((\tx_frame[25][7]~q\) # ((tx_cnt(2))))) # (!tx_cnt(0) & (((\tx_frame[24][7]~q\ & !tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[25][7]~q\,
	datab => tx_cnt(0),
	datac => \tx_frame[24][7]~q\,
	datad => tx_cnt(2),
	combout => \out_data~247_combout\);

-- Location: LCCOMB_X14_Y3_N0
\tx_frame[28][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[28][7]~feeder_combout\ = \rx_frame[32][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[32][7]~q\,
	combout => \tx_frame[28][7]~feeder_combout\);

-- Location: FF_X14_Y3_N1
\tx_frame[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[28][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[28][7]~q\);

-- Location: FF_X14_Y3_N5
\tx_frame[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[33][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[29][7]~q\);

-- Location: LCCOMB_X14_Y3_N4
\out_data~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~248_combout\ = (\out_data~247_combout\ & (((\tx_frame[29][7]~q\) # (!tx_cnt(2))))) # (!\out_data~247_combout\ & (\tx_frame[28][7]~q\ & ((tx_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~247_combout\,
	datab => \tx_frame[28][7]~q\,
	datac => \tx_frame[29][7]~q\,
	datad => tx_cnt(2),
	combout => \out_data~248_combout\);

-- Location: LCCOMB_X10_Y5_N8
\out_data~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~256_combout\ = (\out_data~253_combout\ & ((\out_data~255_combout\) # ((!tx_cnt(3))))) # (!\out_data~253_combout\ & (((tx_cnt(3) & \out_data~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~253_combout\,
	datab => \out_data~255_combout\,
	datac => tx_cnt(3),
	datad => \out_data~248_combout\,
	combout => \out_data~256_combout\);

-- Location: LCCOMB_X18_Y5_N12
\rx_frame[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[10][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[10][7]~feeder_combout\);

-- Location: FF_X18_Y5_N13
\rx_frame[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[10][7]~feeder_combout\,
	ena => \rx_frame[10][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[10][7]~q\);

-- Location: FF_X18_Y9_N13
\tx_frame[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[10][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[4][7]~q\);

-- Location: LCCOMB_X17_Y9_N12
\rx_frame[12][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[12][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[12][7]~feeder_combout\);

-- Location: FF_X17_Y9_N13
\rx_frame[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[12][7]~feeder_combout\,
	ena => \rx_frame[12][0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[12][7]~q\);

-- Location: LCCOMB_X18_Y9_N2
\tx_frame[12][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[12][7]~feeder_combout\ = \rx_frame[12][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[12][7]~q\,
	combout => \tx_frame[12][7]~feeder_combout\);

-- Location: FF_X18_Y9_N3
\tx_frame[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[12][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[12][7]~q\);

-- Location: LCCOMB_X18_Y9_N12
\out_data~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~259_combout\ = (tx_cnt(3) & ((tx_cnt(1)) # ((\tx_frame[12][7]~q\)))) # (!tx_cnt(3) & (!tx_cnt(1) & (\tx_frame[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => tx_cnt(1),
	datac => \tx_frame[4][7]~q\,
	datad => \tx_frame[12][7]~q\,
	combout => \out_data~259_combout\);

-- Location: LCCOMB_X21_Y7_N14
\rx_frame[14][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[14][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[14][7]~feeder_combout\);

-- Location: FF_X21_Y7_N15
\rx_frame[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[14][7]~feeder_combout\,
	ena => \rx_frame[14][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[14][7]~q\);

-- Location: FF_X18_Y9_N11
\tx_frame[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[14][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[14][7]~q\);

-- Location: LCCOMB_X22_Y6_N24
\tx_frame[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[6][7]~feeder_combout\ = \rx_frame[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[0][7]~q\,
	combout => \tx_frame[6][7]~feeder_combout\);

-- Location: FF_X22_Y6_N25
\tx_frame[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[6][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[6][7]~q\);

-- Location: LCCOMB_X18_Y9_N10
\out_data~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~260_combout\ = (\out_data~259_combout\ & (((\tx_frame[14][7]~q\)) # (!tx_cnt(1)))) # (!\out_data~259_combout\ & (tx_cnt(1) & ((\tx_frame[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~259_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[14][7]~q\,
	datad => \tx_frame[6][7]~q\,
	combout => \out_data~260_combout\);

-- Location: LCCOMB_X14_Y8_N12
\tx_frame[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[8][7]~feeder_combout\ = \rx_frame[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[2][7]~q\,
	combout => \tx_frame[8][7]~feeder_combout\);

-- Location: FF_X14_Y8_N13
\tx_frame[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[8][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[8][7]~q\);

-- Location: FF_X14_Y8_N1
\tx_frame[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[4][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[10][7]~q\);

-- Location: FF_X14_Y7_N23
\rx_frame[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[6][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[6][7]~q\);

-- Location: FF_X14_Y8_N25
\tx_frame[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[6][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[0][7]~q\);

-- Location: FF_X17_Y8_N17
\rx_frame[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[8][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[8][7]~q\);

-- Location: LCCOMB_X14_Y8_N10
\tx_frame[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[2][7]~feeder_combout\ = \rx_frame[8][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[8][7]~q\,
	combout => \tx_frame[2][7]~feeder_combout\);

-- Location: FF_X14_Y8_N11
\tx_frame[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[2][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[2][7]~q\);

-- Location: LCCOMB_X14_Y8_N24
\out_data~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~261_combout\ = (tx_cnt(1) & ((tx_cnt(3)) # ((\tx_frame[2][7]~q\)))) # (!tx_cnt(1) & (!tx_cnt(3) & (\tx_frame[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(3),
	datac => \tx_frame[0][7]~q\,
	datad => \tx_frame[2][7]~q\,
	combout => \out_data~261_combout\);

-- Location: LCCOMB_X14_Y8_N0
\out_data~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~262_combout\ = (tx_cnt(3) & ((\out_data~261_combout\ & ((\tx_frame[10][7]~q\))) # (!\out_data~261_combout\ & (\tx_frame[8][7]~q\)))) # (!tx_cnt(3) & (((\out_data~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[8][7]~q\,
	datab => tx_cnt(3),
	datac => \tx_frame[10][7]~q\,
	datad => \out_data~261_combout\,
	combout => \out_data~262_combout\);

-- Location: LCCOMB_X18_Y9_N16
\out_data~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~263_combout\ = (tx_cnt(2) & ((\out_data~260_combout\) # ((tx_cnt(0))))) # (!tx_cnt(2) & (((\out_data~262_combout\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~260_combout\,
	datab => \out_data~262_combout\,
	datac => tx_cnt(2),
	datad => tx_cnt(0),
	combout => \out_data~263_combout\);

-- Location: FF_X23_Y7_N17
\rx_frame[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[9][0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[9][7]~q\);

-- Location: LCCOMB_X23_Y7_N28
\tx_frame[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[3][7]~feeder_combout\ = \rx_frame[9][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[9][7]~q\,
	combout => \tx_frame[3][7]~feeder_combout\);

-- Location: FF_X23_Y7_N29
\tx_frame[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[3][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[3][7]~q\);

-- Location: FF_X17_Y7_N27
\rx_frame[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[7][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[7][7]~q\);

-- Location: FF_X17_Y7_N11
\tx_frame[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[7][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[1][7]~q\);

-- Location: LCCOMB_X17_Y7_N10
\out_data~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~257_combout\ = (tx_cnt(1) & ((\tx_frame[3][7]~q\) # ((tx_cnt(3))))) # (!tx_cnt(1) & (((\tx_frame[1][7]~q\ & !tx_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[3][7]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[1][7]~q\,
	datad => tx_cnt(3),
	combout => \out_data~257_combout\);

-- Location: FF_X17_Y9_N1
\tx_frame[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[5][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[11][7]~q\);

-- Location: LCCOMB_X18_Y6_N16
\tx_frame[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[9][7]~feeder_combout\ = \rx_frame[3][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[3][7]~q\,
	combout => \tx_frame[9][7]~feeder_combout\);

-- Location: FF_X18_Y6_N17
\tx_frame[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[9][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[9][7]~q\);

-- Location: LCCOMB_X17_Y9_N0
\out_data~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~258_combout\ = (\out_data~257_combout\ & (((\tx_frame[11][7]~q\)) # (!tx_cnt(3)))) # (!\out_data~257_combout\ & (tx_cnt(3) & ((\tx_frame[9][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~257_combout\,
	datab => tx_cnt(3),
	datac => \tx_frame[11][7]~q\,
	datad => \tx_frame[9][7]~q\,
	combout => \out_data~258_combout\);

-- Location: LCCOMB_X19_Y8_N28
\rx_frame[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[13][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[13][7]~feeder_combout\);

-- Location: FF_X19_Y8_N29
\rx_frame[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[13][7]~feeder_combout\,
	ena => \rx_frame[13][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[13][7]~q\);

-- Location: LCCOMB_X19_Y7_N20
\tx_frame[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[13][7]~feeder_combout\ = \rx_frame[13][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[13][7]~q\,
	combout => \tx_frame[13][7]~feeder_combout\);

-- Location: FF_X19_Y7_N21
\tx_frame[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[13][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[13][7]~q\);

-- Location: LCCOMB_X19_Y7_N4
\rx_frame[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[11][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[11][7]~feeder_combout\);

-- Location: FF_X19_Y7_N5
\rx_frame[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[11][7]~feeder_combout\,
	ena => \rx_frame[11][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[11][7]~q\);

-- Location: FF_X19_Y7_N7
\tx_frame[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[11][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[5][7]~q\);

-- Location: LCCOMB_X19_Y7_N6
\out_data~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~264_combout\ = (tx_cnt(3) & ((\tx_frame[13][7]~q\) # ((tx_cnt(1))))) # (!tx_cnt(3) & (((\tx_frame[5][7]~q\ & !tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(3),
	datab => \tx_frame[13][7]~q\,
	datac => \tx_frame[5][7]~q\,
	datad => tx_cnt(1),
	combout => \out_data~264_combout\);

-- Location: FF_X22_Y7_N31
\rx_frame[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[15][0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[15][7]~q\);

-- Location: FF_X21_Y7_N27
\tx_frame[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[15][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[15][7]~q\);

-- Location: FF_X22_Y3_N7
\tx_frame[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[1][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[7][7]~q\);

-- Location: LCCOMB_X21_Y7_N26
\out_data~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~265_combout\ = (\out_data~264_combout\ & (((\tx_frame[15][7]~q\)) # (!tx_cnt(1)))) # (!\out_data~264_combout\ & (tx_cnt(1) & ((\tx_frame[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~264_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[15][7]~q\,
	datad => \tx_frame[7][7]~q\,
	combout => \out_data~265_combout\);

-- Location: LCCOMB_X18_Y9_N22
\out_data~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~266_combout\ = (tx_cnt(0) & ((\out_data~263_combout\ & ((\out_data~265_combout\))) # (!\out_data~263_combout\ & (\out_data~258_combout\)))) # (!tx_cnt(0) & (\out_data~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \out_data~263_combout\,
	datac => \out_data~258_combout\,
	datad => \out_data~265_combout\,
	combout => \out_data~266_combout\);

-- Location: LCCOMB_X19_Y5_N12
\out_data~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~267_combout\ = (\out_data~10_combout\ & ((tx_cnt(5)) # ((\out_data~256_combout\)))) # (!\out_data~10_combout\ & (!tx_cnt(5) & ((\out_data~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~10_combout\,
	datab => tx_cnt(5),
	datac => \out_data~256_combout\,
	datad => \out_data~266_combout\,
	combout => \out_data~267_combout\);

-- Location: LCCOMB_X13_Y6_N30
\rx_frame[49][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[49][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[49][7]~feeder_combout\);

-- Location: FF_X13_Y6_N31
\rx_frame[49][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[49][7]~feeder_combout\,
	ena => \rx_frame[49][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[49][7]~q\);

-- Location: FF_X19_Y5_N19
\tx_frame[49][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[49][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[49][7]~q\);

-- Location: FF_X13_Y8_N27
\rx_frame[41][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[41][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[41][7]~q\);

-- Location: LCCOMB_X16_Y8_N8
\tx_frame[41][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[41][7]~feeder_combout\ = \rx_frame[41][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_frame[41][7]~q\,
	combout => \tx_frame[41][7]~feeder_combout\);

-- Location: FF_X16_Y8_N9
\tx_frame[41][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[41][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[41][7]~q\);

-- Location: LCCOMB_X19_Y6_N24
\rx_frame[40][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[40][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[40][7]~feeder_combout\);

-- Location: FF_X19_Y6_N25
\rx_frame[40][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[40][7]~feeder_combout\,
	ena => \rx_frame[40][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[40][7]~q\);

-- Location: FF_X19_Y5_N11
\tx_frame[40][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[40][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[40][7]~q\);

-- Location: LCCOMB_X19_Y5_N10
\out_data~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~237_combout\ = (tx_cnt(0) & ((\tx_frame[41][7]~q\) # ((tx_cnt(1))))) # (!tx_cnt(0) & (((\tx_frame[40][7]~q\ & !tx_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[41][7]~q\,
	datab => tx_cnt(0),
	datac => \tx_frame[40][7]~q\,
	datad => tx_cnt(1),
	combout => \out_data~237_combout\);

-- Location: LCCOMB_X21_Y6_N30
\rx_frame[43][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[43][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[43][7]~feeder_combout\);

-- Location: FF_X21_Y6_N31
\rx_frame[43][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[43][7]~feeder_combout\,
	ena => \rx_frame[43][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[43][7]~q\);

-- Location: FF_X19_Y5_N29
\tx_frame[43][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[43][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[43][7]~q\);

-- Location: LCCOMB_X19_Y5_N24
\rx_frame[42][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[42][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[42][7]~feeder_combout\);

-- Location: FF_X19_Y5_N25
\rx_frame[42][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[42][7]~feeder_combout\,
	ena => \rx_frame[42][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[42][7]~q\);

-- Location: LCCOMB_X19_Y5_N16
\tx_frame[42][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[42][7]~feeder_combout\ = \rx_frame[42][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[42][7]~q\,
	combout => \tx_frame[42][7]~feeder_combout\);

-- Location: FF_X19_Y5_N17
\tx_frame[42][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[42][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[42][7]~q\);

-- Location: LCCOMB_X19_Y5_N28
\out_data~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~238_combout\ = (\out_data~237_combout\ & (((\tx_frame[43][7]~q\)) # (!tx_cnt(1)))) # (!\out_data~237_combout\ & (tx_cnt(1) & ((\tx_frame[42][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~237_combout\,
	datab => tx_cnt(1),
	datac => \tx_frame[43][7]~q\,
	datad => \tx_frame[42][7]~q\,
	combout => \out_data~238_combout\);

-- Location: FF_X19_Y4_N31
\rx_frame[39][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[39][0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[39][7]~q\);

-- Location: FF_X19_Y4_N5
\tx_frame[39][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[39][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[39][7]~q\);

-- Location: FF_X22_Y5_N9
\rx_frame[38][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[38][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[38][7]~q\);

-- Location: FF_X22_Y5_N17
\tx_frame[38][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[38][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[38][7]~q\);

-- Location: LCCOMB_X22_Y4_N20
\rx_frame[36][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[36][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[36][7]~feeder_combout\);

-- Location: FF_X22_Y4_N21
\rx_frame[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[36][7]~feeder_combout\,
	ena => \rx_frame[36][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[36][7]~q\);

-- Location: FF_X22_Y4_N31
\tx_frame[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[36][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[36][7]~q\);

-- Location: LCCOMB_X22_Y4_N30
\out_data~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~239_combout\ = (tx_cnt(1) & ((\tx_frame[38][7]~q\) # ((tx_cnt(0))))) # (!tx_cnt(1) & (((\tx_frame[36][7]~q\ & !tx_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_frame[38][7]~q\,
	datab => tx_cnt(1),
	datac => \tx_frame[36][7]~q\,
	datad => tx_cnt(0),
	combout => \out_data~239_combout\);

-- Location: FF_X21_Y4_N31
\rx_frame[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[37][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[37][7]~q\);

-- Location: FF_X21_Y3_N21
\tx_frame[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[37][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[37][7]~q\);

-- Location: LCCOMB_X19_Y3_N6
\out_data~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~240_combout\ = (tx_cnt(0) & ((\out_data~239_combout\ & (\tx_frame[39][7]~q\)) # (!\out_data~239_combout\ & ((\tx_frame[37][7]~q\))))) # (!tx_cnt(0) & (((\out_data~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(0),
	datab => \tx_frame[39][7]~q\,
	datac => \out_data~239_combout\,
	datad => \tx_frame[37][7]~q\,
	combout => \out_data~240_combout\);

-- Location: LCCOMB_X18_Y5_N14
\rx_frame[35][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[35][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[35][7]~feeder_combout\);

-- Location: FF_X18_Y5_N15
\rx_frame[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[35][7]~feeder_combout\,
	ena => \rx_frame[35][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[35][7]~q\);

-- Location: FF_X19_Y4_N27
\tx_frame[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[35][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[35][7]~q\);

-- Location: LCCOMB_X19_Y4_N26
\out_data~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~241_combout\ = (\out_data~19_combout\ & ((\out_data~240_combout\) # ((!\out_data~18_combout\)))) # (!\out_data~19_combout\ & (((\tx_frame[35][7]~q\ & \out_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~240_combout\,
	datab => \out_data~19_combout\,
	datac => \tx_frame[35][7]~q\,
	datad => \out_data~18_combout\,
	combout => \out_data~241_combout\);

-- Location: FF_X14_Y2_N17
\rx_frame[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[29][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[29][7]~q\);

-- Location: FF_X19_Y4_N1
\tx_frame[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[29][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[33][7]~q\);

-- Location: LCCOMB_X14_Y4_N22
\rx_frame[28][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[28][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[28][7]~feeder_combout\);

-- Location: FF_X14_Y4_N23
\rx_frame[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[28][7]~feeder_combout\,
	ena => \rx_frame[28][0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[28][7]~q\);

-- Location: LCCOMB_X19_Y4_N16
\tx_frame[32][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[32][7]~feeder_combout\ = \rx_frame[28][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[28][7]~q\,
	combout => \tx_frame[32][7]~feeder_combout\);

-- Location: FF_X19_Y4_N17
\tx_frame[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[32][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[32][7]~q\);

-- Location: LCCOMB_X19_Y4_N0
\out_data~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~242_combout\ = (\out_data~241_combout\ & (((\tx_frame[33][7]~q\)) # (!\out_data~15_combout\))) # (!\out_data~241_combout\ & (\out_data~15_combout\ & ((\tx_frame[32][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~241_combout\,
	datab => \out_data~15_combout\,
	datac => \tx_frame[33][7]~q\,
	datad => \tx_frame[32][7]~q\,
	combout => \out_data~242_combout\);

-- Location: LCCOMB_X19_Y8_N18
\rx_frame[48][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[48][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[48][7]~feeder_combout\);

-- Location: FF_X19_Y8_N19
\rx_frame[48][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[48][7]~feeder_combout\,
	ena => \rx_frame[48][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[48][7]~q\);

-- Location: FF_X19_Y5_N15
\tx_frame[48][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[48][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[48][7]~q\);

-- Location: LCCOMB_X19_Y5_N14
\out_data~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~243_combout\ = (\out_data~11_combout\ & (((\tx_frame[48][7]~q\) # (\out_data~14_combout\)))) # (!\out_data~11_combout\ & (\out_data~242_combout\ & ((!\out_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~11_combout\,
	datab => \out_data~242_combout\,
	datac => \tx_frame[48][7]~q\,
	datad => \out_data~14_combout\,
	combout => \out_data~243_combout\);

-- Location: FF_X13_Y8_N5
\rx_frame[44][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[44][0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[44][7]~q\);

-- Location: FF_X16_Y5_N25
\tx_frame[44][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[44][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[44][7]~q\);

-- Location: LCCOMB_X16_Y8_N0
\rx_frame[46][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_frame[46][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_frame[46][7]~feeder_combout\);

-- Location: FF_X16_Y8_N1
\rx_frame[46][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_frame[46][7]~feeder_combout\,
	ena => \rx_frame[46][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[46][7]~q\);

-- Location: LCCOMB_X19_Y5_N22
\tx_frame[46][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[46][7]~feeder_combout\ = \rx_frame[46][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[46][7]~q\,
	combout => \tx_frame[46][7]~feeder_combout\);

-- Location: FF_X19_Y5_N23
\tx_frame[46][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[46][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[46][7]~q\);

-- Location: LCCOMB_X16_Y5_N24
\out_data~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~244_combout\ = (tx_cnt(1) & ((tx_cnt(0)) # ((\tx_frame[46][7]~q\)))) # (!tx_cnt(1) & (!tx_cnt(0) & (\tx_frame[44][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(1),
	datab => tx_cnt(0),
	datac => \tx_frame[44][7]~q\,
	datad => \tx_frame[46][7]~q\,
	combout => \out_data~244_combout\);

-- Location: FF_X16_Y5_N23
\rx_frame[47][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[47][0]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[47][7]~q\);

-- Location: FF_X19_Y5_N21
\tx_frame[47][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_frame[47][7]~q\,
	sload => VCC,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[47][7]~q\);

-- Location: FF_X21_Y8_N3
\rx_frame[45][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \rx_frame[45][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_frame[45][7]~q\);

-- Location: LCCOMB_X19_Y5_N6
\tx_frame[45][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_frame[45][7]~feeder_combout\ = \rx_frame[45][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_frame[45][7]~q\,
	combout => \tx_frame[45][7]~feeder_combout\);

-- Location: FF_X19_Y5_N7
\tx_frame[45][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_frame[45][7]~feeder_combout\,
	ena => \tx_frame[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_frame[45][7]~q\);

-- Location: LCCOMB_X19_Y5_N20
\out_data~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~245_combout\ = (\out_data~244_combout\ & (((\tx_frame[47][7]~q\)) # (!tx_cnt(0)))) # (!\out_data~244_combout\ & (tx_cnt(0) & ((\tx_frame[45][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~244_combout\,
	datab => tx_cnt(0),
	datac => \tx_frame[47][7]~q\,
	datad => \tx_frame[45][7]~q\,
	combout => \out_data~245_combout\);

-- Location: LCCOMB_X19_Y5_N2
\out_data~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~246_combout\ = (\out_data~14_combout\ & ((\out_data~243_combout\ & ((\out_data~245_combout\))) # (!\out_data~243_combout\ & (\out_data~238_combout\)))) # (!\out_data~14_combout\ & (((\out_data~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~14_combout\,
	datab => \out_data~238_combout\,
	datac => \out_data~243_combout\,
	datad => \out_data~245_combout\,
	combout => \out_data~246_combout\);

-- Location: LCCOMB_X19_Y5_N18
\out_data~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~268_combout\ = (\out_data~267_combout\ & (((\tx_frame[49][7]~q\)) # (!tx_cnt(5)))) # (!\out_data~267_combout\ & (tx_cnt(5) & ((\out_data~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data~267_combout\,
	datab => tx_cnt(5),
	datac => \tx_frame[49][7]~q\,
	datad => \out_data~246_combout\,
	combout => \out_data~268_combout\);

-- Location: LCCOMB_X19_Y5_N30
\out_data~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~269_combout\ = (\state.SEND~q\ & \out_data~268_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => \out_data~268_combout\,
	combout => \out_data~269_combout\);

-- Location: LCCOMB_X19_Y3_N28
\out_sop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_sop~1_combout\ = (!tx_cnt(5) & (!tx_cnt(4) & (\out_sop~0_combout\ & !tx_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_cnt(5),
	datab => tx_cnt(4),
	datac => \out_sop~0_combout\,
	datad => tx_cnt(0),
	combout => \out_sop~1_combout\);

ww_in_ready <= \in_ready~output_o\;

ww_out_data(0) <= \out_data[0]~output_o\;

ww_out_data(1) <= \out_data[1]~output_o\;

ww_out_data(2) <= \out_data[2]~output_o\;

ww_out_data(3) <= \out_data[3]~output_o\;

ww_out_data(4) <= \out_data[4]~output_o\;

ww_out_data(5) <= \out_data[5]~output_o\;

ww_out_data(6) <= \out_data[6]~output_o\;

ww_out_data(7) <= \out_data[7]~output_o\;

ww_out_valid <= \out_valid~output_o\;

ww_out_sop <= \out_sop~output_o\;

ww_out_eop <= \out_eop~output_o\;
END structure;


