`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2020 11:36:48 AM
// Design Name: 
// Module Name: user_input
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

module t_user_input();
  reg [7:0] ascii_code;
  reg[3:0] input_style_out;
  reg[15:0] current_state;
	reg clk, ready;
  wire [3:0] status_code_out;
  wire[15:0] pswd, acct;
  wire[1:0] usr_input_out;
  wire[2:0] currency_type_out, currency_type_2_out;
  wire[15:0] destinationAcc;

  user_input UUT(.clk(clk), .ascii_code(ascii_code[7:0]), .input_style_out(input_style_out), .current_state(current_state[15:0]), .ready(ready), .status_code_out(status_code_out), .pswd(pswd), .acct(acct), .usr_input_out(usr_input_out), .currency_type_out(currency_type_out), .currency_type_2_out(currency_type_2_out), .destinationAcc(destinationAcc)
                );  
	initial begin 
		clk =0;
        input_style_out = 4'b0100;
      	current_state = 16'b0000000000001000;
      	ascii_code <= 0;
      //ready <=0;
		forever #30 clk = ~clk;
	end
	initial begin
		#2;
		ascii_code <= 8'h63;  
		/*
      #2;
		ascii_code <= 8'h32;
		#2;
		ascii_code <= 8'h37;
		#2;
		ascii_code <= 8'h38;
		#2;
        */
      #2
		ascii_code <= 8'h0D;
    // $display(acct);
	end
  /*
  	initial begin
      $dumpfile("t_user_input.vcd");
      $dumpvars(0,t_user_input);
      #10 $finish;
    end
    */
endmodule	