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
#include <string.h>
#include <stdio.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define TASK_LED
#define TASK_DH11
#define TASK_Display
//#define SameDigit
//#define CountDigit
#define DHT_Digit
#define Light

//数码管掩�????
#define Mask       0x01
#define Shift_A    0x00
#define Shift_B    0x01
#define Shift_C    0x02
#define Shift_D    0x03
#define Shift_E    0x04
#define Shift_F    0x05
#define Shift_G    0x06
#define Shift_Dot  0x07


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
extern UART_HandleTypeDef huart1;
extern TIM_HandleTypeDef htim2;
uint8_t TxBuffer[128];

uint8_t temperature[2];
uint8_t humidity[2];
#ifdef DHT_Digit
uint32_t DHTnumber;
#endif



#ifdef TASK_LED
const char* LED_pcName = "TASK_LED";
const uint16_t LED_usStackDepth = 64;
const UBaseType_t LED_uxPriority = osPriorityNormal1;
TaskHandle_t LED_pxCreatedTask;
#endif
#ifdef TASK_DH11
const char* DH11_pcName = "TASK_DH11";
const uint16_t DH11_usStackDepth = 128;
const UBaseType_t DH11_uxPriority = osPriorityNormal1;
TaskHandle_t DH11_pxCreatedTask;
#endif
#ifdef TASK_Display
const char* Display_pcName = "TASK_Display";
const uint16_t Display_usStackDepth = 64;
const UBaseType_t Display_uxPriority = osPriorityNormal1;
TaskHandle_t Display_pxCreatedTask;
#endif

static const uint8_t Digit[10] = {//数字的数码管表示，每�??0 bit表示显示对应的段，从高到低分别Dot,G,F,E,D,C,B,A�??
    0b11000000,  // 0
    0b11111001,  // 1
    0b10100100,  // 2
    0b10110000,  // 3
    0b10011001,  // 4
    0b10010010,  // 5
    0b10000010,  // 6
    0b11111000,  // 7
    0b10000000,  // 8
    0b10010000   // 9
};
#ifdef CountDigit
static uint32_t digit;
const char* Digit_pcName = "TASK_Digit";
const uint16_t Digit_usStackDepth = 64;
const UBaseType_t Digit_uxPriority = osPriorityNormal1;
TaskHandle_t Digit_pxCreatedTask;
#endif



/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void vLEDTaskStart(void *pvParameters);


void GpioSwitchToInput(GPIO_TypeDef *GPIO_Port, uint16_t GPIO_Pin); 
void GpioSwitchToOutput(GPIO_TypeDef *GPIO_Port, uint16_t GPIO_Pin); 
void vDH11TaskStart(void * pvParameters);
void vDH11SignalStart();
void Delay_us(uint16_t delay);
uint8_t CheckResponseSignal();

uint8_t DH11BitRead();
uint8_t DH11ByteRead();
uint8_t DH11AllConnect();

void vDisplayTaskStart(void * pvParameters);
void OneDigit(uint8_t digit);
void DiffDigit(uint32_t* digit);
void vDigitTaskStart(void* pvParameters);

void OneDigit_SameLight(uint8_t digit);

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);

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

#ifdef TASK_LED
  if(xTaskCreate(vLEDTaskStart,LED_pcName,LED_usStackDepth,NULL,LED_uxPriority,&LED_pxCreatedTask) != pdPASS) {
    uint8_t ch[] = "Fail to create Task_LED!!!\r\n";
    HAL_UART_Transmit(&huart1, ch, strlen((char*)ch), 0xFFFF);
    } //else {
//    uint8_t ch[] = "Create Task_LED success!!!\r\n";
//    HAL_UART_Transmit(&huart1, ch, strlen((char*)ch), 0xFFFF);
//  }
#endif
#ifdef TASK_DH11
  if (xTaskCreate(vDH11TaskStart, DH11_pcName, DH11_usStackDepth, NULL, DH11_uxPriority, &DH11_pxCreatedTask) != pdPASS)
  {
	  char* ch = "Failed to create Task_DHT11!\r\n";
	  HAL_UART_Transmit(&huart1, (uint8_t*)ch, strlen((char*)ch), 0xffff);
  }
  // else {
  //   sprintf((char*)TxBuffer,"Create Task_DH11 success!!!\r\n");
  //   HAL_UART_Transmit_DMA(&huart1, TxBuffer,30);
  // }
