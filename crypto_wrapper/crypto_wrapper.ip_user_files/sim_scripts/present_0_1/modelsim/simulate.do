onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_15 -L axis_dwidth_converter_v1_1_14 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.present_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {present_0.udo}

run -all

quit -force
