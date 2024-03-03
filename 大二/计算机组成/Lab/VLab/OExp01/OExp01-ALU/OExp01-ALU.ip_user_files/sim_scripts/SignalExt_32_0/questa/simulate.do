onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SignalExt_32_0_opt

do {wave.do}

view wave
view structure
view signals

do {SignalExt_32_0.udo}

run -all

quit -force
