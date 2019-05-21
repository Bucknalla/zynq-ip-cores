`timescale 1ns / 1ps

`define assert(condition) if(condition) begin $finish(1); end
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2019 17:08:11
// Design Name: 
// Module Name: aes_axis_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module aes_axis_tb();

reg CLK;
reg RESET;

///////////////////////////  AXI_LITE (MASTER)  //////////////////////////////////
reg M_AW_VALID = 0;
reg [3:0] M_AW_ADDR = 0;
wire M_AW_READY;

reg M_W_VALID = 0;
wire M_W_READY;
reg [31:0] M_W_DATA = 0;

reg [3:0] M_AR_ADDR = 0;
reg M_AR_VALID = 0;
wire M_AR_READY;

reg M_B_READY = 0;
wire M_B_VALID = 0;
wire M_B_RESP; // Write information (not required)

///////////////////////////  AXI_STREAM (MASTER)  ////////////////////////////////

reg M_AXIS_VALID = 0;
wire M_AXIS_READY;
reg [31:0] M_AXIS_DATA = 0;

///////////////////////////  AXI_STREAM (SLAVE)  ////////////////////////////////

wire S_AXIS_VALID;
wire S_AXIS_READY;
wire [31:0] S_AXIS_DATA;

///////////////////////////////  AES_STATUS  ////////////////////////////////////


wire AES_DONE;
wire STATUS_0;
wire STATUS_1;

aes_v1_0 DUT (
// Users to add ports here
    .aes_done(AES_DONE),
    .status_0(STATUS_0),
    .status_1(STATUS_1),
    
    .s00_axi_aclk(CLK),
    .s00_axi_aresetn(RESET),
        /* WRITE BUS */
    .s00_axi_awaddr(M_AW_ADDR),
//    .s00_axi_awprot(),
    .s00_axi_awvalid(M_AW_VALID),
    .s00_axi_awready(M_AW_READY),
    .s00_axi_wdata(M_W_DATA),
//    .s00_axi_wstrb(),
    .s00_axi_wvalid(M_W_VALID),
    .s00_axi_wready(M_W_READY),
//    .s00_axi_bresp(),
    .s00_axi_bvalid(),
//    .s00_axi_bready(),
    .s00_axi_araddr(M_AR_ADDR),
//    .s00_axi_arprot(),
    .s00_axi_arvalid(M_AR_VALID),
    .s00_axi_arready(M_AR_READY),
        /* READ BUS */
//    .s00_axi_rdata(),
//    .s00_axi_rresp(),
//    .s00_axi_rvalid(),
//    .s00_axi_rready(),
    
        // Ports of Axi Slave Bus Interface S00_AXIS
    .s00_axis_aclk(CLK),
    .s00_axis_aresetn(RESET),
    .s00_axis_tready(M_AXIS_READY),
    .s00_axis_tdata(M_AXIS_DATA),
//    .s00_axis_tstrb(),
//    .s00_axis_tlast(),
    .s00_axis_tvalid(M_AXIS_VALID),
    
        // Ports of Axi Master Bus Interface M00_AXIS
    .m00_axis_aclk(CLK),
    .m00_axis_aresetn(RESET),
    .m00_axis_tvalid(S_AXIS_VALID),
    .m00_axis_tdata(S_AXIS_DATA),
//    .m00_axis_tstrb(),
//    .m00_axis_tlast(),
    .m00_axis_tready(S_AXIS_READY)
);

task axi_write;
    input [3:0] i_add;
    input [31:0] i_data; 
    begin
      // demonstrates driving external Global Reg
      M_AW_VALID    = 1'b1;
      M_AW_ADDR     = i_add;
      M_W_VALID    = 1'b1;
      M_W_DATA = i_data;

      #10;
    end
 endtask
 
task axis_write;
     input [31:0] i_data; 
     begin
       // demonstrates driving external Global Reg
       M_AXIS_VALID = 1'b1;
       if(M_AXIS_READY) begin
          M_AXIS_DATA = i_data;
       end 
       #10;
     end
  endtask

always #10 CLK = ~CLK;


initial begin
    CLK = 0;
    RESET = 0;
    #100 RESET = 1;
    #50 axi_write(32,200);
    #1000 $finish;
end








endmodule


