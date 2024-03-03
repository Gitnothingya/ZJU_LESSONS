/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED_Pin GPIO_PIN_13
#define LED_GPIO_Port GPIOC
#define LHDot_Pin GPIO_PIN_3
#define LHDot_GPIO_Port GPIOA
#define LHG_Pin GPIO_PIN_4
#define LHG_GPIO_Port GPIOA
#define LHC_Pin GPIO_PIN_5
#define LHC_GPIO_Port GPIOA
#define LHD_Pin GPIO_PIN_6
#define LHD_GPIO_Port GPIOA
#define LHE_Pin GPIO_PIN_7
#define LHE_GPIO_Port GPIOA
#define DH11_DATA_Pin GPIO_PIN_11
#define DH11_DATA_GPIO_Port GPIOB
#define LH1_Pin GPIO_PIN_12
#define LH1_GPIO_Port GPIOB
#define LH2_Pin GPIO_PIN_13
#define LH2_GPIO_Port GPIOB
#define LH3_Pin GPIO_PIN_14
#define LH3_GPIO_Port GPIOB
#define LH4_Pin GPIO_PIN_15
#define LH4_GPIO_Port GPIOB
#define LHA_Pin GPIO_PIN_3
#define LHA_GPIO_Port GPIOB
#define LHF_Pin GPIO_PIN_4
#define LHF_GPIO_Port GPIOB
#define LHB_Pin GPIO_PIN_5
#define LHB_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