#endif

#ifdef TASK_Display
  if (xTaskCreate(vDisplayTaskStart, Display_pcName, Display_usStackDepth, NULL, Display_uxPriority, &Display_pxCreatedTask) != pdPASS)
  {
    char* ch = "Failed to create Task_Display!\r\n";
    HAL_UART_Transmit(&huart1, (uint8_t*)ch, strlen((char*)ch), 0xffff);
  }
#endif
#ifdef CountDigit
  if (xTaskCreate(vDigitTaskStart, Digit_pcName, Digit_usStackDepth, NULL, Digit_uxPriority, &Digit_pxCreatedTask) != pdPASS)
  {
    char* ch = "Failed to create Task_Digit!\r\n";
    HAL_UART_Transmit(&huart1, (uint8_t*)ch, strlen((char*)ch), 0xffff);
  }

#endif





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
  for(;;)
  {
    osDelay(500);
  }
  /* USER CODE END StartDefaultTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

void vLEDTaskStart(void *pvParameters)
{
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1000);

  xLastWakeTime = xTaskGetTickCount();
  for(;;)
  {
    HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);//翻转电平
    vTaskDelayUntil(&xLastWakeTime, delay_time);//延时
  }
}
/**
 * @brief 修改对应引脚模式为输入模�????????????
 * 
 * @param GPIO_Port 引脚端口
 * @param GPIO_Pin 引脚编号
 */
void GpioSwitchToInput(GPIO_TypeDef *GPIO_Port, uint16_t GPIO_Pin)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  GPIO_InitStruct.Pin = GPIO_Pin; //设置引脚编号
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;//设置引脚模式
  GPIO_InitStruct.Pull = GPIO_PULLUP;//省略上拉电阻
  // GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIO_Port, &GPIO_InitStruct);
}
/**
 * @brief 修改对应引脚模式为输出模�????????????
 * 
 * @param GPIO_Port 引脚端口
 * @param GPIO_Pin 引脚编号
 */
void GpioSwitchToOutput(GPIO_TypeDef *GPIO_Port, uint16_t GPIO_Pin)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  GPIO_InitStruct.Pin = GPIO_Pin;//设置引脚编号
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;//设置引脚模式
  GPIO_InitStruct.Pull = GPIO_PULLUP;//省略上拉电阻
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIO_Port, &GPIO_InitStruct);
}

void Delay_us(uint16_t delay)//通过定时器TIM2实现微秒级定�????????????
{
  //
  __HAL_TIM_DISABLE(&htim2);
  __HAL_TIM_SET_COUNTER(&htim2,0);
  __HAL_TIM_ENABLE(&htim2);

  while(__HAL_TIM_GET_COUNTER(&htim2) < delay){

  }

  __HAL_TIM_DISABLE(&htim2);
  }

void vDH11SignalStart()
{
  GpioSwitchToOutput(DH11_DATA_GPIO_Port,DH11_DATA_Pin);//将引脚设置为输出模式

  HAL_GPIO_WritePin(DH11_DATA_GPIO_Port,DH11_DATA_Pin, GPIO_PIN_RESET);//将引脚电平拉
  HAL_Delay(18);//延迟18ms

  HAL_GPIO_WritePin(DH11_DATA_GPIO_Port,DH11_DATA_Pin, GPIO_PIN_SET);//将引脚电平拉
  Delay_us(30);//延时30us


}
uint8_t CheckResponseSignal()
{
  uint8_t wait=0;
  GpioSwitchToInput(DH11_DATA_GPIO_Port,DH11_DATA_Pin);//切换到输入模�????????????

  //等待DHT接收响应拉低电平，最多等20us
  while(GPIO_PIN_SET == HAL_GPIO_ReadPin(DH11_DATA_GPIO_Port,DH11_DATA_Pin) && wait < 20){
    wait++;
    Delay_us(1);
  }
  //接收响应信号
  wait = 0;
  while(GPIO_PIN_RESET == HAL_GPIO_ReadPin(DH11_DATA_GPIO_Port,DH11_DATA_Pin) && wait < 100){
    wait++;
    Delay_us(1);
  }
  if(wait > 99 ){
    return wait;
  }
  return 0;
}

