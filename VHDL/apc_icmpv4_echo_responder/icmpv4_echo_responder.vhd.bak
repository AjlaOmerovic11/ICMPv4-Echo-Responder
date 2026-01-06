library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icmp_echo_responder is
  generic (
    IP_ADDRESS  : std_logic_vector(31 downto 0) := x"C0A80164";
    MAC_ADDRESS : std_logic_vector(47 downto 0) := x"020000000001"
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

  
  -- FSM stanja
  
  type state_t is (
    IDLE,
    ETHERNET_HEADER,
    IP_HEADER,
    ICMP_HEADER,
    PAYLOAD,
    SEND,
    IGNORE
  );

  signal state, next_state : state_t;

  -- Frame buffer (D1–D50)
  
  type frame_t is array (0 to 49) of std_logic_vector(7 downto 0);
  signal rx_frame : frame_t;
  signal tx_frame : frame_t;

  signal byte_cnt : integer range 0 to 49 := 0;
  signal tx_cnt   : integer range 0 to 49 := 0;

  
  -- Pomoćni signali za provjere generika
  
  signal mac_match : std_logic;
  signal ip_match  : std_logic;

begin

  
  -- MAC_ADDRESS provjera (Destination MAC = naš MAC)
  
  mac_match <= '1' when
    rx_frame(0) = MAC_ADDRESS(47 downto 40) and
    rx_frame(1) = MAC_ADDRESS(39 downto 32) and
    rx_frame(2) = MAC_ADDRESS(31 downto 24) and
    rx_frame(3) = MAC_ADDRESS(23 downto 16) and
    rx_frame(4) = MAC_ADDRESS(15 downto 8)  and
    rx_frame(5) = MAC_ADDRESS(7 downto 0)
    else '0';

  
  -- IP_ADDRESS provjera (Destination IP = naša IP)
  
  ip_match <= '1' when
    rx_frame(30) = IP_ADDRESS(31 downto 24) and
    rx_frame(31) = IP_ADDRESS(23 downto 16) and
    rx_frame(32) = IP_ADDRESS(15 downto 8)  and
    rx_frame(33) = IP_ADDRESS(7 downto 0)
    else '0';

  
  -- 1) REGISTAR STANJA
  
  process(clock)
  begin
    if rising_edge(clock) then
      if reset = '1' then
        state <= IDLE;
      else
        state <= next_state;
      end if;
    end if;
  end process;

  
  -- 2) SEKVENCIJALNI DATA PATH
  
  process(clock)
  begin
    if rising_edge(clock) then
      if reset = '1' then
        byte_cnt <= 0;
        tx_cnt   <= 0;

      else
       case state is

  
  when IDLE =>
    byte_cnt <= 0;
    tx_cnt   <= 0;
    if in_valid = '1' and in_sop = '1' then
      rx_frame(0) <= in_data;
      byte_cnt <= 1;
    end if;

 

-- Prijem Ethernet zaglavlja

when ETHERNET_HEADER =>
  if in_valid = '1' then
    rx_frame(byte_cnt) <= in_data;
    if byte_cnt < 49 then
      byte_cnt <= byte_cnt + 1;
    end if;
  end if;


-- Prijem IPv4 zaglavlja

when IP_HEADER =>
  if in_valid = '1' then
    rx_frame(byte_cnt) <= in_data;
    if byte_cnt < 49 then
      byte_cnt <= byte_cnt + 1;
    end if;
  end if;


-- Prijem ICMP zaglavlja

when ICMP_HEADER =>
  if in_valid = '1' then
    rx_frame(byte_cnt) <= in_data;
    if byte_cnt < 49 then
      byte_cnt <= byte_cnt + 1;
    end if;
  end if;


  when PAYLOAD =>
    if in_valid = '1' then
      rx_frame(byte_cnt) <= in_data;
      if byte_cnt < 49 then
        byte_cnt <= byte_cnt + 1;
      end if;
    end if;

    -- kraj paketa i priprema se Echo Reply
    if in_valid = '1' and in_eop = '1' then

      -- kopija frame-a
      tx_frame <= rx_frame;

      -- Ethernet MAC swap
      tx_frame(0)  <= rx_frame(6);
      tx_frame(1)  <= rx_frame(7);
      tx_frame(2)  <= rx_frame(8);
      tx_frame(3)  <= rx_frame(9);
      tx_frame(4)  <= rx_frame(10);
      tx_frame(5)  <= rx_frame(11);

      tx_frame(6)  <= rx_frame(0);
      tx_frame(7)  <= rx_frame(1);
      tx_frame(8)  <= rx_frame(2);
      tx_frame(9)  <= rx_frame(3);
      tx_frame(10) <= rx_frame(4);
      tx_frame(11) <= rx_frame(5);

      -- IPv4 IP swap
      tx_frame(26) <= rx_frame(30);
      tx_frame(27) <= rx_frame(31);
      tx_frame(28) <= rx_frame(32);
      tx_frame(29) <= rx_frame(33);

      tx_frame(30) <= rx_frame(26);
      tx_frame(31) <= rx_frame(27);
      tx_frame(32) <= rx_frame(28);
      tx_frame(33) <= rx_frame(29);

      -- ICMP Echo Reply
      tx_frame(34) <= x"00";

      tx_cnt <= 0;
    end if;

  
  when SEND =>
    if out_ready = '1' and tx_cnt < byte_cnt then
      tx_cnt <= tx_cnt + 1;
    end if;

  
  when others =>
    null;

end case;

      end if;
    end if;
  end process;

  -- 3) KOMBINATORNA FSM LOGIKA
  
  process(state, in_valid, in_sop, in_eop, out_ready,
          byte_cnt, tx_cnt, rx_frame, mac_match, ip_match)
  begin
    -- default
    next_state <= state;

    in_ready  <= '0';
    out_valid <= '0';
    out_sop   <= '0';
    out_eop   <= '0';
    out_data  <= (others => '0');

    case state is

      when IDLE =>
        in_ready <= '1';
        if in_valid = '1' and in_sop = '1' then
          next_state <= ETHERNET_HEADER;
        end if;

      when ETHERNET_HEADER =>
        in_ready <= '1';
        if byte_cnt = 14 then
          if rx_frame(12) = x"08" and rx_frame(13) = x"00" and mac_match = '1' then
            next_state <= IP_HEADER;
          else
            next_state <= IGNORE;
          end if;
        end if;

      when IP_HEADER =>
        in_ready <= '1';
        if byte_cnt = 34 then
          if rx_frame(23) = x"01" and ip_match = '1' then
            next_state <= ICMP_HEADER;
          else
            next_state <= IGNORE;
          end if;
        end if;

      when ICMP_HEADER =>
        in_ready <= '1';
        if byte_cnt = 42 then
          if rx_frame(34) = x"08" then
            next_state <= PAYLOAD;
          else
            next_state <= IGNORE;
          end if;
        end if;

      when PAYLOAD =>
        in_ready <= '1';
        if in_eop = '1' then
          next_state <= SEND;
        end if;

      when SEND =>
        out_valid <= '1';
        out_data  <= tx_frame(tx_cnt);

        if tx_cnt = 0 then
          out_sop <= '1';
        end if;

        if tx_cnt = byte_cnt - 1 then
          out_eop <= '1';
          if out_ready = '1' then
            next_state <= IDLE;
          end if;
        end if;

      when IGNORE =>
        in_ready <= '1';
        if in_eop = '1' then
          next_state <= IDLE;
        end if;

    end case;
  end process;

end architecture;