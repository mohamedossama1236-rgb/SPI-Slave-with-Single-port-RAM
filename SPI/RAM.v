module RAM #(parameter MEM_DEPTH = 256 , parameter ADDR_SIZE = 8) 
(
    input   wire  [9:0]   din,
    input   wire          rx_valid,
    input   wire          clk,
    input   wire          rst_n,
    output  reg   [7:0]   dout,
    output  reg           tx_valid    
);
reg [7:0] mem [MEM_DEPTH-1:0];
reg [ADDR_SIZE-1:0] addr;
always @(posedge clk) 
begin
    if(~rst_n)
    begin
        dout <= 8'b0;
        tx_valid <= 1'b0;
        addr <= 'b0;
    end
    else
    begin
        if (rx_valid)
        begin
            case(din[9:8])
            2'b00: // Write Address
            begin
                addr <= din[7:0];
                tx_valid <= 1'b0;
            end
            2'b01: // Write Data
            begin
                mem[addr] <= din[7:0];
                tx_valid <= 1'b0;
            end
            2'b10: // Read Address
            begin
                addr <= din[7:0];
                tx_valid <= 1'b0;
            end
            2'b11: // Read Data
            begin
                dout <= mem[addr];
                tx_valid <= 1'b1;
            end
            endcase
        end
    end 
end
endmodule