uint8_t DH11BitRead()
{
  uint8_t wait=0;

  // 上一个DHT拉高可能没有结束，且引脚电平转换电平�???????????要时间�?�等�???????????
  while(GPIO_PIN_SET == HAL_GPIO_ReadPin(DH11_DATA_GPIO_Port, DH11_DATA_Pin) && wait < 50)
  {
    wait++;
    Delay_us(1);
  }
  
  wait = 0;
  //�???????????测测DH11 1Bit �???????????始信号，标准持续50us，至多等�???????????70us
  while(GPIO_PIN_RESET == HAL_GPIO_ReadPin(DH11_DATA_GPIO_Port, DH11_DATA_Pin) && wait < 50)
  {
    wait++;
    Delay_us(1);
  }
  if(wait >= 50) {
    sprintf(TxBuffer,"DHT send bit begin fail\r\n");
//    HAL_UART_Transmit_DMA(&huart1,TxBuffer,30);
  }
  //DHT根据高电平脉冲宽度决定传输的数据�????????????26us-28us表示0, 70us表示1，所�????????????40us后仍为高电平则是1
  Delay_us(40);
  if(GPIO_PIN_SET == HAL_GPIO_ReadPin(DH11_DATA_GPIO_Port,DH11_DATA_Pin)) return 1;
  else return 0;

}

uint8_t DH11ByteRead()
{
  uint8_t ret;
  for (uint8_t i = 0; i < 8; i++)
  {
    //接收DHT数据，从高位到低�???????????
    ret <<= 1;
    ret |= DH11BitRead(); 
  }
  return ret;
}


uint8_t DH11AllConnect()//进行�????????????次完整的DHT交互，将得到的数据存储到全局变量�????????????
{
  uint8_t ret;
  vDH11SignalStart();
  if((ret = CheckResponseSignal()) == 0)
  {
    uint8_t data[5] = {0};
    for(uint8_t i = 0; i < 5; i++){
      data[i] = DH11ByteRead();
    }
    if((data[0]+data[1]+data[2]+data[3]) == data[4]){
      humidity[0] = data[0];
      humidity[1] = data[1];
      temperature[0] = data[2];
      temperature[1] = data[3];
#ifdef DHT_Digit
      DHTnumber = humidity[0] *100 + temperature[0];
#endif
      return 0;
    } else {
      sprintf(TxBuffer,"DH11 Data checksum wrong, %u %u %u %u %u \r\n",data[0],data[1],data[2],data[3],data[4]);
//      HAL_UART_Transmit(&huart1, TxBuffer, 50,0xFFFF);
      return 2;
    }
    
  } else {
    sprintf(TxBuffer,"DH11 connect fail,code %u\r\n",ret);
//    HAL_UART_Transmit_DMA(&huart1, TxBuffer,35);
    return 1;
  }
}


void vDH11TaskStart(void * pvParameters)
{
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1000);
  xLastWakeTime = xTaskGetTickCount();

  for(;;){
    vTaskDelayUntil(&xLastWakeTime, delay_time);//每秒�???????????测一�???????????

    uint ret = DH11AllConnect();
    if(ret == 0){
      sprintf(TxBuffer,"Humidity: %u.%u %%    Temperature: %u.%u ^C  \r\n",humidity[0], humidity[1],temperature[0], temperature[1]);
      HAL_UART_Transmit_DMA(&huart1, TxBuffer, 50);
    } else {
      uint8_t Tx[25];
      sprintf(Tx,"fail to put DHT data\r\n");
//      HAL_UART_Transmit(&huart1, Tx, 25,0xFFFF);
    }
  }
}

