onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+or_bit_32_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.or_bit_32_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {or_bit_32_0.udo}

run -all

endsim

quit -force
