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
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
extern UART_HandleTypeDef huart1;
extern DMA_HandleTypeDef hdma_usart1_tx;
#include <stdint.h>
#include <string.h>
#include <stdio.h>

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
// typedef void (*pFunct)(void);
// typedef struct{

//   fun* next;
// }fun;
// typedef struct{

// }FunQueen;

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
//#define TEST_Dither
//#define TEST_DMA
// #define LED_FB  //前后台LED点亮
//  #define LED_IT  //中断LED点亮
//#define LED ((defined LED_IT)||(defined LED_FB))


//  #define Cyclocomputer_FB  //码表前后�????????
 #define Cyclocomputer_IT  //码表中断


#define BUFFER_SIZE 128


#define CycleLength 2
#define NUM_Modes   2
#define RECORD_UPDATE_TIME 200
#define DISPLAY_TIME 1000
#define RECORD_NUMS  10


/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
uint8_t data_buffer[BUFFER_SIZE];

#ifdef TEST_Dither
uint8_t rising;
uint8_t LED_flg;
uint16_t dither;
uint8_t Change;
uint32_t times;
uint8_t timeR;
#endif


#ifdef TEST_DMA

uint32_t timeR;       //TIM记录时间，精度为1ms
#endif
#ifdef LED_FB
int LED_flag;  //标志LED状�?�，�????????1翻转LED
int times; //翻转次数
uint32_t timeR;       //TIM记录时间，精度为1ms
#endif

#ifdef LED_IT
int times;
uint32_t timeR;       //TIM记录时间，精度为1ms
#endif

#ifdef LED
//uint16_t dithering;
#endif

#ifdef Cyclocomputer_FB
uint32_t cycles;    //总圈数，计算行程，A1计算圈数
uint8_t  record[10];//循环记录新的2000ms�????????200ms圈数，计算�?�度
uint8_t  new_record;//记录�????????�????????200ms的圈�????????
uint8_t  cur_index; //循环记录要标记当前记录的位置
uint8_t  cur_mode;  //当前模式�????????0显示行程1显示速度 ；A2切换模式

uint8_t Record_UT_Flg; //更新记录
uint8_t Display_Flg;   //显示标志，每秒显示一�????????
uint8_t Add_Cycle_Flg; //增加圈数
uint8_t Switch_Mode_Flg;//模式切换标志

uint32_t timeR;       //TIM记录时间，精度为1ms

#endif

#ifdef Cyclocomputer_IT
uint32_t cycles;    //总圈数，计算行程，A1计算圈数
uint8_t  record[10];//循环记录新的2000ms�????????200ms圈数，计算�?�度
uint8_t  new_record;//记录�????????�????????200ms的圈�????????
uint8_t  cur_index; //循环记录要标记当前记录的位置
uint8_t  cur_mode;  //当前模式�????????0显示行程1显示速度 ；A2切换模式


uint32_t timeR;//TIM记录时间，精度为1ms
#endif




/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
uint8_t SUM(uint8_t * array,uint8_t len);
void My_Delay(int delay);

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
  MX_DMA_Init();
  MX_USART1_UART_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_Base_Start_IT(&htim2);
  // HAL_DMA_Start_IT(&hdma_usart1_tx,(uint32_t)data_buffer,(uint32_t)(data_buffer+BUFFER_SIZE),BUFFER_SIZE);

  #ifdef LED
//  HAL_TIM_Base_Start_IT(&htim2);
  #endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    #ifdef TEST_Dither
    if(LED_flg == 1 && Change == 0){
      HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
      Change =1;
      times++;
      // printf("前后台模式，LED翻转 %d 次\r\n",times);
      sprintf(data_buffer,"前后台模式，LED翻转 %d 次\r\n",times);
      HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
    }
    // printf("rising:%d  Dither:%X  LED_flg:%d  Change: %d\r\n",rising,dither,LED_flg,Change);

    #endif



	#ifdef TEST_DMA
	  // uint8_t  ch[] = "hello,dma\r\n";
    float f =2.345;
    sprintf(data_buffer,"Speed:%lf m/s\r\n",f);
	  HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
	  HAL_Delay(500);
	#endif
    #ifdef LED_FB
//     printf("LED_FLG:%d  \r\n",LED_flag);
    if(LED_flag){
    	HAL_Delay(16);
      if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
        HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
        
        times++;
        // printf("前后台模式，LED翻转 %d 次\r\n",times);
        sprintf(data_buffer,"前后台模式，LED翻转 %d 次\r\n",times);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
      }
      LED_flag = 0;
    }
    #endif

    #ifdef Cyclocomputer_FB
//    printf("hello,Cyclocomputer_FB\r\n");
    if(Switch_Mode_Flg){
      HAL_Delay(10);
      if(HAL_GPIO_ReadPin(BTN2_GPIO_Port, BTN2_Pin) == GPIO_PIN_RESET){
        cur_mode = (cur_mode+1 ) % NUM_Modes;
        memset(data_buffer,0x00,BUFFER_SIZE);
        sprintf(data_buffer,"切换模式，当前模�? %d\r\n",cur_mode);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
        Switch_Mode_Flg = 0;
      }
      
    }
    if(Add_Cycle_Flg){
      HAL_Delay(10);
      if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
        new_record += Add_Cycle_Flg;
        cycles += Add_Cycle_Flg;
        Add_Cycle_Flg = 0;
      }
    }
    if(Record_UT_Flg){
      record[cur_index] = new_record;
      cur_index = (cur_index+1) % RECORD_NUMS;
      new_record = 0;
      Record_UT_Flg = 0;
    }
    if(Display_Flg){
      if(cur_mode){//速度
        int speed = SUM(record, RECORD_NUMS) * CycleLength / 2;
        memset(data_buffer,0x00,BUFFER_SIZE);
        sprintf(data_buffer,"Speed: %dm/s\r\n",speed);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
      } else {
        int distance = cycles * CycleLength ;
        memset(data_buffer,0x00,BUFFER_SIZE);
        sprintf(data_buffer,"Distance: %dm\r\n",distance);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
      }
      Display_Flg = 0;
    }
    #endif

    #ifdef Cyclocomputer_IT

    #endif
    





