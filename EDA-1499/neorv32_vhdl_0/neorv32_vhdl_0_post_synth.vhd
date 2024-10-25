/* Generated by Yosys 0.18+10 (git sha1 131a935a1, gcc 11.2.1 -fPIC -Os)/Rapid Silicon */
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity neorv32_top is 
  port (
     clk_i : in std_logic ; 
     rstn_i : in std_logic ; 
     jtag_trst_i : in std_logic ; 
     jtag_tck_i : in std_logic ; 
     jtag_tdi_i : in std_logic ; 
     jtag_tdo_o : out std_logic ; 
     jtag_tms_i : in std_logic ; 
     wb_we_o : out std_logic ; 
     wb_stb_o : out std_logic ; 
     wb_cyc_o : out std_logic ; 
     wb_ack_i : in std_logic ; 
     wb_err_i : in std_logic ; 
     fence_o : out std_logic ; 
     fencei_o : out std_logic ; 
     xip_csn_o : out std_logic ; 
     xip_clk_o : out std_logic ; 
     xip_dat_i : in std_logic ; 
     xip_dat_o : out std_logic ; 
     uart0_txd_o : out std_logic ; 
     uart0_rxd_i : in std_logic ; 
     uart0_rts_o : out std_logic
 ; 
     uart0_cts_i : in std_logic ; 
     uart1_txd_o : out std_logic ; 
     uart1_rxd_i : in std_logic ; 
     uart1_rts_o : out std_logic ; 
     uart1_cts_i : in std_logic ; 
     spi_clk_o : out std_logic ; 
     spi_dat_o : out std_logic ; 
     spi_dat_i : in std_logic ; 
     sdi_clk_i : in std_logic ; 
     sdi_dat_o : out std_logic ; 
     sdi_dat_i : in std_logic ; 
     sdi_csn_i : in std_logic ; 
     twi_sda_i : in std_logic ; 
     twi_sda_o : out std_logic ; 
     twi_scl_i : in std_logic ; 
     twi_scl_o : out std_logic ; 
     onewire_i : in std_logic ; 
     onewire_o : out std_logic ; 
     neoled_o : out std_logic ; 
     mtime_irq_i : in std_logic ; 
     msw_irq_i : in std_logic
 ; 
     mext_irq_i : in std_logic ; 
     wb_adr_o : out std_logic_vector(31 downto 0) ; 
     wb_dat_i : in std_logic_vector(31 downto 0) ; 
     wb_dat_o : out std_logic_vector(31 downto 0) ; 
     wb_sel_o : out std_logic_vector(3 downto 0) ; 
     gpio_o : out std_logic_vector(63 downto 0) ; 
     gpio_i : in std_logic_vector(63 downto 0) ; 
     spi_csn_o : out std_logic_vector(7 downto 0) ; 
     pwm_o : out std_logic_vector(11 downto 0) ; 
     cfs_in_i : in std_logic_vector(31 downto 0) ; 
     cfs_out_o : out std_logic_vector(31 downto 0) ; 
     xirq_i : in std_logic_vector(31 downto 0) ; 
     wb_tag_o : out std_logic_vector(2 downto 0)
  );
end neorv32_top;

architecture arch of neorv32_top is
component TDP36K
  port (
    RESET_ni : in std_logic := '0';
    WEN_A1_i : in std_logic;
    WEN_B1_i : in std_logic;
    REN_A1_i : in std_logic;
    REN_B1_i : in std_logic;
    CLK_A1_i : in std_logic;
    CLK_B1_i : in std_logic;
    BE_A1_i : in std_logic_vector (1 downto 0);
    BE_B1_i : in std_logic_vector (1 downto 0);
    ADDR_A1_i : in std_logic_vector (14 downto 0);
    ADDR_B1_i : in std_logic_vector (14 downto 0);
    WDATA_A1_i : in std_logic_vector (17 downto 0);
    WDATA_B1_i : in std_logic_vector (17 downto 0);
    RDATA_A1_o : out std_logic_vector (17 downto 0);
    RDATA_B1_o : out std_logic_vector (17 downto 0);
    FLUSH1_i : in std_logic;
    WEN_A2_i : in std_logic;
    WEN_B2_i : in std_logic;
    REN_A2_i : in std_logic;
    REN_B2_i : in std_logic;
    CLK_A2_i : in std_logic;
    CLK_B2_i : in std_logic;
    BE_A2_i : in std_logic_vector (1 downto 0);
    BE_B2_i : in std_logic_vector (1 downto 0);
    ADDR_A2_i : in std_logic_vector (13 downto 0);
    ADDR_B2_i : in std_logic_vector (13 downto 0);
    WDATA_A2_i : in std_logic_vector (17 downto 0);
    WDATA_B2_i : in std_ulogic_vector (17 downto 0);
    RDATA_A2_o : out std_logic_vector (17 downto 0);
    RDATA_B2_o : out std_logic_vector (17 downto 0);
    FLUSH2_i : in std_logic
  );
 end component;
