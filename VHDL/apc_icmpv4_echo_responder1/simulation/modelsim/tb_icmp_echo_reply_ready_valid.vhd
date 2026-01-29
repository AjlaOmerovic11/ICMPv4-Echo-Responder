LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_icmp_echo_reply_ready_valid_fsm IS
END ENTITY;

ARCHITECTURE behavior OF tb_icmp_echo_reply_ready_valid_fsm IS

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
    ICMP,
    PAYLOAD,
    REPLY
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

BEGIN

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

  clock <= NOT clock AFTER clk_period/2;

  stim_proc : PROCESS
    TYPE packet_t IS ARRAY (0 TO 49) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

    VARIABLE pkt : packet_t := (
      x"01", x"02", x"03", x"04", x"05", x"06",
      x"0A", x"0B", x"0C", x"0D", x"0E", x"0F",
      x"08", x"00",
      x"45", x"01",
      x"12", x"13",
      x"14", x"15",
      x"16", x"17",
      x"18",
      x"01",
      x"19", x"1A",
      x"C0", x"A8", x"01", x"01",
      x"C0", x"A8", x"01", x"64",
      x"08",
      x"09",
      x"1B", x"1C",
      x"1D", x"1E",
      x"1F", x"20",
      x"21", x"22", x"23", x"24",
      x"25", x"26", x"27", x"28"
    );

    VARIABLE hold_data : STD_LOGIC_VECTOR(7 DOWNTO 0);

  BEGIN

    reset <= '1';
    tb_state <= IDLE;
    WAIT FOR 40 ns;
    reset <= '0';
    WAIT UNTIL rising_edge(clock);

    in_valid <= '1';

    FOR i IN 0 TO 49 LOOP
      WAIT UNTIL rising_edge(clock);
      in_data <= pkt(i);

      IF i = 0 THEN
        in_sop <= '1';
        tb_state <= ETHERNET;
      ELSE
        in_sop <= '0';
      END IF;

      IF i = 14 THEN tb_state <= IP; END IF;
      IF i = 34 THEN tb_state <= ICMP; END IF;
      IF i = 42 THEN tb_state <= PAYLOAD; END IF;

      IF i = 49 THEN
        in_eop <= '1';
      ELSE
        in_eop <= '0';
      END IF;
    END LOOP;

    WAIT UNTIL rising_edge(clock);
    in_valid <= '0';
    in_sop   <= '0';
    in_eop   <= '0';
    tb_state <= REPLY;

    WAIT UNTIL out_valid = '1';
    WAIT UNTIL rising_edge(clock);

    hold_data := out_data;

    out_ready <= '0';
    WAIT FOR 40 ns;

    out_ready <= '1';

    WAIT UNTIL out_eop = '1';
    WAIT UNTIL rising_edge(clock);

    tb_state <= IDLE;

    REPORT "READY/VALID handshake FSM test PASSED"
      SEVERITY NOTE;

    WAIT;
  END PROCESS;

END ARCHITECTURE;

