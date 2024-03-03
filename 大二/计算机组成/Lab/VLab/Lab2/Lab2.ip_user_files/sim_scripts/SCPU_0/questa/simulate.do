onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SCPU_0_opt

do {wave.do}

view wave
view structure
view signals

do {SCPU_0.udo}

run -all

quit -force
