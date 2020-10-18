#pragma once

#include <stdint.h>

typedef struct PinName {
    GPIO_TypeDef* port;
    uint16_t pin;
} PinName;

typedef enum PullType {
                       PullNone = GPIO_NOPULL,
                       PullUp = GPIO_PULLUP,
                       PullDown = GPIO_PULLDOWN
} PullType;

typedef enum {
              PushPull = GPIO_MODE_OUTPUT_PP,
              OpenDrain = GPIO_MODE_OUTPUT_OD
} PinMode;

typedef enum {
              Low = GPIO_SPEED_FREQ_LOW,
              Medium = GPIO_SPEED_FREQ_MEDIUM,
              High = GPIO_SPEED_FREQ_HIGH,
              VeryHigh = GPIO_SPEED_FREQ_VERY_HIGH
} PinSpeed;

/* Sample Pin Definition - Replace with the pin definition for your board!! */

constexpr PinName p3  = { GPIOA, GPIO_PIN_8  };
constexpr PinName p4  = { GPIOB, GPIO_PIN_15 };
constexpr PinName p5  = { GPIOB, GPIO_PIN_14 };
constexpr PinName p6  = { GPIOA, GPIO_PIN_12 };
constexpr PinName p7  = { GPIOA, GPIO_PIN_11 };
constexpr PinName p8  = { GPIOC, GPIO_PIN_6  };
constexpr PinName p9  = { GPIOC, GPIO_PIN_7  };
constexpr PinName p10 = { GPIOC, GPIO_PIN_8  };
constexpr PinName p11 = { GPIOC, GPIO_PIN_9  };
constexpr PinName p12 = { GPIOH, GPIO_PIN_10 };
constexpr PinName p13 = { GPIOH, GPIO_PIN_11 };
constexpr PinName p14 = { GPIOH, GPIO_PIN_12 };
constexpr PinName p15 = { GPIOI, GPIO_PIN_0  };
constexpr PinName p16 = { GPIOD, GPIO_PIN_5  };
constexpr PinName p17 = { GPIOD, GPIO_PIN_6  };
constexpr PinName p18 = { GPIOD, GPIO_PIN_7  };
constexpr PinName p19 = { GPIOB, GPIO_PIN_9  };
constexpr PinName p20 = { GPIOB, GPIO_PIN_8  };
constexpr PinName p25 = { GPIOB, GPIO_PIN_6  };
constexpr PinName p26 = { GPIOB, GPIO_PIN_7  };
constexpr PinName p27 = { GPIOF, GPIO_PIN_9  };
constexpr PinName p28 = { GPIOF, GPIO_PIN_8  };
constexpr PinName p29 = { GPIOF, GPIO_PIN_7  };
constexpr PinName p30 = { GPIOF, GPIO_PIN_6  };
constexpr PinName p31 = { GPIOA, GPIO_PIN_0  };
constexpr PinName p32 = { GPIOA, GPIO_PIN_6  };
constexpr PinName p33 = { GPIOA, GPIO_PIN_4  };
constexpr PinName p34 = { GPIOC, GPIO_PIN_10 };
constexpr PinName p35 = { GPIOB, GPIO_PIN_4  };
constexpr PinName p36 = { GPIOC, GPIO_PIN_12 };

constexpr PinName LED1 = { GPIOE, GPIO_PIN_4 };
constexpr PinName LED2 = { GPIOE, GPIO_PIN_3 };
constexpr PinName LED3 = { GPIOE, GPIO_PIN_6 };
constexpr PinName LED4 = { GPIOE, GPIO_PIN_5 };

/* Unit Testing Aliases */
constexpr PinName TEST_LED1 = LED1;
constexpr PinName TEST_LED2 = LED2;
constexpr PinName TEST_LED3 = LED3;
constexpr PinName TEST_LED4 = LED4;