//	  printf("GPIOA: %d \r\n",HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin));

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
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	// printf("hello\r\n");
//	HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
  #ifdef  TEST_Dither
  if(GPIO_Pin == BTN1_Pin){
    if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
      rising = 1;
    } else {
      rising = 0;
    }
      
  }
  #endif
	
  #ifdef LED_FB
  if(GPIO_Pin == BTN1_Pin){
//    My_Delay(16);
    if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET)
      LED_flag = 1;
  }
  #endif
  #ifdef LED_IT
  if(GPIO_Pin == BTN1_Pin){
    My_Delay(16);
    if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET /*&& dithering == 0XFFFF*/){
      HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
      times++;
      // printf("中断模式，LED翻转 %d 次\r\n",times);
      sprintf(data_buffer,"中断模式，LED翻转 %d 次\r\n",times);
      HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
    }
  }
  #endif
  #ifdef TEST_DMA
  if(GPIO_Pin == BTN1_Pin){
    My_Delay(16);
    if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
      // uint8_t  ch[] = "hello,dma\r\n";
      sprintf(data_buffer,"hello,IT_DMA\r\n");
      HAL_UART_Transmit_DMA(&huart1,data_buffer,15);
    }
      
  }
  #endif
  #ifdef Cyclocomputer_FB
  if(GPIO_Pin == BTN1_Pin && HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
    // My_Delay(10);
    // if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
      Add_Cycle_Flg  = 1;
    // }
  }
  if(GPIO_Pin == BTN2_Pin && HAL_GPIO_ReadPin(BTN2_GPIO_Port, BTN2_Pin) == GPIO_PIN_RESET){
	  // printf("333\r\n");
    // My_Delay(10);
    // printf("111\r\n");
    // if(HAL_GPIO_ReadPin(BTN2_GPIO_Port, BTN2_Pin) == GPIO_PIN_RESET){
      Switch_Mode_Flg = 1;
      // printf("222\r\n");
    // }
  }
  
  #endif

  #ifdef Cyclocomputer_IT
    if(GPIO_Pin == BTN1_Pin && HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
    My_Delay(16);
    if(HAL_GPIO_ReadPin(BTN1_GPIO_Port, BTN1_Pin) == GPIO_PIN_RESET){
      cycles ++;
      new_record++;
    }
  }
  if(GPIO_Pin == BTN2_Pin && HAL_GPIO_ReadPin(BTN2_GPIO_Port, BTN2_Pin) == GPIO_PIN_RESET){
    My_Delay(16);
    if(HAL_GPIO_ReadPin(BTN2_GPIO_Port, BTN2_Pin) == GPIO_PIN_RESET){
      cur_mode = (cur_mode+1 ) % NUM_Modes;
      memset(data_buffer,0x00,BUFFER_SIZE);
//      sprintf(data_buffer,"切换模式，当前模�? %d\r\n",cur_mode);
      HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
    }
  }

  #endif

}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  #ifdef TEST_Dither
  if(htim == &htim2){
    timeR++;
    if(rising){
      dither <<= 1;
      dither += 1;
    } else {
      dither <<=1;
      dither += 0;
    }
    if(dither == 0xFFFF){
      if(Change == 0)
        LED_flg = 1;
    }else{
      LED_flg =0;
      Change = 0;
    }
  }

  #endif
  #if (defined LED_IT) ||(defined LED_FB )
  if(htim == &htim2){
    timeR++;
  }

  #endif

 #ifdef Cyclocomputer_FB
  if(htim == &htim2){
     timeR++;
//     printf("hello,TIM2  %d\r\n",timeR);
     if(timeR % RECORD_UPDATE_TIME == 0){
       Record_UT_Flg = 1;
     }
     if(timeR % DISPLAY_TIME == 0){
       Display_Flg = 1;
     }
  }
  #endif

  #ifdef Cyclocomputer_IT
  if(htim == &htim2){
     timeR++;
     if(timeR % RECORD_UPDATE_TIME == 0){
       record[cur_index] = new_record;
       cur_index = (cur_index+1) % RECORD_NUMS;
       new_record = 0;
     }
     if(timeR % DISPLAY_TIME == 0){
      if(cur_mode){//速度
//        int speed = SUM(record, RECORD_NUMS) * CycleLength / 2;
        memset(data_buffer,0x00,BUFFER_SIZE);
//        sprintf(data_buffer,"Speed: %dm/s\r\n",speed);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
      } else {
//        int distance = cycles * CycleLength ;
        memset(data_buffer,0x00,BUFFER_SIZE);
//        sprintf(data_buffer,"Distance: %dm\r\n",distance);
        HAL_UART_Transmit_DMA(&huart1,data_buffer,128);
      }
     }
  }



  #endif
}
uint8_t SUM(uint8_t * array,uint8_t len)
{
  int i;
  uint8_t sum=0;
  for(i=0;i<len;i++){
    sum += array[i];
  }
  return sum;
}
void My_Delay(int delay)
{
	int start = timeR;
	while(timeR - start < delay);
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
