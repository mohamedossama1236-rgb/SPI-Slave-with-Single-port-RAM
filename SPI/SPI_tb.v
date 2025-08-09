module SPI_tb();
////////////////////////// Testbench Signals ////////////////////////
reg     MOSI_tb;
reg     SS_n_tb;
reg     clk_tb;
reg     rst_n_tb;
wire    MISO_tb;
integer i;
//////////////////////// Module Instantation ///////////////////////////
SPIWrapper DUT
(
    .MOSI(MOSI_tb),
    .SS_n(SS_n_tb),
    .clk(clk_tb),
    .rst_n(rst_n_tb),
    .MISO(MISO_tb) 
);
/////////////////////////// Clock Generator /////////////////////////////
initial 
begin
    clk_tb = 0;
    forever
    #5 clk_tb = ~clk_tb;
end
//////////////////////// Stimulus and Response Initial Block ////////////////
initial
begin
$readmemb("mem.dat",DUT.RAMblock.mem);

RstCheck();
//////////////////////// 1.Write Address  ////////////////////
Startcomm();
state(0);
sendData(10'b00_0001_1100); //Address  = 'h1c 
Endcomm();
//////////////////////// 1.Send Data ///////////////
Startcomm();
state(0);
sendData(10'b01_1010_1111); //Data =  'haf
Endcomm();

/////////////////////// 1.Read Address  ///////////////////////
Startcomm();
state(1);
sendData(10'b10_0001_1100); //Data af address  = 'h1c
Endcomm();
//////////////////////// 1. Read Data ///////////////////////////
Startcomm();
state(1);
sendData(10'b11_1010_0011); //read Data af address 1c
repeat(9)@(negedge clk_tb);
Endcomm();
//////////////////////// 2. Write Address /////////////////////////
Startcomm();
state(0);
sendData(10'b00_0111_1100); //Address = 'h7c 
Endcomm();

//////////////////////////// 2.Send Data///////////////////////////
Startcomm();
state(0);
sendData(10'b01_1110_1001); //Data = 'he9
Endcomm();
/////////////////////////// 2.Read Address ///////////////////////////
Startcomm();
state(1);
sendData(10'b10_0111_1100); //Data of address = 'h7c
Endcomm();
////////////////////////////// 2. Read Data /////////////////////////
Startcomm();
state(1);
sendData(10'b11_1010_1111); //read Data af address = 'h7c
repeat(9)@(negedge clk_tb);
Endcomm();
/////////////////////////// 3. write Adress //////////////////////////////
Startcomm();
state(0);
sendData(10'b00_0110_0010); //Address = 'h62 
Endcomm();

///////////////////////////// 3.Send Data ///////////////////////////////
Startcomm();
state(0);
sendData(10'b01_1100_1010); //Data = 'hca
Endcomm();
/////////////////////////////// 3.Read Address //////////////////////
Startcomm();
state(1);
sendData(10'b10_0110_0010); //Data af address = 'h62
Endcomm();
////////////////////////////////// 3.Read Data ///////////////////
Startcomm();
state(1);
sendData(10'b11_1000_1011); //read Data af address ='h62
repeat(9)@(negedge clk_tb);
Endcomm();

$stop;
end

///////////////// Start Of Communitcation Task ////////////////
task Startcomm();
begin
    SS_n_tb = 0;
    @(negedge clk_tb);
end
endtask
//////////////// End Of communication Task //////////////////
task Endcomm();
begin
    SS_n_tb = 1;
    @(negedge clk_tb);
end
endtask
/////////////////// Determine Read or Write Task ////////////////
task state(input z);
begin
    MOSI_tb = z;
    @(negedge clk_tb);
end
endtask
//////////////////// Reset Check Task ///////////////////////////
task RstCheck();
begin
    SS_n_tb = 1'b1;
    MOSI_tb = 1'b0;
    rst_n_tb = 1'b0;
    @(negedge clk_tb);
    rst_n_tb = 1'b1;
end
endtask
/////////////////////// Send Data Task ///////////////////////
task sendData(input [9:0] temp);
begin
    for(i=10;i>0;i=i-1) begin
        MOSI_tb = temp[i-1];
        @(negedge clk_tb);
    end
end
endtask
endmodule