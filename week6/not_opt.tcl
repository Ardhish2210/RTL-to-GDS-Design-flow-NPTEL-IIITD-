# read modules from Verilog file
read_verilog top.v
# translate processes to netlists
proc
# remove unused cells and wires
clean

# show the generic netlist
show

# mapping to internal cell library
techmap
# mapping flip-flops to toy.lib 
dfflibmap -liberty toy.lib
# mapping logic to toy.lib 
abc -liberty toy.lib
# remove unused cells and wires
clean
#report design statistics
stat -liberty toy.lib

# Write the current design to a Verilog file
write_verilog -noattr -noexpr -nohex -nodec netlist_final_unopt.v 
