include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(CBUS_PIC_Bootloader_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemble)
add_library(CBUS_PIC_Bootloader_default_default_XC8_assemble OBJECT ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemble})
    CBUS_PIC_Bootloader_default_default_XC8_assemble_rule(CBUS_PIC_Bootloader_default_default_XC8_assemble)
    list(APPEND CBUS_PIC_Bootloader_default_library_list "$<TARGET_OBJECTS:CBUS_PIC_Bootloader_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(CBUS_PIC_Bootloader_default_default_XC8_assemblePreprocess OBJECT ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_assemblePreprocess})
    CBUS_PIC_Bootloader_default_default_XC8_assemblePreprocess_rule(CBUS_PIC_Bootloader_default_default_XC8_assemblePreprocess)
    list(APPEND CBUS_PIC_Bootloader_default_library_list "$<TARGET_OBJECTS:CBUS_PIC_Bootloader_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_compile)
add_library(CBUS_PIC_Bootloader_default_default_XC8_compile OBJECT ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_compile})
    CBUS_PIC_Bootloader_default_default_XC8_compile_rule(CBUS_PIC_Bootloader_default_default_XC8_compile)
    list(APPEND CBUS_PIC_Bootloader_default_library_list "$<TARGET_OBJECTS:CBUS_PIC_Bootloader_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(CBUS_PIC_Bootloader_default_image_9DI2lrV_ ${CBUS_PIC_Bootloader_default_library_list})

set_target_properties(CBUS_PIC_Bootloader_default_image_9DI2lrV_ PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${CBUS_PIC_Bootloader_default_output_dir}")
target_link_libraries(CBUS_PIC_Bootloader_default_image_9DI2lrV_ PRIVATE ${CBUS_PIC_Bootloader_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
CBUS_PIC_Bootloader_default_link_rule( CBUS_PIC_Bootloader_default_image_9DI2lrV_)


