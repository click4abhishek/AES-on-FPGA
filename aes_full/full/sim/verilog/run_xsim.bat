
call xelab xil_defaultlib.apatb_AES_Encrypt_top -prj AES_Encrypt.prj --initfile "F:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s AES_Encrypt -debug wave
call xsim --noieeewarnings AES_Encrypt -tclbatch AES_Encrypt.tcl

