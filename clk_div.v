module clock_divider(
    input clk,            // 50 MHz Basys 2 clock
    output reg slow_clk   // Slower clock output
);
    reg [24:0] counter = 0;  // 25-bit counter

    always @(posedge clk) begin
        counter <= counter + 1;
        slow_clk <= counter[24];  // Adjust bit to set speed
    end
endmodule
