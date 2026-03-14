# The following variables contains the files used by the different stages of the build process.
set(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemblePreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X/bl_romops.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X/hwsettings.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../CBUS_PIC_Bootloader.X/main.c")
set_source_files_properties(${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_link)
set(CBUS_PIC_Bootloader_default_image_name "default.elf")
set(CBUS_PIC_Bootloader_default_image_base_name "default")

# The output directory of the final image.
set(CBUS_PIC_Bootloader_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/CBUS_PIC_Bootloader")

# The full path to the final image.
set(CBUS_PIC_Bootloader_default_full_path_to_image ${CBUS_PIC_Bootloader_default_output_dir}/${CBUS_PIC_Bootloader_default_image_name})

# Potential output file extensions
set(output_extensions
    .hex
    .hxl
    .mum
    .o
    .sdb
    .sym
    .cmf)
list(TRANSFORM output_extensions PREPEND "${CBUS_PIC_Bootloader_default_output_dir}/${CBUS_PIC_Bootloader_default_image_base_name}")
