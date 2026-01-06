library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_icmp_echo_mac_ignore is
end entity;

architecture behavior of tb_icmp_echo_mac_ignore is

  
  component icmp_echo_responder
    generic (
      IP_ADDRESS  : std_logic_vector(31 downto 0) := x"C0A80164";
      MAC_ADDRESS : std_logic_vector(47 downto 0) := x"010203040506"
    );
    port (
      clock     : in  std_logic;
      reset     : in  std_logic;
      in_data   : in  std_logic_vector(7 downto 0);
      in_valid  : in  std_logic;
      in_sop    : in  std_logic;
      in_eop    : in  std_logic;
      in_ready  : out std_logic;
      out_data  : out std_logic_vector(7 downto 0);
      out_valid : out std_logic;
      out_sop   : out std_logic;
      out_eop   : out std_logic;
      out_ready : in  std_logic
    );
  end component;

  type tb_state_t is (IDLE, ETHERNET, IGNORE);
  signal s_state : tb_state_t := IDLE;

 
  signal clock     : std_logic := '0';
  signal reset     : std_logic := '0';
  signal in_data   : std_logic_vector(7 downto 0) := (others => '0');
  signal in_valid  : std_logic := '0';
  signal in_sop    : std_logic := '0';
  signal in_eop    : std_logic := '0';
  signal in_ready  : std_logic;
  signal out_data  : std_logic_vector(7 downto 0);
  signal out_valid : std_logic;
  signal out_sop   : std_logic;
  signal out_eop   : std_logic;
  signal out_ready : std_logic := '1';

  constant clk_period : time := 10 ns;

begin

 
  uut : icmp_echo_responder
    port map (
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

  
  clock <= not clock after clk_period/2;

  
  stim_proc : process
    type packet_t is array (0 to 49) of std_logic_vector(7 downto 0);

    
    variable frame : packet_t := (
      -- Ethernet header (D1  - D14)
      x"A1",x"A2",x"A3",x"A4",x"A5",x"A6",   -- DEST MAC POGRESNA
      x"B1",x"B2",x"B3",x"B4",x"B5",x"B6",   -- SRC MAC
      x"C1",x"C2",

      -- IPv4 header (D15- D34)
      x"D1",x"D2",x"D3",x"D4",
      x"D5",x"D6",x"D7",x"D8",
      x"D9",x"DA",x"DB",x"DC",
      x"DD",x"DE",x"DF",x"E0",
      x"E1",x"E2",x"E3",x"E4",

      -- ICMP header (D35 - D42)
      x"E5",x"E6",x"E7",x"E8",
      x"E9",x"EA",x"EB",x"EC",

      -- Payload (D43-D50)
      x"ED",x"EE",x"EF",x"F0",
      x"F1",x"F2",x"F3",x"F4"
    );

    variable idx : integer := 0;
  begin

    
    -- RESET
   
    reset <= '1';
    wait for 2*clk_period;
    reset <= '0';
    wait until rising_edge(clock);

    
    -- SEND FRAME
     in_valid <= '1';

    while idx <= 49 loop

      
      in_data <= frame(idx);

      if idx = 0 then
        in_sop  <= '1';
        s_state <= ETHERNET;
      else
        in_sop <= '0';
      end if;

      if idx = 14 then
        s_state <= IGNORE;
      end if;

      if idx = 49 then
        in_eop <= '1';
      else
        in_eop <= '0';
      end if;

      -- CLOCK
      wait until rising_edge(clock);

      if in_ready = '1' then
        idx := idx + 1;
      end if;

    end loop;

    
    -- POVRATAK U IDLE
    
    in_valid <= '0';
    in_sop   <= '0';
    in_eop   <= '0';
    in_data  <= (others => '0');

    
    s_state <= IDLE;

    wait;
  end process;

end architecture;

