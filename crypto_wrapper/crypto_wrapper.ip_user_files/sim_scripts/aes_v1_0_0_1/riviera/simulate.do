onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+aes_v1_0_0 -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_15 -L axis_dwidth_converter_v1_1_14 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.aes_v1_0_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {aes_v1_0_0.udo}

run -all

endsim

quit -force