//    COMPONENT aes_module
//    PORT(
//         clk : IN  std_logic;
//         reset : IN  std_logic;
//         din : IN  std_logic_vector(127 downto 0);
//         dout : OUT  std_logic_vector(127 downto 0);
//         mode : IN  aes_mode;
//         aes_start : IN  std_logic;
//         aes_done : OUT  std_logic
//        );
//    END COMPONENT;
    

//   --Inputs
//   signal clk : std_logic := '0';
//   signal reset : std_logic := '0';
//   signal din : std_logic_vector(127 downto 0) := (others => '0');
//   signal mode : aes_mode := ENCRYPT;
//   signal aes_start : std_logic := '0';

// 	--Outputs
//   signal dout : std_logic_vector(127 downto 0);
//   signal aes_done : std_logic;

//   -- Clock period definitions
//   constant clk_period : time := 10 ns;
 
//BEGIN
 
//	-- Instantiate the Unit Under Test (UUT)
//   uut: aes_module PORT MAP (
//          clk => clk,
//          reset => reset,
//          din => din,
//          dout => dout,
//          mode => mode,
//          aes_start => aes_start,
//          aes_done => aes_done
//			 );

//   -- Clock process definitions
//   clk_process :process
//   begin
//		for i in 0 to 50 loop
//			clk <= '0';
//			wait for clk_period/2;
//			clk <= '1';
//			wait for clk_period/2;
//		end loop;
//   end process;
 

//   stim_proc: process
//   begin		
      
//		-- key expansion
//		mode <= EXPAND_KEY;
//		din <= x"000102030405060708090a0b0c0d0e0f";
//		aes_start <= '1';
		
//      wait for clk_period;
//		assert aes_done = '0' report "key expansion : wrong done signal" severity failure;
//		wait for clk_period*11;
//		assert aes_done = '0' report "key expansion : wrong done signal" severity failure;
//		wait for clk_period;
//		assert aes_done = '1' report "key expansion :  wrong done signal" severity failure;
		
//		aes_start <= '0';
//		wait for clk_period;
//		assert aes_done = '1' report "key expansion : wrong done signal" severity failure;

		
		
//		-- encryption (first time)
//		mode <= ENCRYPT;
//		din <= x"00112233445566778899aabbccddeeff";
//		aes_start <= '1';
		
//		wait for clk_period;
//		assert aes_done = '0' report "encryption : wrong done signal" severity failure;
//		wait for clk_period*12;
//		assert aes_done = '0' report "encryption : wrong done signal" severity failure;
//		wait for clk_period;
//		assert aes_done = '1' report "encryption :  wrong done signal" severity failure;
		
//		assert dout = x"69c4e0d86a7b0430d8cdb78070b4c55a" report "encryption : wrong result" severity failure;
//		aes_start <= '0';
		
		
		
//		-- idle (hold previous result)
//		wait for clk_period*10;
//		assert aes_done = '1' report "idle: failure" severity failure;
//		assert dout = x"69c4e0d86a7b0430d8cdb78070b4c55a" report "idle: wrong result" severity failure;
		
		
		
//		-- encryption (second time)
//		mode <= ENCRYPT;
//		din <= x"00112233445566778899aabbccddeeff";
//		aes_start <= '1';
		
//		wait for clk_period;
//		assert aes_done = '0' report "encryption : wrong done signal" severity failure;
//		wait for clk_period*12;
//		assert aes_done = '0' report "encryption : wrong done signal" severity failure;
//		wait for clk_period;
//		assert aes_done = '1' report "encryption : wrong done signal" severity failure;
		
//		assert dout = x"69c4e0d86a7b0430d8cdb78070b4c55a" report "encryption module: wrong result" severity failure;
//		aes_start <= '0';
		
		
		
//		-- decryption (first time)
//		mode <= DECRYPT;
//		din <= x"69c4e0d86a7b0430d8cdb78070b4c55a";
//		aes_start <= '1';
		
//		wait for clk_period;
//		assert aes_done = '0' report "decryption : wrong done signal" severity failure;
//		wait for clk_period*12;
//		assert aes_done = '0' report "decryption : wrong done signal" severity failure;
//		wait for clk_period;
//		assert aes_done = '1' report "decryption : wrong done signal" severity failure;
		
//		assert dout = x"00112233445566778899aabbccddeeff" report "decryption : wrong result" severity failure;
//		aes_start <= '0';
		
		
//      wait;
//   end process;

//END;