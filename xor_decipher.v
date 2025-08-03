module xor_decipher (
    input  [7:0] ciphertext,
    input  [7:0] key,
    output [7:0] plaintext
);
    assign plaintext = ciphertext ^ key;
endmodule
