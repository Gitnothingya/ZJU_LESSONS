onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_b_opt

do {wave.do}

view wave
view structure
view signals

do {ram_b.udo}

run -all

quit -force
