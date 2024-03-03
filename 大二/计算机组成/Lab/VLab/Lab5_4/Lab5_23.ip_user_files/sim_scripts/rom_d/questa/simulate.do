onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rom_d_opt

do {wave.do}

view wave
view structure
view signals

do {rom_d.udo}

run -all

quit -force
