onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+SAnti_jitter_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SAnti_jitter_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SAnti_jitter_0.udo}

run -all

endsim

quit -force
