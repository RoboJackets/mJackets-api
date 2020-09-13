# MIT License

# Copyright (c) 2020 Georgia Tech RoboJackets
# Copyright (c) 2012-2017 Konstantin Oblaukhov

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

set(HAL_DRIVERS_F0
    adc can cec comp cortex crc dac dma exti flash gpio i2c i2s irda iwdg pcd 
    pwr rcc rtc smartcard smbus spi tim tsc uart usart wwdg
)
set(HAL_EX_DRIVERS_F0
    adc crc dac flash i2c pcd pwr rcc rtc smartcard spi tim uart usart
)
set(HAL_LL_DRIVERS_F0
    adc comp crc crs dac dma exti gpio i2c pwr rcc rtc spi tim usart usb utils
)

set(HAL_DRIVERS_F1
    adc can cec cortex crc dac dma eth exti flash gpio hcd i2c i2s irda iwdg 
    mmc nand nor pccard pcd pwr rcc rtc sd smartcard spi sram tim uart usart 
    wwdg
)
set(HAL_EX_DRIVERS_F1
    adc dac flash gpio pcd rcc rtc tim
)
set(HAL_LL_DRIVERS_F1
    adc crc dac dma exti fsmc gpio i2c pwr rcc rtc sdmmc spi tim usart usb utils
)

set(HAL_DRIVERS_F2
    adc can cortex crc cryp dac dcmi dma eth exti flash gpio hash hcd i2c i2s 
    irda iwdg mmc nand nor pccard pcd pwr rcc rng rtc sd smartcard spi sram tim 
    uart usart wwdg
)
set(HAL_EX_DRIVERS_F2
    adc dac dcmi dma flash pcd pwr rcc rtc tim
)
set(HAL_LL_DRIVERS_F2
    adc crc dac dma exti fsmc gpio i2c pwr rcc rng rtc sdmmc spi tim usart usb 
    utils
)

set(HAL_DRIVERS_F3
    adc can cec comp cortex crc dac dma exti flash gpio hrtim i2c i2s irda iwdg 
    nand nor opamp pccard pcd pwr rcc rtc sdadc smartcard smbus spi sram tim tsc 
    uart usart wwdg
)
set(HAL_EX_DRIVERS_F3
    adc crc dac flash i2c i2s opamp pcd pwr rcc rtc smartcard spi tim uart usart
)
set(HAL_LL_DRIVERS_F3
    adc comp crc dac dma exti fmc gpio hrtim i2c opamp pwr rcc rtc spi tim usart 
    usb utils
)

set(HAL_DRIVERS_F4
    adc can cec cortex crc cryp dac dcmi dfsdm dma dma2d dsi eth exti flash
    flash_ramfunc fmpi2c gpio hash hcd i2c i2s irda iwdg lptim ltdc mmc nand nor 
    pccard pcd pwr qspi rcc rng rtc sai sd sdram smartcard smbus spdifrx spi 
    sram tim uart usart wwdg
)
set(HAL_EX_DRIVERS_F4
    adc cryp dac dcmi dma flash fmpi2c hash i2c i2s ltdc pcd pwr rcc rtc sai tim 
)
set(HAL_LL_DRIVERS_F4
    adc crc dac dma dma2d exti fmc fsmc gpio i2c lptim pwr rcc rng rtc sdmmc spi 
    tim usart usb utils 
)

set(HAL_DRIVERS_F7
    adc can cec cortex crc cryp dac dcmi dfsdm dma dma2d dsi eth exti flash 
    gpio hash hcd i2c i2s irda iwdg jpeg lptim ltdc mdios mmc nand nor pcd pwr 
    qspi rcc rng rtc sai sd sdram smartcard smbus spdifrx spi sram tim uart 
    usart wwdg
)
set(HAL_EX_DRIVERS_F7
    adc crc cryp dac dcmi dma flash hash i2c ltdc pcd pwr rcc rtc sai smartcard 
    spi tim uart
)
set(HAL_LL_DRIVERS_F7
    adc crc dac dma dma2d exti fmc gpio i2c lptim pwr rcc rng rtc sdmmc spi tim 
    usart usb utils
)

