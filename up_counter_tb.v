module up_counter_tb;
    reg clk, reset;
    wire [3:0] count;

    up_counter uut (.clk(clk), .reset(reset), .count(count));

    always #5 clk = ~clk; // 10 time unit clock period

    initial begin
        clk = 0; reset = 1;
        $monitor("Time=%0t | reset=%b | count=%d", $time, reset, count);
        #10 reset = 0;
        #100 $finish;
    end
endmodule
