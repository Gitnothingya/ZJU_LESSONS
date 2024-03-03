onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib MIO_BUS_0_opt

do {wave.do}

view wave
view structure
view signals

do {MIO_BUS_0.udo}

run -all

quit -force
