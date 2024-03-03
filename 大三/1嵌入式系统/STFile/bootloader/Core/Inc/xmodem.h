#ifndef __XMODEM_H_
#define __XMODEM_H_

#include "stm32f1xx_hal.h"

/* Exported constants --------------------------------------------------------*/
/* Packet structure defines */

/* /-------- Packet in IAP memory ------------------------------------------\
 * | 0      |  1    |  2     |  3   |  4      | ... | n+4     | n+5  | n+6  |
 * |------------------------------------------------------------------------|
 * | unused | start | number | !num | data[0] | ... | data[n] | crc0 | crc1 |
 * \------------------------------------------------------------------------/
 * the first byte is left unused for memory alignment reasons                 */

#define SOH                     ((uint8_t)0x01)  /* start of 128-byte data packet */
#define STX                     ((uint8_t)0x02)  /* start of 1024-byte data packet */
#define EOT                     ((uint8_t)0x04)  /* end of transmission */
#define ACK                     ((uint8_t)0x06)  /* acknowledge */
#define NAK                     ((uint8_t)0x15)  /* negative acknowledge */
#define CA                      ((uint32_t)0x18) /* two of these in succession aborts transfer */
#define CRC16                   ((uint8_t)0x43)  /* 'C' == 0x43, request 16-bit CRC */
#define NEGATIVE_BYTE           ((uint8_t)0xFF)

#define PACKET_SIZE				132
#define DATA_SIZE				128
#define PACKET_NUM_INDEX		1
#define PACKET_NEGNUM_INDEX		2
#define DATA_START_INDEX		3
#define CHECKSUM_INDEX			131

#define RcFLG_SUCC				0
#define RcFLG_END				1//EOT
#define RcFLG_TimeOut   		2//超时
#define RcFLG_CKWRONG			3//校验错误
#define RcFLG_NUMWRONG			4//序号错误

#define RcState_PRE				0
#define RcState_Rc				1
#define RcState_EOT				2


/* Exported functions ------------------------------------------------------- */
uint8_t Xmodem_Receive(UART_HandleTypeDef *huart, uint32_t* addr);

#endif  /* __YMODEM_H_ */

/*******************(C)COPYRIGHT STMicroelectronics ********END OF FILE********/
