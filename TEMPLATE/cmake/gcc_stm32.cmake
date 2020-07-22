include("stm32_helpers")

# Extract Device Family from STM32_CHIP
IF(NOT STM32_FAMILY)
    MESSAGE(STATUS "Determining STM32_FAMILY from STM32_CHIP")
    IF(NOT CHIP)
        MESSAGE(FATAL_ERROR "CHIP is not defined")
    ELSE()
        STRING(REGEX REPLACE "^[sS][tT][mM]32([fF][0-47]).+$" "\\1" STM32_FAMILY ${CHIP})
        STRING(TOUPPER ${STM32_FAMILY} STM32_FAMILY)
        MESSAGE(STATUS "STM32 Family Selected: ${STM32_FAMILY}")
    ENDIF()
ENDIF()


FUNCTION(STM32_ADD_HEX_BIN_TARGETS TARGET)
    IF(EXECUTABLE_OUTPUT_PATH)
        SET(FILENAME "${EXECUTABLE_OUTPUT_PATH}/${TARGET}")
    ELSE()
        SET(FILENAME "${TARGET}")
    ENDIF()
    ADD_CUSTOM_TARGET(${TARGET}.hex ALL DEPENDS ${TARGET} COMMAND ${CMAKE_OBJCOPY} -Oihex ${FILENAME} ${FILENAME}.hex)
    ADD_CUSTOM_TARGET(${TARGET}.bin ALL DEPENDS ${TARGET} COMMAND ${CMAKE_OBJCOPY} -Obinary ${FILENAME} ${FILENAME}.bin)
ENDFUNCTION()

# INCLUDE DEVICE SPECIFIC CMAKE PARAMETERS
STRING(TOLOWER ${STM32_FAMILY} STM32_FAMILY_LOWER)
INCLUDE("gcc_${STM32_FAMILY_LOWER}")

