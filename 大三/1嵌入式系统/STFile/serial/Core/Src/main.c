/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif
PUTCHAR_PROTOTYPE
{
    HAL_UART_Transmit(&huart1 , (uint8_t *)&ch, 1, 0xFFFF);
    return ch;
}
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */


/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/*4.2.2*/
//int time = 0;

/*5.2.1*/
int Capture_mid_time;
int PWM_width;


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_TIM2_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */
  /*4.2.2*/
//  HAL_TIM_Base_Start_IT(&htim2);

  /*5.1 5.2*/
	HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_2);
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, 50);//修改脉冲宽度

	/* 5.2.1*/
	HAL_TIM_Base_Start_IT(&htim2);
	HAL_TIM_IC_Start_IT(&htim2,TIM_CHANNEL_1);
	HAL_TIM_IC_Start_IT(&htim2,TIM_CHANNEL_2);

	/*4.2.1*/
//	HAL_SetTickFreq(HAL_TICK_FREQ_100HZ);
//	HAL_SYSTICK_Config(SystemCoreClock / (10000U));
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
//  uint8_t str[] = "Hello World!\r\n";
  while (1)
  {
	  /*4.1*/
//	  HAL_UART_Transmit(&huart1,str, sizeof(str), 100 );
//	  printf("Hello World!\r\n");
//	  HAL_Delay(1000);


	  /*4.2.1*/
//	  if(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) == GPIO_PIN_RESET){
////		  int start = HAL_GetTick();
//		  int time = 0;
//		  HAL_Delay(10);
//		  if(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) == GPIO_PIN_RESET){
//			  while(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) ==  GPIO_PIN_RESET){
//				  if(SysTick->CTRL & 1UL <<16){
//					  time++;
//				  }
//			  }
////			  int end =  HAL_GetTick();
//
////			  time = end -start;
//			  time += 10;
//			  printf("BTN time: %dms\r\n",time);
//		  }
//	  }

	  /* 4.2.2
	   * Function: HAL_TIM_PeriodElapsedCallback    CODE2/ START
	   * Global val: time*/
//	  if(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) == GPIO_PIN_RESET){
//		  HAL_Delay(10);
//		  if(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) == GPIO_PIN_RESET){
//			  while(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) ==  GPIO_PIN_RESET);
////			  time += 10;
//			  printf("BTN time: %dms\r\n",time/100);
//			  time = 0;
//		  }
//	  }

	  /* 5  CODE2/Start  */
	  HAL_Delay(1000);
	  printf("pulse width: %d us\r\n ",Capture_mid_time); //修改了Capture_mid_time





    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  HAL_RCC_MCOConfig(RCC_MCO, RCC_MCO1SOURCE_PLLCLK, RCC_MCODIV_1);
}

/* USER CODE BEGIN 4 */

/*4.2.2*/
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim == &htim2){
		/* 4.2.2*/
//		if(HAL_GPIO_ReadPin(BTN_GPIO_Port, BTN_Pin) == GPIO_PIN_RESET)
//			time++;

		/* 5.2.1*/
		Capture_mid_time++;

	}

}

/*5.2.1*/
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
	static int PWM_RisingCount=0,PWM_FallingCount=0;
	if(htim == &htim2)
	{
		if(htim2.Channel == HAL_TIM_ACTIVE_CHANNEL_1)
		{
			PWM_RisingCount = HAL_TIM_ReadCapturedValue(&htim2,TIM_CHANNEL_1);
			Capture_mid_time = 0;
		}
		else if(htim2.Channel == HAL_TIM_ACTIVE_CHANNEL_2)
		{
			PWM_FallingCount = HAL_TIM_ReadCapturedValue(&htim2,TIM_CHANNEL_2);
			if(PWM_RisingCount != 0 && PWM_FallingCount!= 0)
			{
				PWM_width      = (10-PWM_RisingCount+PWM_FallingCount)*1+(Capture_mid_time-1)*10;
				Capture_mid_time = 0;
				PWM_RisingCount = 0;
				PWM_FallingCount = 0;
			}
		}
	}
}


/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
