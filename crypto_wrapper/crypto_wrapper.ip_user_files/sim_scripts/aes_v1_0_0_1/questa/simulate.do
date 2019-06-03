onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib aes_v1_0_0_opt

do {wave.do}

view wave
view structure
view signals

do {aes_v1_0_0.udo}

run -all

quit -force
