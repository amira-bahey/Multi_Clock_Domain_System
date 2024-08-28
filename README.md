# RTL to GDS Implementation of Low Power Configurable Multi Clock Domain Digital System

## Introduction
It is responsible of receiving commands through UART receiver to do different system functions as register file 
reading/writing or doing some processing using ALU block and send result using 4 bytes frame through UART transmitter 
communication protocol. 

## System Architecture
![Screenshot (300)](https://github.com/user-attachments/assets/3581d884-b717-4090-86b1-6e01376d9d8f)

This system contains 10 blocks:-

### 1) Clock Domain 1 (REF_CLK)
    RegFile
    ALU
    Clock Gating
    SYS_CTRL

### 2) Clock Domain 2 (UART_CLK)
    UART_TX
    UART_RX
    PULSE_GEN
    Clock Dividers

### 3) Data Synchronizers
    RST Synchronizer
    Data Synchronizer
    ASYNC FIFO

## Supported Operations
#### ALU Operations
     Addition
     Subtraction
     Multiplication 
     Division
     AND
     OR
     NAND
     NOR
     XOR
     XNOR
     CMP: A = B
     CMP: A > B
     SHIFT: A >> 1
     SHIFT: A << 1
#### Register File Operations
     Register File Write
     Register File read
     
## Supported Commands
     Register File Write Command (3 frames)
     Register File Read Command (2 frames)
     ALU Operation Command with Operand (4 frames)
     ALU Operation Command with No Operand (2 frames)

## System Specifications
     Reference Clock (REF_CLK): 50 MHz
     UART Clock (UART_CLK): 3.6864 MHz
     Clock Divider: Always enabled (clock divider enable = 1)

## ASIC Flow Overview
#### RTL Design
     RTL Design from Scratch of system blocks (ALU, Register File, Synchronous FIFO, Integer Clock Divider, Clock Gating, 
     Synchronizers, Main Controller, UART TX, UART RX) using Verilog.
#### Simulation Results (default configuration:even parity with prescale 32)
      ** Regsiter File Write **
![Picture1](https://github.com/user-attachments/assets/1000b4a6-ef4c-49d1-9b98-e3c34cf8e931) 
![Picture2](https://github.com/user-attachments/assets/4acccf7b-1334-40b9-a427-93347b9d3137)
![Picture3](https://github.com/user-attachments/assets/46c2a1e6-9144-47a2-be90-21ffc0993456)

      ** Regsiter File Read **
![Picture4](https://github.com/user-attachments/assets/5b899897-3232-41bb-adf4-9f8a11389802)
![Picture5](https://github.com/user-attachments/assets/07a34312-4efd-419c-b51a-620706169e15)
![Picture6](https://github.com/user-attachments/assets/858eaf36-b95e-4310-ac05-51056c8cd38a)

     ** Alu with Operands  **
![Picture7](https://github.com/user-attachments/assets/90106edc-7188-4fa7-bf19-4b4e83cd5f49)
![Picture8](https://github.com/user-attachments/assets/8d821caf-6c15-4bb8-8a8e-73399f64e47d)
![Picture9](https://github.com/user-attachments/assets/fbcfa11c-c1d0-4110-9eb7-93d8e7145677)

     ** Alu with no Operands  **
![Picture10](https://github.com/user-attachments/assets/d77b6a4c-9bd8-4662-9f4c-7afe68a44078)

#### Synthesis
The RTL code is transformed into a gate-level netlist. 
The synthesis tool maps the RTL description onto specific target libraries, optimizing for factors like area, power, and speed.
![Screenshot (264)](https://github.com/user-attachments/assets/e6d2a60e-b879-4bf8-88bb-b55d08091c24)

#### Post-Synthesis Formal Verification
After synthesis, formal verification techniques are employed to ensure that the gate-level netlist accurately reflects the original RTL design. 
![Screenshot (290)](https://github.com/user-attachments/assets/8c45e420-6b4b-4d35-9c8f-d206e7f65f98)

#### DFT Insertion
Design for Testability (DFT) to ensure efficient testing of the final chip.
![Screenshot (293)](https://github.com/user-attachments/assets/d445141e-7b8b-4007-90a1-6895cc16d86f)

#### Post-DFT Formal Verification
After DFT, formal verification techniques are employed to ensure that the gate-level netlist accurately reflects the original RTL design. 
![Screenshot (291)](https://github.com/user-attachments/assets/94077c04-070c-4393-823c-232cd3c34615)

#### PNR
![Screenshot (287)](https://github.com/user-attachments/assets/06bee90f-0283-4b69-a2aa-ab07e5136943)
![Screenshot (288)](https://github.com/user-attachments/assets/f55494d5-5ec2-4c5f-b0c8-82c9a3ba8b3f)



    



      



     
        
     
     
     
     

     
