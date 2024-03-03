#include "xmodem.h"
#include "main.h"
#include "usart.h"
#include "flash_if.h"

extern unsigned char UART1_temp[1];

static uint8_t Receive_Packet(UART_HandleTypeDef *huart, uint8_t *p_data, uint32_t *p_size, uint32_t timeout);
uint16_t UpdateCRC16(uint16_t crc_in, uint8_t byte);
uint16_t Cal_CRC16(const uint8_t* p_data, uint32_t size);
uint8_t CalcChecksum(const uint8_t *p_data, uint32_t size);
void Serial_PutByte(uint8_t ch);

static uint8_t Receive_Packet(UART_HandleTypeDef *huart, uint8_t *p_data, uint32_t *p_size, uint32_t timeout)
{
	uint32_t start_Time = HAL_GetTick();
	uint8_t retries = 0;
	static uint8_t max_retries = 10;

	for(; retries < max_retries ; retries++ )
	{
		uint8_t state = HAL_UART_Receive(huart, p_data, 1, 1000);

		if(state == HAL_OK)
		{
			if(p_data[0] == SOH)
			{
				HAL_UART_Receive(huart, &p_data[1], PACKET_SIZE - 1, 1000);
				if(p_data[1] != ((p_data[2]) ^ NEGATIVE_BYTE))
				{
					return RcFLG_NUMWRONG;
				}
				if(p_data[CHECKSUM_INDEX] != CalcChecksum(&p_data[DATA_START_INDEX], DATA_SIZE ))
				{
					return RcFLG_CKWRONG;
				}
				return RcFLG_SUCC;

			}
			else if(p_data[0] == EOT)
			{
				return RcFLG_END;
			}
		}
		if(HAL_GetTick() - start_Time >= timeout)
		{
			return RcFLG_TimeOut;
		}
	}
	return RcFLG_TimeOut;
}

uint8_t Xmodem_Receive(UART_HandleTypeDef *huart, uint32_t* addr)
{
	HAL_UART_AbortReceive(&huart1);

	if(FLASH_If_Erase(USER_FLASH_START)){
		uint8_t ch[25]  = "Erase Flash Wrong \r\n";
		HAL_UART_Transmit(huart, ch, 25, 0xFFFF);
		HAL_UART_Receive_IT(&huart1, (uint8_t *)UART1_temp , 1);
		return 0;
	}

	HAL_Delay(2000);

	uint8_t packet[132];
	uint32_t size = 0;

	uint8_t Rc_State = 0;
	while(1)
	{
		if(Rc_State == RcState_PRE){
			Serial_PutByte(NAK);

			uint8_t unuse;
			HAL_UART_Receive(huart, &unuse, 1, 1000);

			Rc_State = RcState_Rc;

		}
		else if(Rc_State == RcState_Rc){
			uint8_t state;
			state =  Receive_Packet(huart, packet, &size, 1000);
			HAL_Delay(50);
//			printf("%d\r\n",state);
			if(state == RcFLG_SUCC){
				Rc_State = RcState_Rc;

				FLASH_If_Write((uint32_t)addr,(uint32_t *)(&packet[DATA_START_INDEX]), DATA_SIZE/4);

				addr += DATA_SIZE/4;
				Serial_PutByte(ACK);
			}
			else if(state == RcFLG_END){
				Rc_State = RcState_EOT;
				Serial_PutByte(ACK);
			}
			else if(state == RcFLG_TimeOut || state == RcFLG_CKWRONG || state == RcFLG_NUMWRONG){
				Rc_State = RcState_Rc;
				Serial_PutByte(NAK);
			}
		}
		else if(Rc_State == RcState_EOT){
			uint8_t ch[25]  = "END OF TRANSMIT!!! \r\n";
			HAL_UART_Transmit(huart, ch, 25, 0xFFFF);
			break;
		}
		else {
		}
	}

	HAL_UART_Receive_IT(&huart1, (uint8_t *)UART1_temp , 1);
	return 0;

}

uint8_t CalcChecksum(const uint8_t *p_data, uint32_t size)
{
  uint32_t sum = 0;
  const uint8_t *p_data_end = p_data + size;

  while (p_data < p_data_end )
  {
    sum += *p_data++;
  }

  return (sum & 0xffu);
}
void Serial_PutByte(uint8_t ch)
{
	HAL_UART_Transmit(&huart1, &ch, 1, 0xFFFF);
}
