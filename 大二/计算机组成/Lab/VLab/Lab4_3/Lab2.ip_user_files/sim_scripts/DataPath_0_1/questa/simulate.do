onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DataPath_0_opt

do {wave.do}

view wave
view structure
view signals

do {DataPath_0.udo}

run -all

quit -force
