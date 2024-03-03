onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib addc_32_0_opt

do {wave.do}

view wave
view structure
view signals

do {addc_32_0.udo}

run -all

quit -force
