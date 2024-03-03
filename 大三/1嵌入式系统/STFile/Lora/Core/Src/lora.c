#include "lora.h"
#include "sx1278.h"
#include "usart.h"
#include "gpio.h"
#include "string.h"

#include <stdio.h>
#include "retarget.h"
#include "global.h"
// Define Hardware Modules
//SX1278_hw_t sx1278_hw = {
//  {SX_RST_Pin, SX_RST_GPIO_Port},     // rst
//  {SX_D0_Pin, SX_D0_GPIO_Port},       // dio0
//  {SX_NSS_Pin, SX_NSS_GPIO_Port},     // nss
//  &hspi1
//};
//SX1278_t sx1278 = {
//  &sx1278_hw,         // SX1278_hw_t *hw;
//};
char Txbuffer[LORA_BUFFER_SIZE];
char buffer[LORA_BUFFER_SIZE];
// Host Address
//uint8_t host_addr = 110;


//HeardList Require Message
char RequireMessage[] = "Require HeardList";

//HeardList Entry Message
char EntryMessage[] = "Entry HeardList";

// TX Flags
bool TX_isCallBack = 0;
int TX_callBackFlag = TX_CALLBACK_NULL;

int LoraInit() {
  SX1278_init(&Rxsx1278, 434000000, SX1278_POWER_11DBM, SX1278_LORA_SF_7,
          SX1278_LORA_BW_125KHZ, SX1278_LORA_CR_4_5, SX1278_LORA_CRC_EN, 10);
  SX1278_init(&Txsx1278, 434000000, SX1278_POWER_11DBM, SX1278_LORA_SF_7,
          SX1278_LORA_BW_125KHZ, SX1278_LORA_CR_4_5, SX1278_LORA_CRC_EN, 10);
  return 0;
}

void LoraWriteAsync(const char *s, uint8_t len, const LoraPacketHeader *header) {

  if (len > LORA_MAX_PAYLOAD) {
    // TODO
  }

  SX1278_LoRaEntryTx(&Txsx1278, len+LORA_PACKET_HEADER_LENGTH, 2000);

  memcpy(Txbuffer, header, LORA_PACKET_HEADER_LENGTH);
  memcpy(Txbuffer+LORA_PACKET_HEADER_LENGTH, s, len);

  SX1278_LoRaTxPacket(&Txsx1278, (uint8_t*) Txbuffer,
                len+LORA_PACKET_HEADER_LENGTH, 2000);
}