component RS_DSP2_MULT
  port (
    a : in std_logic_vector (19 downto 0);
    b : in std_logic_vector (17 downto 0);
    z : out std_logic_vector (37 downto 0);
    reset : in std_logic;
    feedback : in std_logic_vector(2 downto 0);
    unsigned_a : in std_logic;
    unsigned_b : in std_logic;
    f_mode : in std_logic;
    output_select : in std_logic_vector(2 downto 0);
    register_inputs : in std_logic
  );
 end component;
component lut
 generic (
    A_WIDTH : INTEGER ;
    B_WIDTH : INTEGER ;
    Y_WIDTH : INTEGER ;
    A_SIGNED : INTEGER ;
    B_SIGNED : INTEGER 
  );
  port (
    Y : out std_logic;
    B : in std_logic_vector(B_WIDTH-1 downto 0);
    A : in std_logic_vector(A_WIDTH-1 downto 0)
  );
 end component;
component shr
 generic (
    A_WIDTH : INTEGER ;
    B_WIDTH : INTEGER ;
    Y_WIDTH : INTEGER ;
    A_SIGNED : INTEGER ;
    B_SIGNED : INTEGER 
  );
  port (
    Y : out std_logic_vector(Y_WIDTH-1 downto 0);
    B : in std_logic_vector(B_WIDTH-1 downto 0);
    A : in std_logic_vector(A_WIDTH-1 downto 0)
  );
 end component;
 component dffsre
  port (
    S : in std_logic := '0';
    R : in std_logic := '0';
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffnsre
  port (
    S : in std_logic := '0';
    R : in std_logic := '0';
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component latchsre
  generic (VCS_MODE : boolean := false);
  port (
    S : in std_logic := '0';
    R : in std_logic := '0';
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    G : in std_logic := '0'
  );
 end component;
 component adder_carry
  port (
    sumout : out std_logic ;
    cout : out std_logic ;
    p : in std_logic := '0';
    g : in std_logic := '0';
    cin : in std_logic := '0'
  );
 end component;
 component dff
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffn
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component sdff
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component sdffn
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffr
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffnr
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffe
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffne
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component sdffre
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component sdffnre
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    R : in std_logic := '0';
    Q : out std_logic ;
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffre
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    R : in std_logic := '0';
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component dffnre
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    R : in std_logic := '0';
    E : in std_logic := '0';
    D : in std_logic := '0';
    C : in std_logic := '0'
  );
 end component;
 component latch
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    g : in std_logic := '0';
    d : in std_logic := '0'
  );
 end component;
 component latchn
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    g : in std_logic := '0';
    d : in std_logic := '0'
  );
 end component;
 component latchr
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    r : in std_logic := '0';
    g : in std_logic := '0';
    d : in std_logic := '0'
  );
 end component;
 component latchnr
  generic (INIT_VALUE : std_logic := '0';
  VCS_MODE : boolean := false
  );
  port (
    Q : out std_logic ;
    r : in std_logic := '0';
    g : in std_logic := '0';
    d : in std_logic := '0'
  );
 end component;
 component fa_1bit
  port (
    sum : out std_logic ;
    cout : out std_logic ;
    p : in std_logic := '0';
    g : in std_logic := '0';
    cin : in std_logic := '0'
  );
 end component;

begin
  neoled_o <= '0';
  gpio_o <= "0000000000000000000000000000000000000000000000000000000000000000";
  fencei_o <= '0';
  fence_o <= '0';
  pwm_o <= "000000000000";
  spi_clk_o <= '0';
  spi_csn_o <= "11111111";
  spi_dat_o <= '0';
  onewire_o <= '1';
  twi_scl_o <= '1';
  twi_sda_o <= '1';
  jtag_tdo_o <= jtag_tdi_i;
  uart0_rts_o <= '1';
  uart0_txd_o <= '0';
  uart1_rts_o <= '1';
  uart1_txd_o <= '0';
  wb_adr_o <= 0;
  wb_cyc_o <= '0';
  wb_dat_o <= 0;
  wb_sel_o <= "0000";
  wb_stb_o <= '0';
  wb_tag_o <= "000";
  wb_we_o <= '0';
  cfs_out_o <= 0;
  sdi_dat_o <= '0';
  xip_clk_o <= '0';
  xip_csn_o <= '1';
  xip_dat_o <= '0';
end arch;
