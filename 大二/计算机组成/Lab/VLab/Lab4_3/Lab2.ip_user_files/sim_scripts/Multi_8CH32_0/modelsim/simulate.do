onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Multi_8CH32_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Multi_8CH32_0.udo}

run -all

quit -force
