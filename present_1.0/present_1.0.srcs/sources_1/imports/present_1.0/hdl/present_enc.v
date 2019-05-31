/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Filename      : present_enc.v                                         %
% Function      : PRESENT Encoder Logic                                 %
%                 - Reads subkey for each round from the subkey memory  %
%                 - 80-bit Key and 64-bit block size                    %
% Author        : SHS                                                   %
% Version       : 1.0 - Base version                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/



/* Present Encoder LOGIC */

module present_ENC
(
    //encoder path
	plaintext,
	ciphertext,
	start, 
    ready,
    header_start,
    header_done,
    rxorer,
    // Key
    subkey,
    keymem_addr,
    time_key_gen,
    // Clk,Rst
    clk_in, 
    rst_in

);
parameter b_64 = 64;
parameter b_80 = 80;
parameter b_2  = 2;
parameter b_4  = 4;
parameter b_5  = 5;
parameter b_32 = 32;
parameter time_key = 1;

input  [b_64-1:0] plaintext;
output [b_64-1:0] ciphertext;
input             start;
output reg        ready;
input  [b_64-1:0] subkey;
output  [b_5-1:0]  keymem_addr;
input             clk_in,rst_in;
input             header_start;
output reg        header_done;
output reg        time_key_gen;
output reg [b_32-1:0]  rxorer;
parameter IDLE = 3'd1;
parameter ENCODE = 3'd2;
parameter DONE = 3'd4;
parameter max_rounds = 31; // 32 rounds

reg [2:0]       state;
reg             cntr_en;
reg             mux_en;
reg [b_5-1:0]   cntr_val;
reg [b_5-1:0]   max_val;
reg [b_64-1:0]  inp_reg;

reg [b_80-1:0]  key_reg;
reg             hdr_flag;

wire [b_64-1:0] inp_reg_i,intertext,cipher,sub_cipher;
wire [b_80-1:0] key_reg_i,key_temp,interkey;
wire [3:0]      key_updt;
wire [4:0]      key_rand;

// Control State Machine
always @ (posedge clk_in)
begin
    if (~rst_in) begin
        state   <= IDLE;
        cntr_en <= 1'b0;
        ready   <= 1'b0;
        mux_en  <= 1'b0;
        hdr_flag <= 1'b0;
        max_val <= max_rounds;
        rxorer  <= 32'b0;
        header_done <= 1'b0;     
        time_key_gen <= 1'b0;        
    end
    else begin
        ready <= 1'b0;
        header_done <= 1'b0;      
        time_key_gen <= 1'b0;        
        case (state)
            IDLE : begin
                if (start) begin
                    cntr_en <= 1'b1;
                    ready   <= 1'b0;
                    state   <= ENCODE;
                    max_val <= max_rounds;
                    hdr_flag <= 1'b0;
                end
                else if (header_start) begin
                    cntr_en <= 1'b1;
                    ready   <= 1'b0;
                    state   <= ENCODE;                
                    max_val <= 'd7;
                    hdr_flag <= 1'b1;
                    rxorer <= plaintext[31:0]; // timestamp value to xor for subsequent data
                    if (time_key)
                        time_key_gen <= 1'b1;
                end
            end
            
            ENCODE : begin
                //if (cntr_val == 5'd0) begin
                //    mux_en <= 1'b0;
                //end
                //else begin
                    mux_en <= 1'b1;
                    if (cntr_val == max_val) begin
                        state <= DONE;
                        cntr_en <= 1'b0;
                        mux_en  <= 1'b0;
                        if (hdr_flag) 
                            header_done <= 1'b1;
                        else
                            ready <= 1'b1;
                    end
                //end
            end
            
            DONE : begin
                if (hdr_flag) begin
                    //header_done <= 1'b1;
                    if (~header_start) begin
                        state <= IDLE;
                        cntr_en <= 1'b0;
                        mux_en  <= 1'b0;
                        hdr_flag <= 1'b0;
                    end
                end
                else begin
                    ready <= 1'b1;
                    if (~start) begin
                        state <= IDLE;
                        cntr_en <= 1'b0;
                        mux_en  <= 1'b0;
                    end
                end
            end
        endcase
    end
end

// Iteration Counter
always @ (posedge clk_in)
begin
    if (~rst_in) begin
        cntr_val <= 5'd0;
    end
    else begin
        if (cntr_en) begin
            if (~(&cntr_val))
                cntr_val <= cntr_val + 1'b1;
        end
        else //if ((state == DONE) && (~start))
            cntr_val <= 5'd0;
    end
end

// Input Mux (64 bit)
assign inp_reg_i = (~mux_en) ? plaintext : intertext; // If it is the start point, choose plaintext, else choose intermediate text


// Registered Key and Input
always @ (posedge clk_in)
begin
    if (~rst_in) begin
        inp_reg <= 'd0;
    end
    else begin
        if (cntr_en) begin
            inp_reg <= inp_reg_i;
        end
    end
end

// XoR Text with Key
//assign cipher = inp_reg ^ subkey;
// Adding time-stamp based randomiser as well
assign cipher = inp_reg ^ subkey;

// Substitution Layer
genvar i;
generate for (i = 15; i >= 0; i = i- 1)
    begin : sub_layer
        sbox sub_n 
            (.in(cipher[4*i+3 : 4*i]), 
            .out(sub_cipher[4*i+3 : 4*i])
            );
    end
endgenerate
    
// Permutation Layer
    pbox pbox
    (
        .in(sub_cipher),
        .out(intertext) // Intermediate ciphertext
    );

    
// Ciphertext
assign ciphertext = cipher;

// Key Memory Read
assign keymem_addr = cntr_val;
endmodule