set(HAL_DRIVERS_G0
    adc cec comp cortex crc cryp dac dma exti flash gpio i2c i2s irda iwdg lptim 
    pwr rcc rng rtc smartcard smbus spi tim uart usart wwdg
)
set(HAL_EX_DRIVERS_G0
    adc crc cryp dac dma flash i2c pwr rcc rtc smartcard spi tim uart usart
)
set(HAL_LL_DRIVERS_G0
    adc comp crc dac dma exti gpio i2c lptim lpuart pwr rcc rng rtc spi tim ucpd 
    usart utils
)

set(HAL_DRIVERS_G4
    adc comp cordic cortex crc cryp dac dma exti fdcan flash flash_ramfunc fmac 
    gpio hrtim i2c i2s irda iwdg lptim nand nor opamp pcd pwr qspi rcc rng rtc 
    sai smartcard smbus spi sram tim uart usart wwdg
)
set(HAL_EX_DRIVERS_G4
    adc crc cryp dac dma flash i2c opamp pcd pwr rcc rtc sai smartcard spi tim 
    uart usart
)
set(HAL_LL_DRIVERS_G4
    adc comp cordic crc crs dac dma exti fmac fmc gpio hrtim i2c lptim lpuart 
    opamp pwr rcc rng rtc spi tim ucpd usart usb utils
)

set(HAL_DRIVERS_H7
    adc cec comp cortex crc cryp dac dcmi dfsdm dma dma2d dsi dts eth exti fdcan
    flash gfxmmu gpio hash hrtim hsem i2c i2s irda iwdg jpeg lptim ltdc mdios 
    mdma mmc nand nor opamp ospi otfdec pcd pssi pwr qspi ramecc rcc rng rtc sai 
    sd sdram smartcard smbus spdifrx spi sram swpmi tim uart usart wwdg
)
set(HAL_EX_DRIVERS_H7
    adc crc cryp dac dfsdm dma eth flash hash i2c i2s ltdc mmc opamp pcd pwr rcc 
    rng rtc sai sd smartcard spi tim uart usart
)
set(HAL_LL_DRIVERS_H7
    adc bdma comp crc crs dac delayblock dma dma2d exti fmc gpio hrtim i2c lptim 
    lpuart mdma opamp pwr rcc rng rtc sdmmc spi swpmi tim usart usb utils
)

set(HAL_DRIVERS_L0
    adc comp cortex crc cryp dac dma firewall flash flash_ramfunc gpio i2c i2s 
    irda iwdg lcd lptim pcd pwr rcc rng rtc smartcard smbus spi tim tsc uart 
    usart wwdg
)
set(HAL_EX_DRIVERS_L0
    adc comp crc cryp dac flash i2c pcd pwr rcc rtc smartcard tim uart
)
set(HAL_LL_DRIVERS_L0
    adc comp crc crs dac dma exti gpio i2c lptim lpuart pwr rcc rng rtc spi tim 
    usart usb utils
)

set(HAL_DRIVERS_L1
    adc comp cortex crc cryp dac dma flash flash_ramfunc gpio i2c i2s irda iwdg 
    lcd nor opamp pcd pwr rcc rtc sd smartcard spi sram tim uart usart wwdg
)
set(HAL_EX_DRIVERS_L1
    adc cryp dac flash opamp pcd pcd pwr rcc rtc tim
)
set(HAL_LL_DRIVERS_L1
    adc comp crc dac dma exti fsmc gpio i2c opamp pwr rcc rtc sdmmc spi tim 
    usart usb utils
)

set(HAL_DRIVERS_L4
    adc can comp cortex crc cryp dac dcmi dfsdm dma dma2d dsi exti firewall 
    flash flash_ramfunc gfxmmu gpio hash hcd i2c irda iwdg lcd lptim ltdc mmc 
    nand nor opamp ospi pcd pka pssi pwr qspi rcc rng rtc sai sd smartcard smbus 
    spi sram swpmi tim tsc uart usart wwdg
)
set(HAL_EX_DRIVERS_L4
    adc crc cryp dac dfsdm dma flash hash i2c ltdc mmc opamp pcd pwr rcc rng rtc 
    sai sd smartcard spi tim uart usart
)
set(HAL_LL_DRIVERS_L4
    adc comp crc crs dac dma dma2d exti fmc gpio i2c lptim lpuart opamp pka pwr 
    rcc rng rtc sdmmc spi swpmi tim usart usb utils
)

