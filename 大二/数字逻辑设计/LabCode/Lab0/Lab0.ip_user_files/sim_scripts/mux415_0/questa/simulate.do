onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mux415_0_opt

do {wave.do}

view wave
view structure
view signals

do {mux415_0.udo}

run -all

quit -force