int LoraWrite(const char *s, uint32_t len, uint8_t dest_addr, uint8_t src_addr) {
  // #ifdef TEST_FOR_CRC_NAK
  // bool crc_error = 1;
  // #endif
  uint8_t seq = 0;
  char *p = s;
  int received = 0;

  while (received < len) {
    int send_len = (len - received) > LORA_MAX_PAYLOAD ? LORA_MAX_PAYLOAD : (len - received);
    LoraPacketHeader header;
    // set header
    header.dest_addr = dest_addr;
    header.src_addr = src_addr;
    header.settings.seq = seq;
    header.length = send_len;
    header.crc = Crc(p, send_len);
    LoraWriteAsync(p, send_len, &header);

    char content[512];
    memset(content,0x00,sizeof(content));
    memcpy(content,p,send_len);
    printf("\r\n\r\n[TEST] 发送报文\r\n");
    printf("dest_addr\t%d\r\n",(int)header.dest_addr);
    printf("src_addr \t%d\r\n",(int)header.src_addr);
    printf("setting  \t%X\r\n",header.settings);
    printf("length   \t%d\r\n",(int)header.length);
    printf("CRC code \t%X\r\n",(int)header.crc);
    printf("Content: \r\n%s\r\n",content);

    int retries = 0;
    bool package_over = 0;

    // 单个包的发送
    while (1) {
      // 发送成功?
      while (1) {
        if (TX_isCallBack) {
          if (TX_callBackFlag == TX_CALLBACK_SENDOVER) break;
          else if (TX_callBackFlag == TX_CALLBACK_TIMEOUT) {
            if (++retries == TX_MAX_RETRIES){
              printf("发送超时达到最大次数，重发失败！\r\n");
              return -1;
            }
            LoraWriteAsync(p, send_len, &header);
		// #ifdef TEST_FOR_SUCCESS
            char content[512];
            memset(content,0x00,sizeof(content));
            memcpy(content,p,send_len);
            printf("发送超时，重发：\r\n");
            printf("dest_addr\t%d\r\n",(int)header.dest_addr);
            printf("src_addr \t%d\r\n",(int)header.src_addr);
            printf("setting  \t%X\r\n",header.settings);
            printf("length   \t%d\r\n",(int)header.length);
            printf("CRC code \t%X\r\n",(int)header.crc);
            printf("Content: \r\n%s\r\n",content);
      //  #endif
          }
        }
      }
      // switch to RX
      LoraReadAsyncStart();
      // 接收到响应包?
      int timeout = 2000;
      while (1) {
        int ret = SX1278_LoRaRxPacket(&Txsx1278);
        if (ret > 0) {
          // 判断ack和nak
          SX1278_read(&Txsx1278, (uint8_t*) buffer, ret);
          LoraPacketHeader response_header;
          memcpy(&response_header, buffer, LORA_PACKET_HEADER_LENGTH);

          if (response_header.dest_addr == host_addr) {

          // #if (defined TEST_FOR_TO) || (defined TEST_FOR_SUCCESS) || (defined TEST_FOR_CRC_NAK)
            memset(content,0x00,sizeof(content));
            printf("\r\n\r\n接收响应包\r\n");
            printf("dest_addr\t%d\r\n",(int)response_header.dest_addr);
            printf("src_addr \t%d\r\n",(int)response_header.src_addr);
            printf("setting  \t%X\r\n",response_header.settings);
            printf("length   \t%d\r\n",(int)response_header.length);
            printf("CRC code \t%X\r\n",(int)response_header.crc);
            printf("Content: \r\n%s\r\n",content);
          // #endif

            if (response_header.settings.ack) {
              // #ifdef TEST_FOR_SUCCESS
              printf("[TEST] 接收到ACK\r\n");
              // #endif
              package_over = 1;
              break;
            } else if (response_header.settings.nak) {
              if (response_header.settings.seq != seq) {
                // 说明是我没收到ack, 这个包已经接收成功了
                package_over = 1;
			        // #ifdef TEST_FOR_SUCCESS
                printf("[TEST] 接收到SEQ错误NAK, 发送下一个序列包!\r\n");
              // #endif
                break;
              }
              // #ifdef TEST_FOR_CRC_NAK
              //   printf("[TEST] 接收到CRC校验错误NAK, 重新发送!\r\n");
              // #endif
              if (++retries == TX_MAX_RETRIES) {
              // #ifdef TEST_FOR_SUCCESS
                printf("[TEST] 达到重传次数上限, 发送信息失败!\r\n");
              // #endif
                return -1;
              }
              LoraWriteAsync(p, send_len, &header);
              break;
            }
          }
        }
        SX1278_hw_DelayMs(1);
        if (--timeout == 0) { // 超时重传
          if (++retries == TX_MAX_RETRIES){
          // #ifdef TEST_FOR_TO
            printf("[TEST] 超时重传，达到次数上限，发送信息失败!\r\n");
          // #endif
            return -1;
          } 
        // #ifdef TEST_FOR_SUCCESS
          printf("\r\n\r\n[TEST] 超时重传，第%d次\r\n",retries);
          char content[512];
          memset(content,0x00,sizeof(content));
          memcpy(content,p,send_len);
          printf("dest_addr\t%d\r\n",(int)header.dest_addr);
          printf("src_addr \t%d\r\n",(int)header.src_addr);
          printf("setting  \t%X\r\n",header.settings);
          printf("length   \t%d\r\n",(int)header.length);
          printf("CRC code \t%X\r\n",(int)header.crc);
          printf("Content: \r\n%s\r\n",content);
        // #endif
          LoraWriteAsync(p, send_len, &header);

          break;
        }
      }
      if (package_over) {
        break;
      }
    }
    // 此包发送并接收成功, 准备发送下一个序列包
    package_over = 0;
    received += send_len;
    p += send_len;
    seq = 1 - seq;
  }

  return received;
}

