*** Title: VCO-based ADC
*** Structure: Open-loop first-order VCO-based ADC
*** Design by: Dinh-Toi Nguyen at ITI-VNU (Vietnam National University-ITI)

*** Design Flow: MATLAB (mathematical structure 	) -> Xschem/Spice -> preprocessing encoding: bash file/python -> Verilog code -> Filter (MATLAB)

1. MATLAB
- In folder matlab
- Including 2 files: open_loop.m & close_loop.m

2. circuit
- library
	+ Library of devices: MOSFET, Ring Osc, VCO, DFF, ...
- test_bench
	+ Simulation device
- verilog
	+ Design DFF, XOR and test bench
- MATLAB
	+ Check data
3. layout
- Design physical circuit from NMOS, PMOS.
