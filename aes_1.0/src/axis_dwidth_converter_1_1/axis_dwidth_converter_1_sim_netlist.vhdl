-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Tue May 21 10:51:42 2019
-- Host        : alex-pc running 64-bit Ubuntu 18.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/alex/GitHub/zynq-ip-cores/aes_1.0/src/axis_dwidth_converter_1_1/axis_dwidth_converter_1_sim_netlist.vhdl
-- Design      : axis_dwidth_converter_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axisc_upsizer is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axisc_upsizer : entity is "axis_dwidth_converter_v1_1_14_axisc_upsizer";
end axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axisc_upsizer;

architecture STRUCTURE of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axisc_upsizer is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal acc_data : STD_LOGIC;
  signal \acc_data[127]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[1].acc_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[2].acc_data[95]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  attribute RTL_KEEP of p_0_in3_in : signal is "yes";
  signal p_1_in2_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_data_0 : STD_LOGIC;
  signal \r0_reg_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state1 : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:01000,SM_END:00100,SM_END_TO_ACTIVE:10000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:01000,SM_END:00100,SM_END_TO_ACTIVE:10000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:01000,SM_END:00100,SM_END_TO_ACTIVE:10000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:01000,SM_END:00100,SM_END_TO_ACTIVE:10000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:01000,SM_END:00100,SM_END_TO_ACTIVE:10000";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAABAEAFAAAB"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => m_axis_tready,
      I5 => s_axis_tvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_0_in3_in,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF020002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_state[4]_i_2_n_0\,
      I4 => state1,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[2]\,
      I1 => p_0_in3_in,
      I2 => p_1_in2_in,
      I3 => s_axis_tvalid,
      O => state1
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0AAEA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => p_0_in3_in,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008800C0"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => p_0_in3_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => p_0_in3_in,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001100100000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in3_in,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_0_in3_in,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\acc_data[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in3_in,
      I2 => aclken,
      O => \acc_data[127]_i_1_n_0\
    );
\acc_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => p_0_in3_in,
      O => acc_data
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(100),
      R => '0'
    );
\acc_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(101),
      R => '0'
    );
\acc_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(102),
      R => '0'
    );
\acc_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(103),
      R => '0'
    );
\acc_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(104),
      R => '0'
    );
\acc_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(105),
      R => '0'
    );
\acc_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(106),
      R => '0'
    );
\acc_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(107),
      R => '0'
    );
\acc_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(108),
      R => '0'
    );
\acc_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(109),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\acc_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(110),
      R => '0'
    );
\acc_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(111),
      R => '0'
    );
\acc_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m_axis_tdata(112),
      R => '0'
    );
\acc_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m_axis_tdata(113),
      R => '0'
    );
\acc_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m_axis_tdata(114),
      R => '0'
    );
\acc_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m_axis_tdata(115),
      R => '0'
    );
\acc_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m_axis_tdata(116),
      R => '0'
    );
\acc_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => m_axis_tdata(117),
      R => '0'
    );
\acc_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m_axis_tdata(118),
      R => '0'
    );
\acc_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(119),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\acc_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m_axis_tdata(120),
      R => '0'
    );
\acc_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m_axis_tdata(121),
      R => '0'
    );
\acc_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => m_axis_tdata(122),
      R => '0'
    );
\acc_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => m_axis_tdata(123),
      R => '0'
    );
\acc_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => m_axis_tdata(124),
      R => '0'
    );
\acc_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => m_axis_tdata(125),
      R => '0'
    );
\acc_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => m_axis_tdata(126),
      R => '0'
    );
\acc_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => m_axis_tdata(127),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\acc_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(96),
      R => '0'
    );
\acc_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(97),
      R => '0'
    );
\acc_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(98),
      R => '0'
    );
\acc_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[127]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(99),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\gen_data_accumulator[1].acc_data[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[1]\,
      I2 => p_0_in3_in,
      O => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(32),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(33),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(34),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(35),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(36),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(37),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(38),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(39),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(40),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(41),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(42),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(43),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(44),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(45),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(46),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(47),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(48),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(49),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(50),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(51),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(52),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(53),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(54),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(55),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(56),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(57),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(58),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(59),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(60),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(61),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(62),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[63]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(63),
      R => '0'
    );
\gen_data_accumulator[2].acc_data[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[2]\,
      I2 => p_0_in3_in,
      O => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(64),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(65),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(66),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(67),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(68),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(69),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(70),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(71),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(72),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(73),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(74),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(75),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(76),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(77),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(78),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(79),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(80),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(81),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(82),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(83),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(84),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(85),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(86),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(87),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(88),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(89),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(90),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(91),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(92),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(93),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(94),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[95]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(95),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => m_axis_tvalid
    );
\r0_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222220"
    )
        port map (
      I0 => aclken,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => p_0_in3_in,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => r0_data_0
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
\r0_reg_sel[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => aclken,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => m_axis_tready,
      I4 => SR(0),
      O => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aclken,
      I1 => p_0_in3_in,
      O => \r0_reg_sel[3]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => '0',
      Q => \r0_reg_sel_reg_n_0_[0]\,
      S => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[0]\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[1]\,
      Q => \r0_reg_sel_reg_n_0_[2]\,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[2]\,
      Q => p_1_in2_in,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => p_0_in3_in,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => s_axis_tready
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \state_reg_n_0_[0]\,
      I2 => m_axis_tready,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF80808080"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3_n_0\,
      I1 => s_axis_tvalid,
      I2 => \state_reg_n_0_[0]\,
      I3 => m_axis_tready,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440F000044004400"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => m_axis_tready,
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => s_axis_tvalid,
      I5 => \state_reg_n_0_[0]\,
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => state(0),
      Q => \state_reg_n_0_[0]\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => state(1),
      Q => \state_reg_n_0_[1]\,
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 128;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 32;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_14_axis_dwidth_converter";
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 4;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 128;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 16;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 16;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter : entity is 4;
end axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter;

architecture STRUCTURE of axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(15) <= \<const1>\;
  m_axis_tkeep(14) <= \<const1>\;
  m_axis_tkeep(13) <= \<const1>\;
  m_axis_tkeep(12) <= \<const1>\;
  m_axis_tkeep(11) <= \<const1>\;
  m_axis_tkeep(10) <= \<const1>\;
  m_axis_tkeep(9) <= \<const1>\;
  m_axis_tkeep(8) <= \<const1>\;
  m_axis_tkeep(7) <= \<const1>\;
  m_axis_tkeep(6) <= \<const1>\;
  m_axis_tkeep(5) <= \<const1>\;
  m_axis_tkeep(4) <= \<const1>\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axisc_upsizer
     port map (
      SR(0) => areset_r,
      aclk => aclk,
      aclken => aclken,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axis_dwidth_converter_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_dwidth_converter_1 : entity is "axis_dwidth_converter_1,axis_dwidth_converter_v1_1_14_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_dwidth_converter_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_dwidth_converter_1 : entity is "axis_dwidth_converter_v1_1_14_axis_dwidth_converter,Vivado 2017.4";
end axis_dwidth_converter_1;

architecture STRUCTURE of axis_dwidth_converter_1 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 128;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of inst : label is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of inst : label is 4;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of inst : label is 128;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of inst : label is 16;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of inst : label is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of inst : label is 16;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of inst : label is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of inst : label is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
begin
inst: entity work.axis_dwidth_converter_1_axis_dwidth_converter_v1_1_14_axis_dwidth_converter
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(15 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(15 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(15 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(15 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(3 downto 0) => B"1111",
      s_axis_tlast => '1',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
