# Basic\_in\_Verilog\_Design



\#1 preparing

\*.v 	 	HDL description 

tb\_\*.v		testbench

in tb\_\*.v have 	**$dumpfile("<vcd\_name>.vcd");**

&nbsp;               **$dumpvars(0, <testbench\_name>);**

\#2 execute

**iverilog -o <file\_name\_output> <file\_name>.v tb\_<file\_name>.v**

ex: iverylog sim full\_adder.v half\_adder.v tb\_full\_adder.v



**vvp <file\_name\_output>**

ex: vvp sim

=> generate <vcd\_name>.vcd

**gtkwave** <vcd\_name>.vcd

ex: gtkwave wave\_form.vcd

