vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/mux4x3/ipshared/20f2/src/and_gate_3.v" \
"../../../bd/mux4x3/ip/mux4x3_and_gate_3_0_0/sim/mux4x3_and_gate_3_0_0.v" \
"../../../bd/mux4x3/ip/mux4x3_and_gate_3_0_1/sim/mux4x3_and_gate_3_0_1.v" \
"../../../bd/mux4x3/ip/mux4x3_and_gate_3_0_2/sim/mux4x3_and_gate_3_0_2.v" \
"../../../bd/mux4x3/ip/mux4x3_and_gate_3_0_3/sim/mux4x3_and_gate_3_0_3.v" \
"../../../bd/mux4x3/ipshared/8f3f/src/or_gate_4.v" \
"../../../bd/mux4x3/ip/mux4x3_or_gate_4_0_0/sim/mux4x3_or_gate_4_0_0.v" \
"../../../bd/mux4x3/sim/mux4x3.v" \
"../../../bd/mux4x3/ipshared/cecf/src/not_gate.v" \
"../../../bd/mux4x3/ip/mux4x3_not_gate_0_0/sim/mux4x3_not_gate_0_0.v" \
"../../../bd/mux4x3/ip/mux4x3_not_gate_0_1/sim/mux4x3_not_gate_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

