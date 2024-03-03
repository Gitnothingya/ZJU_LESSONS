onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib nor32_0_opt

do {wave.do}

view wave
view structure
view signals

do {nor32_0.udo}

run -all

quit -force
