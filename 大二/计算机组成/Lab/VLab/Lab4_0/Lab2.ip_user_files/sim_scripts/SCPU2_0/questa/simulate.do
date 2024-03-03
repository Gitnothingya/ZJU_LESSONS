onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SCPU2_0_opt

do {wave.do}

view wave
view structure
view signals

do {SCPU2_0.udo}

run -all

quit -force
