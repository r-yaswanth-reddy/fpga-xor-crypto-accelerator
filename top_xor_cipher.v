module top_xor_cipher (
    input clk,                // 100 MHz clock
    input [15:0] sw,          // Input switches
    output reg [15:0] led     // Output LEDs
);
    wire [7:0] plaintext = sw[7:0];
    wire [7:0] key       = sw[15:8];

    wire [7:0] ciphertext;
    wire [7:0] decrypted;
    wire slow_clk;

    // Instantiate XOR encryption and decryption
    xor_cipher encryptor (
        .plaintext(plaintext),
        .key(key),
        .ciphertext(ciphertext)
    );

    xor_decipher decryptor (
        .ciphertext(ciphertext),
        .key(key),
        .plaintext(decrypted)
    );

    // Clock divider for slow output
    clock_divider div (
        .clk(clk),
        .slow_clk(slow_clk)
    );

    // Drive outputs on slow clock
    always @(posedge slow_clk) begin
        led[7:0]   <= ciphertext;
        led[15:8]  <= decrypted;
    end
endmodule
