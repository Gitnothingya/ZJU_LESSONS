onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib or_bit_32_0_opt

do {wave.do}

view wave
view structure
view signals

do {or_bit_32_0.udo}

run -all

quit -force
