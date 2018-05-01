# High speed recursion free CORDIC

- The folder matlab_files contains the software implementation of te algorithm for verification purposes.

- All the verilog files for the two architectures are in the verilog_files folder:
	* In verilog_files/decomposed, cordic_block.v is the top module.
	* In verilog_files/pipeline, there are two versions and top modules are as follow
	* In verilog_files/pipeline/cordic.v 
	* In verilog_files/pipeline/cordic_updated.v 

- The code has been tested and implemented on a ZedBoard Zynq-7000 ARM/FPGA SoC Development Board ( https://store.digilentinc.com/zedboard-zynq-7000-arm-fpga-soc-development-board/ ) using Xilinx Vivado 2016.4 design suite.

- Link to github repository: https://github.com/akankshabaranwal/cordic_implementation. 


### Done as a part of final project of VLSI Architecture course IIIT-H, Spring 2018 by

1. Akanksha Baranwal
2. Parv Parkhiya
3. Aalekh Jain
