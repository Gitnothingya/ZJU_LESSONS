onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SAnti_jitter_0_opt

do {wave.do}

view wave
view structure
view signals

do {SAnti_jitter_0.udo}

run -all

quit -force
