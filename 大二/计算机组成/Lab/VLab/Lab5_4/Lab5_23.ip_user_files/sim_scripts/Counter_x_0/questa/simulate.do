onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Counter_x_0_opt

do {wave.do}

view wave
view structure
view signals

do {Counter_x_0.udo}

run -all

quit -force
