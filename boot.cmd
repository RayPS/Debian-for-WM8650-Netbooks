display init force
mmcinit 0
textout -1 -1 \"Loading kernel...\" FFFFFF
fatload mmc 0 0 /uzImage.bin
textout -1 -1 \"Booting...\" FFFFFF
setenv bootargs mem=212M root=/dev/mmcblk0p2 noinitrd rw console=ttyWMT0,115200 console=tty1 earlyprintk rootwait audit=0
bootm 0
