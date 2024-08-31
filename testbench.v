`timescale 1ns / 1ps  // Specify the simulation timescale (1 nanosecond resolution, 1 picosecond precision)

module tb_count_ones;
    reg [7:0] binary_number;  // 8-bit register for the binary number input
    wire [3:0] num_of_ones;   // 4-bit wire for the output number of '1's

    count_ones uut (
        .binary_number(binary_number),
        .num_of_ones(num_of_ones)
    );

    initial begin
        // $dumpfile("sim.vcd");
        // $dumpvars(0, testbench);

        binary_number = 8'b00000000;  // Initialize binary_number to 8'b00000000
        #10;  // Wait for 10 time units


        binary_number = 8'b00000001;  // Change binary_number to 8'b00000001
        #10;
        binary_number = 8'b00000111;
        #10;
        binary_number = 8'b01010101;
        #10;
        binary_number = 8'b11010101;
        #10;
        binary_number = 8'b01110011;
        #10;
        binary_number = 8'b11111111;
        #10;
        $finish;  // Finish simulation

    end

    initial begin
        $monitor("binary_number = %b, num_of_ones = %d", binary_number, num_of_ones);
    end
endmodule