void vDisplayTaskStart(void * pvParameters)//数码管显示任�?????
{
#ifdef SameDigit
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1000);
  xLastWakeTime = xTaskGetTickCount();
  HAL_GPIO_WritePin(LH1_GPIO_Port,LH1_Pin,GPIO_PIN_SET);
  HAL_GPIO_WritePin(LH2_GPIO_Port,LH2_Pin,GPIO_PIN_SET);
  HAL_GPIO_WritePin(LH3_GPIO_Port,LH3_Pin,GPIO_PIN_SET);
  HAL_GPIO_WritePin(LH4_GPIO_Port,LH4_Pin,GPIO_PIN_SET);
  uint8_t digit=0;
#endif

#ifdef CountDigit
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1000);
  xLastWakeTime = xTaskGetTickCount();
  HAL_GPIO_WritePin(LH1_GPIO_Port,LH1_Pin,GPIO_PIN_RESET);
  HAL_GPIO_WritePin(LH2_GPIO_Port,LH2_Pin,GPIO_PIN_RESET);
  HAL_GPIO_WritePin(LH3_GPIO_Port,LH3_Pin,GPIO_PIN_RESET);
  HAL_GPIO_WritePin(LH4_GPIO_Port,LH4_Pin,GPIO_PIN_RESET);
#endif

  for(;;){
#ifdef SameDigit
  vTaskDelayUntil(&xLastWakeTime, delay_time);
  OneDigit(digit);
  digit++;
  digit = digit%10;
#endif
#ifdef CountDigit
  DiffDigit(&digit);
#endif
#ifdef DHT_Digit
  DiffDigit(&DHTnumber);
#endif

  }



}

void OneDigit(uint8_t digit)
{
  //  根据传入的数�????0~9控制七段数码管的亮灭�????
  //  经过译码转换�????8bit表示的字节控�????8个段显示
  HAL_GPIO_WritePin(LHA_GPIO_Port,LHA_Pin, ((Digit[digit]>>Shift_A) & Mask)); //是否显示a�??
  HAL_GPIO_WritePin(LHB_GPIO_Port,LHB_Pin, ((Digit[digit]>>Shift_B) & Mask));
  HAL_GPIO_WritePin(LHC_GPIO_Port,LHC_Pin, ((Digit[digit]>>Shift_C) & Mask));
  HAL_GPIO_WritePin(LHD_GPIO_Port,LHD_Pin, ((Digit[digit]>>Shift_D) & Mask));
  HAL_GPIO_WritePin(LHE_GPIO_Port,LHE_Pin, ((Digit[digit]>>Shift_E) & Mask));
  HAL_GPIO_WritePin(LHF_GPIO_Port,LHF_Pin, ((Digit[digit]>>Shift_F) & Mask));
  HAL_GPIO_WritePin(LHG_GPIO_Port,LHG_Pin, ((Digit[digit]>>Shift_G) & Mask));
  HAL_GPIO_WritePin(LHDot_GPIO_Port,LHDot_Pin, ((Digit[digit]>>Shift_Dot)&Mask) );
}

