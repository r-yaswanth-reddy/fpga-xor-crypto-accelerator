`timescale 1ns / 1ps


module xor_cipher(
    input [7:0] plaintext,
    input [7:0] key,
    output [7:0] ciphertext
    );
    assign ciphertext = plaintext ^ key;
endmodule
