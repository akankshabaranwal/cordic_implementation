#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto e5cf6d8dd1bc43e29cc5f816dc706ca9 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot cordic_tb_updated_behav xil_defaultlib.cordic_tb_updated xil_defaultlib.glbl -log elaborate.log