void DiffDigit(uint32_t* digit)
{
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1);
  xLastWakeTime = xTaskGetTickCount();

  while(1){
    uint16_t single=0;

    //第一组数码管
     single = *digit/1000 %10;
     HAL_GPIO_WritePin(LH1_GPIO_Port,LH1_Pin,GPIO_PIN_SET); //使能第一组数码管
     #ifdef Light
     OneDigit_SameLight(single);
     #else
     OneDigit(single); //显示数字
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     #endif
     HAL_GPIO_WritePin(LH1_GPIO_Port,LH1_Pin,GPIO_PIN_RESET); //终止第一组的显示，利用视觉暂留效应保留视觉上的数�??

     //第二组数码管
     single = (*digit / 100)%10;
    HAL_GPIO_WritePin(LH2_GPIO_Port,LH2_Pin,GPIO_PIN_SET); //使能第二组数码管
     #ifdef Light
     OneDigit_SameLight(single);
     #else
     OneDigit(single); //显示数字
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     #endif
     HAL_GPIO_WritePin(LH2_GPIO_Port,LH2_Pin,GPIO_PIN_RESET); //终止第二组的显示，利用视觉暂留效应保留视觉上的数�??

     //第三组数码管
     single = *digit/10 %10;
     HAL_GPIO_WritePin(LH3_GPIO_Port,LH3_Pin,GPIO_PIN_SET); //使能第三组数码管
     #ifdef Light
     OneDigit_SameLight(single);
     #else
     OneDigit(single); //显示数字
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     #endif
     HAL_GPIO_WritePin(LH3_GPIO_Port,LH3_Pin,GPIO_PIN_RESET); //终止第三组的显示，利用视觉暂留效应保留视觉上的数�??

     //第四组数码管
     single = *digit %10;
     HAL_GPIO_WritePin(LH4_GPIO_Port,LH4_Pin,GPIO_PIN_SET); //使能第四组数码管
     #ifdef Light
     OneDigit_SameLight(single);
     #else
     OneDigit(single); //显示数字
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     #endif
     HAL_GPIO_WritePin(LH4_GPIO_Port,LH4_Pin,GPIO_PIN_RESET); //终止第四组的显示，利用视觉暂留效应保留视觉上的数�??

  }

}
#ifdef CountDigit
void vDigitTaskStart(void* pvParameters)
{
  TickType_t xLastWakeTime;
  const TickType_t delay_time = pdMS_TO_TICKS(1000);
  xLastWakeTime = xTaskGetTickCount();

  for(;;){
    vTaskDelayUntil(&xLastWakeTime, delay_time);
    digit++;
    digit = digit%10000;
  }
}
#endif 

void OneDigit_SameLight(uint8_t digit)
{
	  TickType_t xLastWakeTime;
	  const TickType_t delay_time = pdMS_TO_TICKS(1);
	  xLastWakeTime = xTaskGetTickCount();
	  HAL_GPIO_WritePin(LHDot_GPIO_Port,LHDot_Pin, GPIO_PIN_SET );
  //  根据传入的数�????0~9控制七段数码管的亮灭�????
  //  经过译码转换�????8bit表示的字节控�????8个段显示
if(((Digit[digit]>>Shift_A) & Mask) == 0){
     HAL_GPIO_WritePin(LHA_GPIO_Port,LHA_Pin, ((Digit[digit]>>Shift_A) & Mask)); //是否显示a�??
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHA_GPIO_Port,LHA_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_B) & Mask) == 0){
     HAL_GPIO_WritePin(LHB_GPIO_Port,LHB_Pin, ((Digit[digit]>>Shift_B) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHB_GPIO_Port,LHB_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_C) & Mask) == 0){
     HAL_GPIO_WritePin(LHC_GPIO_Port,LHC_Pin, ((Digit[digit]>>Shift_C) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHC_GPIO_Port,LHC_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_D) & Mask) == 0){
     HAL_GPIO_WritePin(LHD_GPIO_Port,LHD_Pin, ((Digit[digit]>>Shift_D) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHD_GPIO_Port,LHD_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_E) & Mask) == 0){
     HAL_GPIO_WritePin(LHE_GPIO_Port,LHE_Pin, ((Digit[digit]>>Shift_E) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHE_GPIO_Port,LHE_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_F) & Mask) == 0){
     HAL_GPIO_WritePin(LHF_GPIO_Port,LHF_Pin, ((Digit[digit]>>Shift_F) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHF_GPIO_Port,LHF_Pin, GPIO_PIN_SET);
}
if(((Digit[digit]>>Shift_G) & Mask) == 0){
     HAL_GPIO_WritePin(LHG_GPIO_Port,LHG_Pin, ((Digit[digit]>>Shift_G) & Mask));
     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
     HAL_GPIO_WritePin(LHG_GPIO_Port,LHG_Pin, GPIO_PIN_SET);
}
//if(((Digit[digit]>>Shift_Dot) & Mask) == 0){
//     HAL_GPIO_WritePin(LHDot_GPIO_Port,LHDot_Pin, ((Digit[digit]>>Shift_Dot)&Mask) );
//     vTaskDelayUntil(&xLastWakeTime, delay_time);//延时40ms
//     HAL_GPIO_WritePin(LHDot_GPIO_Port,LHDot_Pin, GPIO_PIN_SET);
//}
}



/* USER CODE END Application */

