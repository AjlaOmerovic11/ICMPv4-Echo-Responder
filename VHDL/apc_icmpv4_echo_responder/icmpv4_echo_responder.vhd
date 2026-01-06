library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icmp_echo_responder is
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
end entity;

architecture rtl of icmp_echo_responder is

  type state_t is (IDLE, ETH, IP, ICMP, PAYLOAD, SEND, IGNORE);
  signal state, next_state : state_t := IDLE;

  type frame_t is array (0 to 49) of std_logic_vector(7 downto 0);
  signal rx_frame, tx_frame : frame_t := (others => (others => '0'));

  signal byte_cnt   : integer range 0 to 49 := 0;
  signal tx_cnt     : integer range 0 to 49 := 0;
  signal frame_done : std_logic := '0';

  signal mac_ok, ip_ok : std_logic;

begin

  mac_ok <= '1' when
    rx_frame(0)=MAC_ADDRESS(47 downto 40) and
    rx_frame(1)=MAC_ADDRESS(39 downto 32) and
    rx_frame(2)=MAC_ADDRESS(31 downto 24) and
    rx_frame(3)=MAC_ADDRESS(23 downto 16) and
    rx_frame(4)=MAC_ADDRESS(15 downto 8) and
    rx_frame(5)=MAC_ADDRESS(7 downto 0)
  else '0';

  ip_ok <= '1' when
    rx_frame(30)=IP_ADDRESS(31 downto 24) and
    rx_frame(31)=IP_ADDRESS(23 downto 16) and
    rx_frame(32)=IP_ADDRESS(15 downto 8) and
    rx_frame(33)=IP_ADDRESS(7 downto 0)
  else '0';

  
  begin
    if rising_edge(clock) then
      if reset='1' then
        state <= IDLE;
      else
        state <= next_state;
      end if;
    end if;
  end process;

  
  -- RX / TX 
  
  process(clock)
  begin
    if rising_edge(clock) then
      if reset='1' then
        byte_cnt   <= 0;
        tx_cnt     <= 0;
        frame_done <= '0';
      else
        frame_done <= '0';

        case state is
          when IDLE =>
            byte_cnt <= 0;
            if in_valid='1' and in_sop='1' then
              rx_frame(0) <= in_data;
              byte_cnt <= 1;
            end if;

          when ETH | IP | ICMP | PAYLOAD =>
            if in_valid='1' then
              rx_frame(byte_cnt) <= in_data;
              if byte_cnt < 49 then
                byte_cnt <= byte_cnt + 1;
              end if;
              if in_eop='1' then
                frame_done <= '1';
                tx_frame <= rx_frame;

                -- MAC swap
                tx_frame(0 to 5)  <= rx_frame(6 to 11);
                tx_frame(6 to 11) <= rx_frame(0 to 5);

                -- IP swap
                tx_frame(26 to 29) <= rx_frame(30 to 33);
                tx_frame(30 to 33) <= rx_frame(26 to 29);

                -- ICMP Echo Reply
                tx_frame(34) <= x"00";

                tx_cnt <= 0;
              end if;
            end if;

          when SEND =>
            if out_ready='1' then
              if tx_cnt < 49 then
                tx_cnt <= tx_cnt + 1;
              end if;
            end if;

          when others => null;
        end case;
      end if;
    end if;
  end process;

 
  --  KOMBINATORNA
  
  process(state, in_valid, in_sop, byte_cnt, frame_done, mac_ok, ip_ok, tx_cnt, out_ready)
  begin
    next_state <= state;

    in_ready  <= '0';
    out_valid <= '0';
    out_sop   <= '0';
    out_eop   <= '0';
    out_data  <= (others=>'0');

    case state is

      when IDLE =>
        in_ready <= '1';
        if in_valid='1' and in_sop='1' then
          next_state <= ETH;
        end if;

      when ETH =>
        in_ready <= '1';
        if byte_cnt=14 then
          if mac_ok='1' then next_state <= IP;
          else next_state <= IGNORE; end if;
        end if;

      when IP =>
        in_ready <= '1';
        if byte_cnt=34 then
          if ip_ok='1' then next_state <= ICMP;
          else next_state <= IGNORE; end if;
        end if;

      when ICMP =>
        in_ready <= '1';
        if byte_cnt=42 then
          if rx_frame(34)=x"08" then next_state <= PAYLOAD;
          else next_state <= IGNORE; end if;
        end if;

      when PAYLOAD =>
        in_ready <= '1';
        if frame_done='1' then
          next_state <= SEND;
        end if;

      when SEND =>
        in_ready  <= '0';
        out_valid <= '1';
        out_data  <= tx_frame(tx_cnt);

        if tx_cnt=0 then out_sop<='1'; end if;
        if tx_cnt=49 then
          out_eop<='1';
          if out_ready='1' then next_state <= IDLE; end if;
        end if;

      when IGNORE =>
        in_ready <= '1';
        if frame_done='1' then next_state <= IDLE; end if;

    end case;
  end process;

end architecture;
