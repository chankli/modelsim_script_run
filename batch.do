

vlib work
vmap work work


vlog   -incr -mfcu -work work "./counter.v"

vlog   -incr -mfcu -work work "./tb_counter.v"

vsim -vopt work.tb_counter

run 1 ms