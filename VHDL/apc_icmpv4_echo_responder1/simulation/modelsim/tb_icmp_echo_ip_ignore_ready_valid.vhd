LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_icmp_echo_ip_ignore_ready_valid IS
END ENTITY;

ARCHITECTURE behavior OF tb_icmp_echo_ip_ignore_ready_valid IS

  COMPONENT icmp_echo_responder
    GENERIC (
      IP_ADDRESS  : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"C0A80164";
      MAC_ADDRESS : STD_LOGIC_VECTOR(47 DOWNTO 0) := x"010203040506"
    );
    PORT (
      clock     : IN  STD_LOGIC;
      reset     : IN  STD_LOGIC;
      in_data   : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
      in_valid  : IN  STD_LOGIC;
      in_sop    : IN  STD_LOGIC;
      in_eop    : IN  STD_LOGIC;
      in_ready  : OUT STD_LOGIC;
      out_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_valid : OUT STD_LOGIC;
      out_sop   : OUT STD_LOGIC;
      out_eop   : OUT STD_LOGIC;
      out_ready : IN  STD_LOGIC
    );
  END COMPONENT;

  
  TYPE tb_state_t IS (
    IDLE,
    ETHERNET,
    IP,
    IGNORE,
    INPUT_STALL
  );
  SIGNAL tb_state : tb_state_t := IDLE;

  SIGNAL clock     : STD_LOGIC := '0';
  SIGNAL reset     : STD_LOGIC := '0';
  SIGNAL in_data   : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
  SIGNAL in_valid  : STD_LOGIC := '0';
  SIGNAL in_sop    : STD_LOGIC := '0';
  SIGNAL in_eop    : STD_LOGIC := '0';
  SIGNAL in_ready  : STD_LOGIC;
  SIGNAL out_data  : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL out_valid : STD_LOGIC;
  SIGNAL out_sop   : STD_LOGIC;
  SIGNAL out_eop   : STD_LOGIC;
  SIGNAL out_ready : STD_LOGIC := '1';

  CONSTANT clk_period : TIME := 10 ns;

  TYPE packet_t IS ARRAY (0 TO 49) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

  clock <= NOT clock AFTER clk_period/2;

  uut : icmp_echo_responder
    PORT MAP (
      clock     => clock,
      reset     => reset,
      in_data   => in_data,
      in_valid  => in_valid,
      in_sop    => in_sop,
      in_eop    => in_eop,
      in_ready  => in_ready,
      out_data  => out_data,
      out_valid => out_valid,
      out_sop   => out_sop,
      out_eop   => out_eop,
      out_ready => out_ready
    );

  stim_proc : PROCESS
    VARIABLE pkt : packet_t := (

      -- Ethernet header (MAC OK)
      x"01",x"02",x"03",x"04",x"05",x"06",
      x"B1",x"B2",x"B3",x"B4",x"B5",x"B6",
      x"08",x"00",

      -- IPv4 header (DEST IP POGRE?NA)
      x"D1",x"D2",x"D3",x"D4",
      x"D5",x"D6",x"D7",x"D8",
      x"D9",x"DA",x"DB",x"DC",
      x"DD",x"DE",x"DF",x"E0",
      x"E1",x"E2",x"E3",x"E4",

      -- ICMP
      x"E5",x"E6",x"E7",x"E8",
      x"E9",x"EA",x"EB",x"EC",

      -- Payload
      x"ED",x"EE",x"EF",x"F0",
      x"F1",x"F2",x"F3",x"F4"
    );

    VARIABLE idx : INTEGER := 0;

  BEGIN

    
    reset <= '1';
    tb_state <= IDLE;
    WAIT FOR 20 ns;
    reset <= '0';
    WAIT UNTIL rising_edge(clock);

 
    in_valid <= '1';
    idx := 0;

    WHILE idx <= 49 LOOP

      in_data <= pkt(idx);

      IF idx = 0 THEN
        in_sop   <= '1';
        tb_state <= ETHERNET;
      ELSE
        in_sop <= '0';
      END IF;

      IF idx = 14 THEN
        tb_state <= IP;
      END IF;

      -- IP provjera zavrsena, IGNORE
      IF idx = 34 THEN
        tb_state <= IGNORE;
      END IF;

      --READY/VALID TEST:
      IF idx = 38 THEN
        tb_state <= INPUT_STALL;
        WAIT FOR 3*clk_period;
        tb_state <= IGNORE;
      END IF;

      IF idx = 49 THEN
        in_eop <= '1';
      ELSE
        in_eop <= '0';
      END IF;

      WAIT UNTIL rising_edge(clock);

      -- Handshake: 
      IF in_ready = '1' THEN
        idx := idx + 1;
      END IF;

    END LOOP;

    
    in_valid <= '0';
    in_sop   <= '0';
    in_eop   <= '0';
    in_data  <= (OTHERS => '0');
    tb_state <= IDLE;

    WAIT;
  END PROCESS;

END ARCHITECTURE;
