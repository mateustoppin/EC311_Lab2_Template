`timescale 1ns / 1ps

// EC-311 Lab-2 Part-1

module debouncer (
  
  input wire                    clk_i,                   // input clock
  input wire                    resetn_btn_i,            // input pushbutton for active LOW reset (Hint: On Nexys A7 board, the red push button gives 0 output when pressed) 
  input wire                    increment_counter_btn_i, // input push button for counter increment


  // LED outputs
  output wire                   led0,
  output wire                   led1,
  output wire                   led2,
  output wire                   led3,
  output wire                   led4,
  output wire                   led5,
  output wire                   led6,
  output wire                   led7

);

// Your lab2 part-1 code comes here


endmodule
