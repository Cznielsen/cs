cmd_/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb := mkdir -p /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/ ; arm-poky-linux-gnueabi-gcc -E -Wp,-MD,/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.dts.tmp /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dts ; ./scripts/dtc/dtc -O dtb -o /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb -b 0 -i /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/ -Wno-unit_address_vs_reg -d /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.d.dtc.tmp /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.dts.tmp ; cat /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.d.pre.tmp /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.d.dtc.tmp > /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/.plat_drv-overlay.dtb.d

source_/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb := /home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dts

deps_/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb := \

/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb: $(deps_/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb)

$(deps_/home/stud/hal/i3hal_f2018_weeabros/exercise6/del3/plat_drv-overlay.dtb):
