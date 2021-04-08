#!/usr/bin/bash
# This script aims to avoid any copyright issue: as delivering
# modified proprietary software may be illegal in some countries,
# this scripts unpack it on your computer, in order to avoid any
# issue.
# Please note that the Firmware file is left on your computer by the # Epson software so it does not constitute reverse engineering.
echo "Start unpacking, it may take a while..."
dd if=FWG511TL.rcx of=00_header bs=1 skip=0 count=96168
dd if=FWG511TL.rcx of=01_pdf bs=1 skip=96168 count=4666662
dd if=FWG511TL.rcx of=02_uimage bs=1 skip=4666662 count=4666726
dd if=FWG511TL.rcx of=03_kernel bs=1 skip=4666726 count=4682194
dd if=FWG511TL.rcx of=04_xz bs=1 skip=4682194 count=4682426
dd if=FWG511TL.rcx of=05_xz bs=1 skip=4682426 count=6107430
dd if=FWG511TL.rcx of=06_squashfs bs=1 skip=6107430 count=8466726
dd if=FWG511TL.rcx of=07_squashfs bs=1 skip=8466726 count=14628459
dd if=FWG511TL.rcx of=08_cisco bs=1 skip=14628459 count=16171659
dd if=FWG511TL.rcx of=09_xml bs=1 skip=16171659 count=16300783
dd if=FWG511TL.rcx of=10_sha256 bs=1 skip=16300783 count=16344993
dd if=FWG511TL.rcx of=11_StuffIt bs=1 skip=16344993 count=18654479
dd if=FWG511TL.rcx of=12_gif bs=1 skip=18654479 count=18656622
dd if=FWG511TL.rcx of=13_jpeg bs=1 skip=18656622 count=18707770
dd if=FWG511TL.rcx of=14_gif bs=1 skip=18707770 count=19828836
dd if=FWG511TL.rcx of=15_copyright bs=1 skip=19828836
echo "Done, unpacked all"
echo "Unpacking SquashFs..."
sasquatch -d 06_squashfs_out 06_squashfs
sasquatch -d 07_squashfs_out 07_squashfs
echo "Unpacked"
