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
ExecStep $xv_path/bin/xsim cordic_tb_updated_behav -key {Behavioral:sim_1:Functional:cordic_tb_updated} -tclbatch cordic_tb_updated.tcl -log simulate.log
