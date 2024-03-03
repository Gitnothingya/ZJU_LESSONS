onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib orl_0_opt

do {wave.do}

view wave
view structure
view signals

do {orl_0.udo}

run -all

quit -force
