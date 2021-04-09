# Epson Firmware Unpacking
The firmware above is for Epson WF-2830.

Please avoid pushing directly extarcted files to avoid possible copyright issues. Please, make a script to unpack these. If you are unsure, please open an issue.

The Repo strucure is the following:
- Hardware  for hardware hacking and hardware info
- Firmware  for firmware unpacking, hacking and recompiling

Currently, the scripts require a Linux host to run, the dependencies are the following:
dd, sasquash

The parts of the files have been extracted using dd:
$dd if=FWG511TL.rcx of=06_squashfs bs=1 skip=6107430 count=8466726

