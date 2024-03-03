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
#include "usart.h"
#include "gpio.h"
#include "flash_if.h"

#include "xmodem.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
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

#define PEEK "peek"
#define POKE "poke"
#define LOAD "load"
#define RUN  "run"
#define PRINT "print"

#define REC_LENGTH  1
#define MAX_REC_LENGTH  1024

typedef unsigned int uint32;
typedef void (*pFunction)(void);
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
unsigned char UART1_Rx_Buf[MAX_REC_LENGTH];
unsigned char UART1_Rx_flg ;
unsigned int  UART1_Rx_cnt ;
unsigned char UART1_temp[REC_LENGTH];

uint32_t JumpAddress;
pFunction Jump_To_Application;


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

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
  /* USER CODE BEGIN 2 */
  FLASH_If_Init();
  HAL_UART_Receive_IT(&huart1, (uint8_t *)UART1_temp, REC_LENGTH);//open the uart1 interrupt
  HAL_Delay(2000);


  unsigned int a,b,c,d,e,f;
  printf("a, Addr:%08X  -> Data:%08X \r\n",(uint32)&a, a);
  printf("b, Addr:%08X  -> Data:%08X \r\n",(uint32)&b, b);
  printf("c, Addr:%08X  -> Data:%08X \r\n",(uint32)&c, c);
  printf("d, Addr:%08X  -> Data:%08X \r\n",(uint32)&d, d);
  printf("e, Addr:%08X  -> Data:%08X \r\n",(uint32)&e, e);
  printf("f, Addr:%08X  -> Data:%08X \r\n",(uint32)&f, f);
//  while(1){
//	  HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
//	  	  HAL_Delay(500);
//  }


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

	  if(UART1_Rx_flg){// 处理传输的命令
		  printf(">>> %s\r\n",UART1_Rx_Buf);

		  char cmd[10];
		  uint32 arg0,arg1;
		  sscanf((const char*)UART1_Rx_Buf,"%s",cmd);
		  if( !strcmp(PEEK, cmd) ){
			  sscanf((const char*)UART1_Rx_Buf,"%s %08x",cmd,&arg0);
			  printf("INS: peek  PARA: %x -> DATA: %08x\r\n",arg0,*(int*)arg0);
		  }
		  else if(!strcmp(POKE, cmd)){
			  sscanf((const char*)UART1_Rx_Buf,"%s %08x %08x",cmd,&arg0,&arg1);
			  *(int*)arg0 = arg1;
			  printf("INS: poke  PARA1: %x  PARA2: %08x\r\n",arg0,*(int*)arg0);
		  }
		  else if(!strcmp(LOAD, cmd)){
			  sscanf((const char*)UART1_Rx_Buf,"%s %08x",cmd,&arg0);
			  printf("INS: load  PARA: %x\r\n", arg0);
			  if((uint32_t)arg0 <0x08008000 || (uint32_t)arg0 > 0x0800FFFF ){
				  printf("Invalid ADDR!!! \r\n");
			  }

			  Xmodem_Receive(&huart1, (uint32_t *)arg0);
		  }
		  else if(!strcmp(RUN, cmd)){
			  sscanf((const char*)UART1_Rx_Buf,"%s %08x",cmd,&arg0);
			  printf("INS: run  PARA: %08X \r\n",arg0);


			  JumpAddress = *(__IO uint32_t*) (arg0 + 4);
			  Jump_To_Application = (pFunction) JumpAddress;
			  __set_MSP(*(__IO uint32_t*) arg0);
			  Jump_To_Application();
		  }
		  else if(!strcmp(PRINT, cmd)){
			  sscanf((const char*)UART1_Rx_Buf,"%s %08x",cmd,&arg0);
			  printf("INS:print  PARA: %08X \r\n",arg0);
			  uint8_t* addr = (uint8_t*)arg0;
			  while(*addr != 0x00){
				  HAL_UART_Transmit(&huart1, addr,1, 0xFFFF);
				  addr +=1;
			  }
		  }
		  else {
			  printf("Invalid CMD!!!\r\n");
		  }


		  for(int i = 0;i < UART1_Rx_cnt; i++)
			  UART1_Rx_Buf[i] = 0;
		  UART1_Rx_cnt = 0;
		  UART1_Rx_flg = 0;
	  }
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
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
//	printf("????");
	if(huart == &huart1){
		UART1_Rx_Buf[UART1_Rx_cnt] = UART1_temp[0];
		UART1_Rx_cnt++;
		if(0x0D == UART1_temp[0]){
			UART1_Rx_flg = 1;
		}
		HAL_UART_Receive_IT(&huart1, (uint8_t *)UART1_temp, REC_LENGTH);
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
