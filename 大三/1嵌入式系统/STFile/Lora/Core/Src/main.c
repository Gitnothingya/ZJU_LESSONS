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
#include "cmsis_os.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "sx1278.h"
#include <stdio.h>
#include "retarget.h"
#include <string.h>
#include "lora.h"
#include "route.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define MAX_REC_LENGTH 16
#define REC_LENGTH 1
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
// #define RXM 0
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
extern Table route_table;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
SX1278_hw_t Txsx1278_hw = {
  {TxSX_RST_Pin, TxSX_RST_GPIO_Port},     // rst
  {TxSX_D0_Pin, TxSX_D0_GPIO_Port},       // dio0
  {TxSX_NSS_Pin, TxSX_NSS_GPIO_Port},     // nss
  &hspi1
};
SX1278_t Txsx1278 = {
  &Txsx1278_hw,         // SX1278_hw_t *hw;
};


/**************************双模块添�?********************************/
SX1278_hw_t Rxsx1278_hw = {
  {RxSX_RST_Pin, RxSX_RST_GPIO_Port},     // rst
  {RxSX_D0_Pin, RxSX_D0_GPIO_Port},       // dio0
  {RxSX_NSS_Pin, RxSX_NSS_GPIO_Port},     // nss
  &hspi2
};
SX1278_t Rxsx1278 = {
  &Rxsx1278_hw,         // SX1278_hw_t *hw;
};

/***************************************/


unsigned char UART2_Rx_Buf[MAX_REC_LENGTH];
unsigned char UART2_Rx_flg ;
unsigned int  UART2_Rx_cnt ;
unsigned char UART2_temp[REC_LENGTH];


uint8_t host_addr = 120;
uint8_t host_type = 0;
uint32_t timeout_time = 1000;
uint8_t ttl_init;

void sendDataToESP32(const char *content, uint8_t len)
{
    printf("send `%s` len:%d  to ESP32\r\n", content,len);
	HAL_UART_Transmit_IT(&huart2, content, len);
}

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
  MX_SPI1_Init();
  MX_USART1_UART_Init();
  MX_SPI2_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  HAL_UART_Receive_IT(&huart2, (uint8_t *)UART2_temp, REC_LENGTH);//open the uart1 interrupt
  RetargetInit(&huart1);
  LoraInit();
  printf("--------------------------------------------------hello, A New TEST!\r\n");
  HAL_Delay(2000);
  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();  /* Call init function for freertos objects (in freertos.c) */
  MX_FREERTOS_Init();

  /* Start scheduler */
  osKernelStart();
  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  /**********************************************************/
//  char buffer[512];
//
//  int message =0;
//  int message_length;
//  int ret;
//  ret = SX1278_LoRaEntryRx(&Rxsx1278, 16, 2000);
//  while(1){
//	  printf("Slave ...\r\n");
//	      HAL_Delay(800);
//	      printf("Receiving package...\r\n");
//
//	      ret = SX1278_LoRaRxPacket(&Rxsx1278);
//	      printf("Received: %d\r\n", ret);
//	      if (ret > 0) {
//	          SX1278_read(&Rxsx1278, (uint8_t*) buffer, ret);
//	          printf("Content (%d): %s\r\n", ret, buffer);
//	      }
//	      printf("Package received ...\r\n");
//  }
/*----------------------------------------------------------------*/

  while (1)
  {

    printf("create broadcast thread success\r\n");
//	#ifdef RXM
//	  LoraRead();
//	#else
	  char s[] = "When I do count the clock that tells the time,\
And see the brave day sunk in hideous night;\
When I behold the violet past prime,\
And sable curls all silver'd o'er with white:\
When lofty trees I see barren of leaves,\
Which erst from heat did canopy the herd,\
And summer's green, all girded up in sheaves,\
Born on the bier with white and bristly beard;\
Then of thy beauty do I question make,\
That thou among the wastes of time must go,\
Since sweets and beauties do themselves forsake,\
And die as fast as they see others grow;\
And nothing 'gainst Time's scythe can make defence\
Save breed, to brave him when he takes thee hence. ";
	  // printf("%s\r\n",s);
	  //LoraWrite(s, strlen(s), 110, 100, 1);
    //while(1){}
//	#endif
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
	if(huart == &huart2){
		UART2_Rx_Buf[UART2_Rx_cnt] = UART2_temp[0];
		UART2_Rx_cnt++;
		if('\n' == UART2_temp[0]){
			UART2_Rx_Buf[UART2_Rx_cnt-1] = '\0';
			UART2_Rx_flg = 1;
			UART2_Rx_cnt = 0;
			//format: 000(addr) 00(data1) 00(data2)
			//data
			if (strcmp(UART2_Rx_Buf, "request all") == 0)
			{
				printf("Get `request all` command\r\n");
				char buffer[100];
				buffer[0] = '\0';
				for (Entry temp = route_table; temp != NULL; temp = temp->next)
				{
					sscanf(buffer, "%s%d %d %d;", buffer, temp->dest, temp->dest, 0);
				}
//				sendDataToESP32(buffer, strlen(buffer));
				HAL_UART_Transmit_IT(&huart2, buffer, strlen(buffer));
			}
			// request id
			else if (strstr(UART2_Rx_Buf, "request") != NULL)
			{
				printf("Get `request` command\r\n", UART2_Rx_Buf);
				uint8_t real_dest_addr;
				sscanf(UART2_Rx_Buf, "request %d", &real_dest_addr);
				char data[10] = "request";
				sendData(data, strlen(data), real_dest_addr);
			}
			else if (strstr(UART2_Rx_Buf, "set") != NULL)
			{
				printf("Get `set` command\r\n");
				uint8_t real_dest_addr;
				uint8_t state;
				sscanf(UART2_Rx_Buf, "set %d %d", &real_dest_addr, &state);
			}
			else
			{
				printf("Get `answer` command\r\n");
				char data[30];
				int addr;
				int d1;
				int d2;
				printf("get answer: %s\r\n",UART2_Rx_Buf);
				sscanf(UART2_Rx_Buf, "%d %d %d", &addr, &d1, &d2);
				sprintf(data, "answer %d %d", d1, d2);
				printf("data:%d %d %d\r\n",addr,d1,d2);
				printf("get answer: %s\r\n",UART2_Rx_Buf);
				sendData(data, strlen(data), addr);
		    }
		}
		HAL_UART_Receive_IT(&huart2, (uint8_t *)UART2_temp, REC_LENGTH);
	}
}
/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM1 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

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
