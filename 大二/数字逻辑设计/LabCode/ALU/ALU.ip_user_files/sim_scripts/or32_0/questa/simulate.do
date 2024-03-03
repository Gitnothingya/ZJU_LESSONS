onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib or32_0_opt

do {wave.do}

view wave
view structure
view signals

do {or32_0.udo}

run -all

quit -force
