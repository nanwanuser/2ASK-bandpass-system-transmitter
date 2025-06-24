onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_opt

do {wave.do}

view wave
view structure
view signals

do {dds.udo}

run -all

quit -force
