module SPIWrapper
(
    input   wire    MOSI,
    input   wire    SS_n,
    input   wire    clk,
    input   wire    rst_n,
    output  wire    MISO 

);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
wire    [9:0]   rx_dataa;
wire            rx_validd;
wire    [7:0]   tx_dataa;
wire            tx_validd;
SPI SPIbLock
(
    .MOSI(MOSI),
    .SS_n(SS_n),
    .clk(clk),
    .rst_n(rst_n),
    .tx_data(tx_dataa),
    .tx_valid(tx_validd),
    .MISO(MISO),
    .rx_data(rx_dataa),
    .rx_valid(rx_validd)   
);
RAM #(.MEM_DEPTH(MEM_DEPTH),.ADDR_SIZE(ADDR_SIZE)) RAMblock
(
    .din(rx_dataa),
    .rx_valid(rx_validd),
    .clk(clk),
    .rst_n(rst_n),
    .dout(tx_dataa),
    .tx_valid(tx_validd)    
);
endmodule