FUNCTION(STM32_SET_FLASH_PARAMS TARGET STM32_FLASH_SIZE STM32_RAM_SIZE STM32_CCRAM_SIZE STM32_MIN_STACK_SIZE STM32_MIN_HEAP_SIZE STM32_FLASH_ORIGIN STM32_RAM_ORIGIN STM32_CCRAM_ORIGIN)
    IF(NOT STM32_LINKER_SCRIPT)
        MESSAGE(STATUS "No linker script specified, generating default")
        INCLUDE(stm32_linker)
        FILE(WRITE ${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld ${STM32_LINKER_SCRIPT_TEXT})
    ELSE()
        CONFIGURE_FILE(${STM32_LINKER_SCRIPT} ${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld)
    ENDIF()

    GET_TARGET_PROPERTY(TARGET_LD_FLAGS ${TARGET} LINK_FLAGS)
    IF(TARGET_LD_FLAGS)
        SET(TARGET_LD_FLAGS "\"-T${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld\" ${TARGET_LD_FLAGS}")
    ELSE()
        SET(TARGET_LD_FLAGS "\"-T${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld\"")
    ENDIF()
    SET_TARGET_PROPERTIES(${TARGET} PROPERTIES LINK_FLAGS ${TARGET_LD_FLAGS})
ENDFUNCTION()

FUNCTION(STM32_SET_FLASH_PARAMS TARGET FLASH_SIZE RAM_SIZE)
    IF(NOT STM32_FLASH_ORIGIN)
        SET(STM32_FLASH_ORIGIN "0x08000000")
    ENDIF()

    IF(NOT STM32_RAM_ORIGIN)
        SET(STM32_RAM_ORIGIN "0x20000000")
    ENDIF()

    IF(NOT STM32_MIN_STACK_SIZE)
        SET(STM32_MIN_STACK_SIZE "0x200")
    ENDIF()

    IF(NOT STM32_MIN_HEAP_SIZE)
        SET(STM32_MIN_HEAP_SIZE "0")
    ENDIF()

    IF(NOT STM32_CCRAM_ORIGIN)
        SET(STM32_CCRAM_ORIGIN "0x10000000")
    ENDIF()

    IF(NOT STM32_LINKER_SCRIPT)
        MESSAGE(STATUS "No linker script specified, generating default")
        INCLUDE(stm32_linker)
        FILE(WRITE ${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld ${STM32_LINKER_SCRIPT_TEXT})
    ELSE()
        CONFIGURE_FILE(${STM32_LINKER_SCRIPT} ${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld)
    ENDIF()

    GET_TARGET_PROPERTY(TARGET_LD_FLAGS ${TARGET} LINK_FLAGS)
    IF(TARGET_LD_FLAGS)
        SET(TARGET_LD_FLAGS "\"-T${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld\" ${TARGET_LD_FLAGS}")
    ELSE()
        SET(TARGET_LD_FLAGS "\"-T${CMAKE_CURRENT_BINARY_DIR}/bsp/${TARGET}_flash.ld\"")
    ENDIF()
    SET_TARGET_PROPERTIES(${TARGET} PROPERTIES LINK_FLAGS ${TARGET_LD_FLAGS})
ENDFUNCTION()

FUNCTION(STM32_SET_TARGET_PROPERTIES TARGET)
    IF(NOT STM32_CHIP_TYPE)
        IF(NOT CHIP)
            MESSAGE(FATAL_ERROR "CHIP is not defined")
        ELSE()
            STM32_GET_CHIP_TYPE(${CHIP} STM32_CHIP_TYPE)
        ENDIF()
    ENDIF()
    STM32_SET_CHIP_DEFINITIONS(${TARGET} ${STM32_CHIP_TYPE})
    IF(((NOT STM32_FLASH_SIZE) OR (NOT STM32_RAM_SIZE)) AND (NOT STM32_CHIP))
        MESSAGE(FATAL_ERROR "Cannot get chip parameters. Please specify either CHIP or STM32_FLASH_SIZE/STM32_RAM_SIZE")
    ENDIF()
    IF((NOT STM32_FLASH_SIZE) OR (NOT STM32_RAM_SIZE))
        STM32_GET_CHIP_PARAMETERS(${CHIP} STM32_FLASH_SIZE STM32_RAM_SIZE STM32_CCRAM_SIZE)
        IF((NOT STM32_FLASH_SIZE) OR (NOT STM32_RAM_SIZE))
            MESSAGE(FATAL_ERROR "Unknown chip: ${CHIP}. Try to use STM32_FLASH_SIZE/STM32_RAM_SIZE directly.")
        ENDIF()
    ENDIF()
    STM32_SET_FLASH_PARAMS(${TARGET} ${STM32_FLASH_SIZE} ${STM32_RAM_SIZE})
    MESSAGE(STATUS "${CHIP} has ${STM32_FLASH_SIZE}iB of flash memory and ${STM32_RAM_SIZE}iB of RAM")
ENDFUNCTION()

FUNCTION(STM32_SET_HSE_VALUE TARGET STM32_HSE_VALUE)
    GET_TARGET_PROPERTY(TARGET_DEFS ${TARGET} COMPILE_DEFINITIONS)
    IF(TARGET_DEFS)
        SET(TARGET_DEFS "HSE_VALUE=${STM32_HSE_VALUE};${TARGET_DEFS}")
    ELSE()
        SET(TARGET_DEFS "HSE_VALUE=${STM32_HSE_VALUE}")
    ENDIF()
    SET_TARGET_PROPERTIES(${TARGET} PROPERTIES COMPILE_DEFINITIONS "${TARGET_DEFS}")
ENDFUNCTION()

MACRO(STM32_GENERATE_LIBRARIES NAME SOURCES LIBRARIES)
    STRING(TOLOWER ${STM32_FAMILY} STM32_FAMILY_LOWER)
    FOREACH(CHIP_TYPE ${STM32_CHIP_TYPES})
        STRING(TOLOWER ${CHIP_TYPE} CHIP_TYPE_LOWER)
        LIST(APPEND ${LIBRARIES} ${NAME}_${STM32_FAMILY_LOWER}_${CHIP_TYPE_LOWER})
        ADD_LIBRARY(${NAME}_${STM32_FAMILY_LOWER}_${CHIP_TYPE_LOWER} ${SOURCES})
        STM32_SET_CHIP_DEFINITIONS(${NAME}_${STM32_FAMILY_LOWER}_${CHIP_TYPE_LOWER} ${CHIP_TYPE})
    ENDFOREACH()
ENDMACRO()