if(NOT HAL_FIND_COMPONENTS)
    set(HAL_FIND_COMPONENTS
        STM32F0 STM32F1 STM32F2 STM32F3 STM32F4 STM32F7
        STM32H7
        STM32G0 STM32G4
        STM32L0 STM32L1 STM32L4 STM32L5
        STM32WB
    )
endif()

foreach(COMP ${HAL_FIND_COMPONENTS})
    string(TOLOWER ${COMP} COMP_L)
    string(TOUPPER ${COMP} COMP_U)
    
    string(REGEX MATCH "^STM32([FGHL][0-9]).*$" COMP_U ${COMP_U})
    
    if(NOT CMAKE_MATCH_1)
        message(FATAL_ERROR "Unknown HAL component: ${COMP}")
    endif()
        
    set(FAMILY ${CMAKE_MATCH_1})
    string(TOLOWER ${FAMILY} FAMILY_L)
    
    if(NOT MJACKETS_HAL_PATH)
        set(MJACKETS_HAL_PATH ${MJACKETS_PATH}/drivers/hal CACHE PATH "Path to mJackets HAL")
    endif()
        
    find_path(HAL_${FAMILY}_PATH
        NAMES Inc/stm32${FAMILY_L}xx_hal.h
        PATHS "${MJACKETS_HAL_PATH}/stm32${FAMILY_L}xx_hal_driver"
        NO_DEFAULT_PATH
    )
    
    find_path(HAL_${FAMILY}_INCLUDE
        NAMES stm32${FAMILY_L}xx_hal.h
        PATHS "${HAL_${FAMILY}_PATH}/Inc"
        NO_DEFAULT_PATH
    )
    find_file(HAL_${FAMILY}_SOURCE
        NAMES stm32${FAMILY_L}xx_hal.c
        PATHS "${HAL_${FAMILY}_PATH}/Src"
        NO_DEFAULT_PATH
    )
    
    if ((NOT HAL_${FAMILY}_INCLUDE) OR (NOT HAL_${FAMILY}_SOURCE))
        set(HAL_${COMP}_FOUND FALSE)
        continue()
    endif()

    if(NOT (TARGET HAL::STM32::${FAMILY}))
        add_library(HAL::STM32::${FAMILY} INTERFACE IMPORTED)
        target_link_libraries(HAL::STM32::${FAMILY} INTERFACE STM32::${FAMILY} CMSIS::STM32::${FAMILY})
        target_include_directories(HAL::STM32::${FAMILY} INTERFACE "${HAL_${FAMILY}_INCLUDE}")
        target_sources(HAL::STM32::${FAMILY} INTERFACE "${HAL_${FAMILY}_SOURCE}")
    endif()
    
    foreach(DRV ${HAL_DRIVERS_${FAMILY}})
        string(TOLOWER ${DRV} DRV_L)
        string(TOUPPER ${DRV} DRV)
        
        find_file(HAL_${FAMILY}_${DRV}_SOURCE
            NAMES stm32${FAMILY_L}xx_hal_${DRV_L}.c
            PATHS "${HAL_${FAMILY}_PATH}/Src"
            NO_DEFAULT_PATH
        )
        list(APPEND HAL_${FAMILY}_SOURCES "${HAL_${FAMILY}_${DRV}_SOURCE}")
        if(NOT HAL_${FAMILY}_${DRV}_SOURCE)
            message(WARNING "Cannot find ${DRV} driver for ${COMP}")
        endif()
                
        if(HAL_${FAMILY}_${DRV}_SOURCE AND (NOT (TARGET HAL::STM32::${FAMILY}::${DRV})))
            add_library(HAL::STM32::${FAMILY}::${DRV} INTERFACE IMPORTED)
            target_link_libraries(HAL::STM32::${FAMILY}::${DRV} INTERFACE HAL::STM32::${FAMILY})
            target_sources(HAL::STM32::${FAMILY}::${DRV} INTERFACE "${HAL_${FAMILY}_${DRV}_SOURCE}")
            list(APPEND HAL_${FAMILY}_DRIVERS HAL::STM32::${FAMILY}::${DRV})
        endif()
                
        if(HAL_${FAMILY}_${DRV}_SOURCE AND (${DRV_L} IN_LIST HAL_EX_DRIVERS_${FAMILY}))
            find_file(HAL_${FAMILY}_${DRV}_EX_SOURCE
                NAMES stm32${FAMILY_L}xx_hal_${DRV_L}_ex.c
                PATHS "${HAL_${FAMILY}_PATH}/Src"
                NO_DEFAULT_PATH
            )
            list(APPEND HAL_${FAMILY}_SOURCES "${HAL_${FAMILY}_${DRV}_EX_SOURCE}")
            if(NOT HAL_${FAMILY}_${DRV}_EX_SOURCE)
                message(WARNING "Cannot find ${DRV}Ex driver for ${COMP}")
            endif()
            
            if((TARGET HAL::STM32::${FAMILY}::${DRV}) AND (NOT (TARGET HAL::STM32::${FAMILY}::${DRV}Ex)))
                add_library(HAL::STM32::${FAMILY}::${DRV}Ex INTERFACE IMPORTED)
                target_link_libraries(HAL::STM32::${FAMILY}::${DRV}Ex INTERFACE HAL::STM32::${FAMILY}::${DRV})
                target_sources(HAL::STM32::${FAMILY}::${DRV}Ex INTERFACE "${HAL_${FAMILY}_${DRV}_EX_SOURCE}")
                list(APPEND HAL_${FAMILY}_DRIVERS_EX HAL::STM32::${FAMILY}::${DRV}Ex)
            endif()
        endif()
    endforeach()
    
    foreach(DRV ${HAL_LL_DRIVERS_${FAMILY}})
        string(TOLOWER ${DRV} DRV_L)
        string(TOUPPER ${DRV} DRV)
        
        find_file(HAL_${FAMILY}_${DRV}_LL_SOURCE
            NAMES stm32${FAMILY_L}xx_ll_${DRV_L}.c
            PATHS "${HAL_${FAMILY}_PATH}/Src"
            NO_DEFAULT_PATH
        )
        list(APPEND HAL_${FAMILY}_SOURCES "${HAL_${FAMILY}_${DRV}_LL_SOURCE}")
        if(NOT HAL_${FAMILY}_${DRV}_LL_SOURCE)
            message(WARNING "Cannot find LL_${DRV} driver for ${COMP}")
        endif()
    
        if(HAL_${FAMILY}_${DRV}_LL_SOURCE AND (NOT (TARGET HAL::STM32::${FAMILY}::LL_${DRV})))
            add_library(HAL::STM32::${FAMILY}::LL_${DRV} INTERFACE IMPORTED)
            target_link_libraries(HAL::STM32::${FAMILY}::LL_${DRV} INTERFACE HAL::STM32::${FAMILY})
            target_sources(HAL::STM32::${FAMILY}::LL_${DRV} INTERFACE "${HAL_${FAMILY}_${DRV}_LL_SOURCE}")
            list(APPEND HAL_${FAMILY}_DRIVERS_LL HAL::STM32::${FAMILY}::LL_${DRV})
        endif()
    endforeach()
    
    set(HAL_${COMP}_FOUND TRUE)
    foreach(FILE ${HAL_${FAMILY}_SOURCES})
        if(NOT FILE)
            set(HAL_${COMP}_FOUND FALSE)
            break()
        endif()
    endforeach()
        
    if(HAL_${COMP}_FOUND)
        list(APPEND HAL_INCLUDE_DIRS "${HAL_${FAMILY}_INCLUDE}")
        list(APPEND HAL_SOURCES "${HAL_${FAMILY}_SOURCES}")
    endif()
endforeach()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(HAL
    REQUIRED_VARS HAL_INCLUDE_DIRS HAL_SOURCES
    FOUND_VAR HAL_FOUND
    HANDLE_COMPONENTS
)