onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Multi_8CH32_0_opt

do {wave.do}

view wave
view structure
view signals

do {Multi_8CH32_0.udo}

run -all

quit -force
