module SPI
(
    input   wire            MOSI,
    input   wire            SS_n,
    input   wire            clk,
    input   wire            rst_n,
    input   wire    [7:0]   tx_data,
    input   wire            tx_valid,
    output  reg             MISO,
    output  reg     [9:0]   rx_data,
    output  reg             rx_valid   
);
reg         flag_add;
reg [3:0]   counter1;
reg [3:0]   counter2;
(* fsm_encoding = "one_hot" *)
reg [2:0]   current_state,next_state;
parameter IDLE = 3'b000;
parameter CHK_CMD = 3'b001;
parameter WRITE = 3'b011;
parameter READ_ADD = 3'b101;
parameter READ_DATA = 3'b111;
// State Memory Logic 
always @(posedge clk) 
begin
    if(~rst_n)
        current_state <= IDLE;
    else
        current_state <= next_state;
end
// Next State Logic
always@(*)
begin
    case (current_state)
    IDLE:
    begin
        if(~SS_n)
            next_state = CHK_CMD;
        else
            next_state = IDLE;
    end
    CHK_CMD:
    begin
        if(~MOSI && !SS_n)
            next_state = WRITE ;
        else if( MOSI && !SS_n && flag_add) // flag addres to distinguish between Read addr and Read Data State
            next_state = READ_ADD;
        else if( MOSI && !SS_n && !flag_add)
            next_state = READ_DATA;
        else
            next_state = IDLE;
    end
    WRITE:
    begin
        if(~SS_n)
            next_state = WRITE;
        else
            next_state = IDLE;
    end
    READ_ADD:
    begin
        if(~SS_n)
            next_state = READ_ADD;
        else
            next_state = IDLE;
    end
    READ_DATA:
    begin
        if(~SS_n)
            next_state = READ_DATA;
        else
            next_state = IDLE;
    end
    default: next_state = IDLE;
    endcase
end
// output Logic 
always@(posedge clk)
begin
    if(~rst_n)
    begin
        rx_data <= 10'b0;
        rx_valid <= 1'b0;
        MISO <= 1'b0;
        counter1<=4'b0;
        counter2<=4'b1000;
        flag_add <= 1'b1;
    end
    else
    begin
        case(current_state)
        IDLE:
        begin
            rx_data <= 10'b0;
            rx_valid <= 1'b0;
            MISO <= 1'b0;
        end
        CHK_CMD:
        begin
            rx_data <= 10'b0;
            rx_valid <= 1'b0;
            MISO <= 1'b0;
        end
        WRITE:
        begin
            if(counter1 < 4'b1010)
            begin
            rx_valid <= 1'b0;
            rx_data <= {rx_data[8:0],MOSI};
            counter1 <= counter1 + 1;
            end
            if(counter1 == 4'b1010)
            begin
                rx_valid <= 1'b1;
                MISO <= 1'b0;
                counter1 <= 4'b0;
            end
        end
        READ_ADD: // Mem Read Address to send Data to SPI 
        begin
            if(counter1 < 4'b1010)
            begin
            rx_valid <= 1'b0;
            rx_data <= {rx_data[8:0],MOSI};
            counter1 <= counter1 + 1;
            end
            if(counter1 == 4'b1010)
            begin
                rx_valid <= 1'b1;
                MISO <= 1'b0;
                counter1 <= 4'b0;
                flag_add <= 1'b0;
            end
        end
        READ_DATA: 
        begin
            if (counter1 < 4'b1010)
            begin
            rx_valid <= 1'b0;
            rx_data <= {rx_data[8:0],MOSI};
            counter1 <= counter1 + 1;
            end
            if(counter1 == 4'b1001)
            begin
                rx_valid <= 1'b1;
                MISO <= 1'b0;
                counter1 <= 4'b0;
            end
            if (tx_valid && counter2 > 4'b0)
            begin
                MISO <= tx_data[counter2-1];
                counter2 <= counter2 - 1 ;
            end
            if(counter2 == 4'b0)
            begin
                counter2 <= 4'b1000;
                flag_add <= 1'b1;
            end
        end
        endcase
    end
end
endmodule