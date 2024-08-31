module count_ones (
    input [7:0] binary_number,   // 8-bit input representing a binary number
    output reg [3:0] num_of_ones  // 4-bit output representing the number of '1's in the binary number
);
    always @* begin
        num_of_ones = 0;  // Initialize the count of '1's to zero

        // Loop through each bit of the 8-bit binary_number input
        for (integer i = 0; i < 8; i = i + 1) begin
            // Check if the current bit is '1'
            if (binary_number[i])
                num_of_ones = num_of_ones + 1;  // Increment the count if the current bit is '1'
        end
    end
endmodule