void LoraTxCallbackFromISR() {
  TX_isCallBack = 1;
  TX_callBackFlag = TX_CALLBACK_SENDOVER;
}

void LoraTxCallbackFromTO() {
  TX_isCallBack = 1;
  TX_callBackFlag = TX_CALLBACK_TIMEOUT;
}

// __attribute__((deprecated)) int LoraWrite(const char *s, int len) {
// }

void LoraReadAsyncStart() {
  SX1278_LoRaEntryRx(&Rxsx1278, 16, 2000);
}

void LoraReadAsyncStop() {
  SX1278_standby(&Rxsx1278);
}

void LoraRead() {
  uint8_t seq = 0;
  LoraReadAsyncStart();

  while (1) {
    int ret = SX1278_LoRaRxPacket(&Rxsx1278);
    if (ret > 0) {
      // 判断dest_addr和crc
      SX1278_read(&Rxsx1278, (uint8_t*) buffer, ret);

    // #if (defined TEST_FOR_TO) || (defined TEST_FOR_SUCCESS) || (defined TEST_FOR_CRC_NAK)
      printf("\r\n\r\n[TEST] 接收报文.............\r\n");
      printf("dest_addr\t%d\r\n",(int)buffer[LPH_DST_ADDR]);
      printf("src_addr \t%d\r\n",(int)buffer[LPH_SRC_ADDR]);
      printf("setting  \t%X\r\n",(int)buffer[LPH_SETTING]);
      printf("length   \t%d\r\n",(int)buffer[LPH_LENGTH]);
      printf("CRC code \t%X\r\n",(int)buffer[LPH_CRC]);
      printf("Content: \r\n%s\r\n",&buffer[LORA_PACKET_HEADER_LENGTH]);
    // #endif

      LoraPacketHeader header;
      memcpy(&header, buffer, LORA_PACKET_HEADER_LENGTH);
      if (header.dest_addr == host_addr) {
        LoraPacketHeader response_header;
        LoraPacketHeaderInit(&response_header);
        response_header.dest_addr = header.src_addr;
        response_header.src_addr = host_addr;
        response_header.settings.seq = seq;

        if (header.settings.seq == seq) {
          char payload[header.length];
          memcpy(payload, buffer+LORA_PACKET_HEADER_LENGTH, header.length);
          if (header.crc == Crc(payload, header.length)) {
            // send ack seq
            response_header.settings.ack = 1;
            seq = 1-seq;
            // #ifdef TEST_FOR_SUCCESS
            printf("[TEST] 成功接收报文，发送ACK\r\n");
            // #endif
          } else { // crc 错误, nak seq
            response_header.settings.nak = 1;
            // #ifdef TEST_FOR_SUCCESS
            printf("[TEST] CRC校验失败，发送NAK\r\n");
            // #endif
          }
        } else { // seq 错误, nak seq
          response_header.settings.nak = 1;
		    // #ifdef TEST_FOR_SUCCESS
		      printf("[TEST] SEQ错误，发送NAK\r\n");
		    // #endif
        }
      // #ifdef TEST_FOR_TO
      //   printf("[TEST] 超时测试，延时5000ms\r\n");
      //   SX1278_hw_DelayMs(5000);
      // #endif
      // #ifdef TEST_FOR_SEQ_NAK
      //   // 模拟ack丢失, 会导致发送方下一个包的seq和接收方期望的不匹配
      //   if (ack_lost) {
      //     ack_lost = 0;
      //     continue;
      //   }
      // #endif
        LoraWriteAsync(buffer, LORA_PACKET_HEADER_LENGTH, &response_header);
        // 回到接收模式
        LoraReadAsyncStart();
      }
      // else if(1){
    	//   printf("\r\n\r\n[TEST] 接受到目标非本机报文，转发.............\r\n");
		  // memcpy(buffer, buffer+LORA_PACKET_HEADER_LENGTH, (int)buffer[LPH_LENGTH]);
		  // LoraPacketHeader header;
		  // // set header
		  // header.dest_addr = (int)buffer[LPH_DST_ADDR];
		  // header.src_addr = (int)buffer[LPH_SRC_ADDR];
		  // header.settings.seq = (int)buffer[LPH_SETTING];
		  // header.length = (int)buffer[LPH_LENGTH];
		  // header.crc = (int)buffer[LPH_CRC];
		  // LoraWriteAsync(buffer, (int)buffer[LPH_LENGTH], &header);
		  // LoraReadAsyncStart();
		  // printf("here?");
      // }
    }
  }

  // LoraReadAsyncStop();
}

