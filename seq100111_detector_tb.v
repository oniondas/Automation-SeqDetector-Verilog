module tb_seq100111;
  reg clk, reset, din;
  wire detected;
  seq100111_detector uut (.clk(clk), .reset(reset), .din(din), .detected(detected));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, uut);
    reset = 1; din = 0; #12;
    reset = 0;
    // Test stream: 100111001111001011110011110011100111
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b0; #10;
    din = 1'b0; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    din = 1'b1; #10;
    #20; $finish;
  end
endmodule