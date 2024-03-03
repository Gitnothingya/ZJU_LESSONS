onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+srl_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.srl_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {srl_0.udo}

run -all

endsim

quit -force
