/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
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
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include "retarget.h"
#include <string.h>
#include "timers.h"
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
/* USER CODE BEGIN Variables */
  const char* Serial_ESP =  "Serial_ESP";
  const uint16_t Serial_usStackDepth = 128;
  const UBaseType_t Serial_uxPriority = osPriorityNormal1;



  extern unsigned char UART2_Rx_flg;
  extern unsigned char UART2_Rx_Buf[MAX_REC_LENGTH];
  extern unsigned int  UART2_Rx_cnt;

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for myTimer01 */
osTimerId_t myTimer01Handle;
const osTimerAttr_t myTimer01_attributes = {
  .name = "myTimer01"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void StartSerialWithESP(void* argument);// 和ESP进行串口通信
void StartTxWithESP(void* argument);
void vTestTimerCallback( TimerHandle_t xTimer );




/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void Callback01(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* creation of myTimer01 */
  myTimer01Handle = osTimerNew(Callback01, osTimerPeriodic, NULL, &myTimer01_attributes);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  if(xTaskCreate(StartSerialWithESP,Serial_ESP,Serial_usStackDepth,NULL,Serial_uxPriority,NULL) != pdPASS) {
      uint8_t ch[] = "Fail to create SerialWithESP!!!\r\n";
      printf("%s",ch);
  } else {
    printf("Create SerialRxWithESP Success\r\n");
  }

  if(xTaskCreate(StartTxWithESP,"Serial_Tx",Serial_usStackDepth,NULL,Serial_uxPriority,NULL) != pdPASS) {
        uint8_t ch[] = "Fail to create SerialWithESP!!!\r\n";
        printf("%s",ch);
    } else {
      printf("Create SerialTxWithESP Success\r\n");
    }

//  TimerHandle_t xTimer = xTimerCreate("TESTITR",10000,pdTRUE,(void*)0,vTestTimerCallback);
//
//  if( xTimerStart(xTimer,0)!= pdPASS )
//  {
//    printf("Timer fail\r\n");
//  }

  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  int i=0;
  for(;;)
  {
	  i++;
	  printf("default hello, default%d .\r\n",i);
	  HAL_Delay(1000);
  }
  /* USER CODE END StartDefaultTask */
}

/* Callback01 function */
void Callback01(void *argument)
{
  /* USER CODE BEGIN Callback01 */

  /* USER CODE END Callback01 */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

int ESP_getDHT_flg;
int ESP_sendDHT_flg;
void StartSerialWithESP(void* argument)
{
	printf("Entry Rx \r\n");
	for(;;)
	{
		if(UART2_Rx_flg == 1){
			printf("From ESP32 : %s \r\n",UART2_Rx_Buf);
			if(!strcmp(UART2_Rx_Buf,"get")){
				printf("get DHT11 DATA from server TODO\r\n");
        // ESP_getDHT_flg= 1;
			}
			else {
				printf("get DHT11: %s\r\n",UART2_Rx_Buf);
				ESP_sendDHT_flg = 1;
			}
			UART2_Rx_flg = 0;
			UART2_Rx_cnt = 0;
			memset(UART2_Rx_Buf,0x00,MAX_REC_LENGTH);
		}
	}
}
extern UART_HandleTypeDef huart2;
void StartTxWithESP(void* argument)
{
	printf("Entry Tx\r\n");
	for(;;){
		if(ESP_sendDHT_flg){
			HAL_Delay(2000);
			char msg[] = "getDHT11data";
			printf("TO ESP32: %s\r\n",msg);
			HAL_UART_Transmit_IT(&huart2,msg,sizeof(msg));
			ESP_getDHT_flg = 0;
		}
	}
}

void vTestTimerCallback( TimerHandle_t xTimer )
{
  int time=0;
  time++;
  printf("The Timer triger %d times\r\n",time);
}

/* USER CODE END Application */

