onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SPIO_0_opt

do {wave.do}

view wave
view structure
view signals

do {SPIO_0.udo}

run -all

quit -force
