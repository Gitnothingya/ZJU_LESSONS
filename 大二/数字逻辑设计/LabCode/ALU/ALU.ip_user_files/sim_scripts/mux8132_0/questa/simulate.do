onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mux8132_0_opt

do {wave.do}

view wave
view structure
view signals

do {mux8132_0.udo}

run -all

quit -force