//void LoraRxCallbackFromISR(const char *s, uint8_t len) {
//	if (host_addr == (uint8_t)s[LPH_DST_ADDR]) {
//
//	}
//  if((uint8_t)s[LPH_DST_ADDR] == (uint8_t)s[LPH_SRC_ADDR]) {
//    uint8_t require_addr = (uint8_t)s[LPH_SRC_ADDR];
//    if(!HeardListSearch(require_addr, HeardListHead)) {
//      HeardListHead = HeardListInsert(HeardListHead, require_addr);
//    }
//    LoraPacketHeader header;
//    header.dest_addr = require_addr;
//    header.src_addr = host_addr;
//    header.settings.seq = 0;
//    header.length = strlen(EntryMessage);
//    header.crc = Crc(EntryMessage, strlen(EntryMessage));
//    LoraWriteAsync(EntryMessage, strlen(EntryMessage), &header);
//    printf("\r\n\r\nEntrying %d's HeardList...\r\n", require_addr);
//    while(1){
//      int retries = 0;
//      if(TX_isCallBack){
//        if(TX_callBackFlag == TX_CALLBACK_SENDOVER) break;
//        else if(TX_callBackFlag == TX_CALLBACK_TIMEOUT) {
//          if(++retries == TX_MAX_RETRIES) {
//            printf("HeardList Entry Package Sending Failed!\r\n");
//          }
//          printf("Package Sending TimeOut, Requiring HeardList again\r\n");
//          LoraWriteAsync(EntryMessage, strlen(EntryMessage), &header);
//        }
//      }
//    }
//  }
//}

int LoraReadSync(char *s, int len) {
	return 0;
}

void LoraPacketHeaderInit(LoraPacketHeader* header) {
  memset(header,0x00,LORA_PACKET_HEADER_LENGTH);
}

uint16_t UpdateCRC16(uint16_t crc_in, uint8_t byte) {
  uint32_t crc = crc_in;
  uint32_t in = byte | 0x100;

  do
  {
    crc <<= 1;
    in <<= 1;
    if(in & 0x100)
      ++crc;
    if(crc & 0x10000)
      crc ^= 0x1021;
  }

  while(!(in & 0x10000));

  return crc & 0xffffu;
}

uint16_t Cal_CRC16(const uint8_t* p_data, uint32_t size) {
  uint32_t crc = 0;
  const uint8_t* dataEnd = p_data+size;

  while(p_data < dataEnd)
    crc = UpdateCRC16(crc, *p_data++);

  crc = UpdateCRC16(crc, 0);
  crc = UpdateCRC16(crc, 0);

  return crc&0xffffu;
}

uint8_t Crc(const char* payload, uint8_t len) {
  uint16_t crc16 = Cal_CRC16((const uint8_t*)payload, (uint32_t)len);
  uint8_t high = crc16 >> 8;
  uint8_t low = crc16 & 0x00FF;
  return high ^ low;
}
