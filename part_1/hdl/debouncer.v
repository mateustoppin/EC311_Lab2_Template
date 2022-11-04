`timescale 1ns / 1ps

// EC-311 Lab-2 Part-1

// Your lab2 part-1 code comes here

  module debouncer(reset_n, clk, button_in, button_out);
input reset_n, clk, button_in;
   output button_out;

   parameter MAX = 10000;
   

   integer count;
   reg trueout, button_out;

   always @(posedge clk or negedge reset_n)begin
     if (!reset_n) begin
    trueout <= 0; 
    button_out <= 0;
 	count <= 0; 
end
     else if (button_in == 1'b0) begin 
    trueout <= 0; 
    count <= 0; 
end
     else if (trueout==1'b0) begin
    count <= count+1'b1;
     if (count==MAX) begin
    button_out <=1;
    trueout <=1;
    count <=0;
end else begin
button_out <= 0;
end
end
end//always

endmodule

