# FPGA XOR Cryptographic Accelerator 🔐⚡

A basic cryptographic hardware accelerator with an XOR cipher on a Basys 3 FPGA. The intention is to show how real-time encryption can be done using Verilog HDL and how hardware can greatly accelerate encryption processes.

##  🔍  Overview
- **Platform**: Basys 3 FPGA (Xilinx Artix-7)
- **Language**: Verilog HDL
- **Encryption Method**: XOR Cipher
- **Input**: 8-bit plaintext and key through switches (SW[15:0])
- **Output**: 8-bit ciphertext through LEDs (LED[7:0])

## 💡 Features
- Real-time encryption based on XOR logic
- Easy-to-implement Verilog-based design
- Of educational value and as a starting point for more secure designs such as AES

##  📦  Files Included
- `xor_cipher.v`: Verilog module for XOR encryption
- `xor_cipher_tb.v`: Verilog testbench
- `constraints.xdc`: Basys 3 constraints file
- `README.md`: This documentation file

## 🧪 How It Works
1. Set 8-bit key and plaintext using SW[15:0]
2. Press `BTN0` to start XOR encryption
3. Observe 8-bit ciphertext on LED[7:0]

## 📽️ Demo Output
- 


## 📚 Applications
- Encryption for IoT devices
- Real-time data logging
- Embedded security systems
- Hardware Security Modules (HSMs)

## ✅ Advantages
- High-speed encryption by dedicated logic
- Easy-to-understand architecture for studying FPGA-based security
- Easily scalable to stronger algorithms like AES

## ⚠️ Limitations
- XOR cipher is not secure for practical application
- Switch key input manually
- Restricted I/O capability

## 📌 Future Work
- Upgrade to AES encryption
- Integrate UART/USB interface for input/output
- Incorporate key management module

**Contributors**:   
- R Yaswanth Reddy (myself)
- A Saket
- Rithika
- Devika
- Abhijith
**Institution**: [Your University or Lab Name]
