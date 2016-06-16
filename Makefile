HDL = ghdl
VIEW = gtkview

.PHONY: all
all: adder_tb

adder_tb: adder

%: %.vhdl
	$(HDL) -a $< && $(HDL) -e $@ && $(HDL) -r $@
%: %.vhd
	$(HDL) -a $< && $(HDL) -e $@ && $(HDL) -r $@
