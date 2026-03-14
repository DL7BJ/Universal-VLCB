# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.cmf"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.hex"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.hxl"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.mum"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.o"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.sdb"
  "/home/tom/projects/PIC/Universal-VLCB/Universal-VLCB.X/out/CBUS_PIC_Bootloader/default.sym"
  )
endif()
