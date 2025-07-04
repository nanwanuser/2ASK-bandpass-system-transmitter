onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fir -L xil_defaultlib -L xpm -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L fir_compiler_v7_2_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fir.udo}

run -all

endsim

quit -force
