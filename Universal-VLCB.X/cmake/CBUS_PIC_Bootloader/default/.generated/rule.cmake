# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "/home/tom/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(CBUS_PIC_Bootloader_default_default_XC8_assemble_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=18F26K80"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18F-K_DFP/1.15.303/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=bytewrite"
        "-O1"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "--fill=0"
        "-mcodeoffset=0x800"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F26K80__"
        PRIVATE "__DEBUG=1"
        PRIVATE "__MPLAB_DEBUGGER_PK4=1"
        PRIVATE "_18F66K80_FAMILY_"
        PRIVATE "HARDWARE=HW_CANMIO"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCB-defs"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCBlib_PIC"
        PRIVATE "../../CBUS_PIC_Bootloader.X/home/tom/projects/PIC/CBUS_PIC_Bootloader.X"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUSlib"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X")
endfunction()
function(CBUS_PIC_Bootloader_default_default_XC8_assemblePreprocess_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=18F26K80"
        "-x"
        "assembler-with-cpp"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18F-K_DFP/1.15.303/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=bytewrite"
        "-O1"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-mcodeoffset=0x800"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F26K80__"
        PRIVATE "__DEBUG=1"
        PRIVATE "__MPLAB_DEBUGGER_PK4=1"
        PRIVATE "_18F66K80_FAMILY_"
        PRIVATE "HARDWARE=HW_CANMIO"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCB-defs"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCBlib_PIC"
        PRIVATE "../../CBUS_PIC_Bootloader.X/home/tom/projects/PIC/CBUS_PIC_Bootloader.X"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUSlib"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X")
endfunction()
function(CBUS_PIC_Bootloader_default_default_XC8_compile_rule target)
    set(options
        "-c"
        "${MP_EXTRA_CC_PRE}"
        "-mcpu=18F26K80"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18F-K_DFP/1.15.303/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=bytewrite"
        "-O1"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-mcodeoffset=0x800"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F26K80__"
        PRIVATE "__DEBUG=1"
        PRIVATE "__MPLAB_DEBUGGER_PK4=1"
        PRIVATE "_18F66K80_FAMILY_"
        PRIVATE "HARDWARE=HW_CANMIO"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCB-defs"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCBlib_PIC"
        PRIVATE "../../CBUS_PIC_Bootloader.X/home/tom/projects/PIC/CBUS_PIC_Bootloader.X"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUSlib"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X")
endfunction()
function(CBUS_PIC_Bootloader_default_link_rule target)
    set(options
        "-Wl,-Map=mem.map"
        "${MP_EXTRA_LD_PRE}"
        "-mcpu=18F26K80"
        "${DEBUGGER_NAME}"
        "-Wl,--defsym=__MPLAB_BUILD=1"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18F-K_DFP/1.15.303/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=bytewrite"
        "-O1"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-mcodeoffset=0x800"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto"
        "-mrom=default"
        "-mram=default,ffd-fff"
        "-Wl,--memorysummary,memoryfile.xml")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default"
        PRIVATE "_18F66K80_FAMILY_"
        PRIVATE "HARDWARE=HW_CANMIO")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCB-defs"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../VLCBlib_PIC"
        PRIVATE "../../CBUS_PIC_Bootloader.X/home/tom/projects/PIC/CBUS_PIC_Bootloader.X"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUSlib"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X")
endfunction()
