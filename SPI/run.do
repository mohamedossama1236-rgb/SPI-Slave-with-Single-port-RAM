vlib work
vlog RAM.v SPI.v SPIWrapper.v SPI_tb.v
vsim -voptargs=+acc work.SPI_tb
add wave *
add wave -position insertpoint  \
sim:/SPI_tb/DUT/SPIbLock/tx_data \
sim:/SPI_tb/DUT/SPIbLock/tx_valid \
sim:/SPI_tb/DUT/SPIbLock/rx_data \
sim:/SPI_tb/DUT/SPIbLock/rx_valid \
sim:/SPI_tb/DUT/SPIbLock/current_state \
sim:/SPI_tb/DUT/SPIbLock/next_state
add wave -position insertpoint  \
sim:/SPI_tb/DUT/RAMblock/mem \
sim:/SPI_tb/DUT/RAMblock/addr
add wave -position insertpoint  \
sim:/SPI_tb/DUT/SPIbLock/counter1
add wave -position insertpoint  \
sim:/SPI_tb/DUT/SPIbLock/counter2
add wave -position insertpoint  \
sim:/SPI_tb/DUT/RAMblock/din
add wave -position insertpoint  \
sim:/SPI_tb/DUT/RAMblock/dout
run -all
#quit -sim