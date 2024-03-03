onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib adc_1_opt

do {wave.do}

view wave
view structure
view signals

do {adc_1.udo}

run -all

quit -force
