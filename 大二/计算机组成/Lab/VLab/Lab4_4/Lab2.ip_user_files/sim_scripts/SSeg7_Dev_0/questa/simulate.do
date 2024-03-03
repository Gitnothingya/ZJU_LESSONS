onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SSeg7_Dev_0_opt

do {wave.do}

view wave
view structure
view signals

do {SSeg7_Dev_0.udo}

run -all

quit -force
