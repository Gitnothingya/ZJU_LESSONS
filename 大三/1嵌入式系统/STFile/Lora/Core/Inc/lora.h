#ifndef INC_LORA_H_
#define INC_LORA_H_


#include "sx1278.h"
#include "main.h"
#include "spi.h"

#define LORA_TRANSFER_NUM 10
extern SX1278_t Txsx1278;
extern SX1278_t Rxsx1278;
extern uint8_t host_addr;
/**
 * @brief Lora packet header structure
 * @note
 * if src/dst addr is loopback, we should consider it as `LORA_ADDR`
 * seq: should be kept for every peer
 * nak: may be removed in future
 * crc: will be REMOVED after M2
 */
typedef struct LoraPacketHeader {
  uint8_t dest_addr;
  // if addr is 0, it should be ignored.
  uint8_t real_dest_addr;
  uint8_t src_addr;
  uint8_t magic_number;// = LORA_MAGIC_NUMBER;
  struct {
    uint8_t seq : 1;
    bool ack : 1;
    bool use_wifi : 1;
    bool nak : 1;
    uint8_t reserved : 1;
    uint8_t service : 3;
  } settings;// = {0, 0, 0, 0, 0, 0};
  uint8_t length;// = 0; // the length of payload
  uint8_t crc;// = 0; // xor of crc16 high and low bytes
  uint8_t ttl;//time to live
  // uint8_t reserved = 0;
} LoraPacketHeader;

#define LORA_MAGIC_NUMBER 110

#define LORA_PACKET_HEADER_LENGTH sizeof(LoraPacketHeader)
#define LORA_MAX_PAYLOAD  128
#define LORA_BUFFER_SIZE (LORA_PACKET_HEADER_LENGTH + LORA_MAX_PAYLOAD)

#define TX_CALLBACK_NULL     0
#define TX_CALLBACK_SENDOVER 1
#define TX_CALLBACK_TIMEOUT  2

#define TX_MAX_RETRIES       5

/*********************************************************************************
 * @brief 仅用于物理层测试
 */
// #define TEST_FOR_SUCCESS      // 开启成功测试
//#define TEST_FOR_TO         // 开启超时重传测试
// #define TEST_FOR_CRC_NAK    // 开启CRC校验错误NAK重传测试
// #define TEST_FOR_SEQ_NAK      // 开始SEQ错误NAK重传测试

// Lora Packet Header Index
#define LPH_DST_ADDR   0
#define LPH_REAL_ADDR  1
#define LPH_SRC_ADDR   2
#define LPH_SETTING    4
#define LPH_LENGTH     5
#define LPH_CRC        6
#define LPH_TTL        7
/********************************************************************************/

/**
 * @brief 初始化LoRa模块，设置中断
 * @return 1成功，0超时
 * @note 应在uart和HAL初始化完毕后调用
 * @note init失败将导致reset
 */
int LoraInit();

/**
 * @brief LoRa模块发包异步API
 * @param[in] s 待写入内容地址
 * @param[in] len 待写入内容长度
 * @return TODO
 * @note 在上一次发包未回调时再次调用是未定义行为，推荐实现为打断上次发包任务
 */
void LoraWriteAsync(const char *s, uint8_t len, const LoraPacketHeader *header);

/**
 * @brief LoRa模块发送数据API
 * @param s 待写入内容地址
 * @param len 待写入内容长度
 * @return int 发送字符数, -1表示发送失败
 */
int LoraWrite(const char *s, uint32_t len, uint8_t dest_addr, uint8_t src_addr);

/**
 * @brief 发包中断回调函数
 * @param[in] state TODO: 发包反馈
 * @note 由用户实现
 */
void LoraTxCallbackFromISR();

/**
 * LoRa write同步系统调用
 * @param[in] s 待写入内容地址
 * @param[in] len 待写入内容长度
 * @return 写入字符数，-1为失败
 * @note 该API仅用于测试
 */
//__attribute__((deprecated)) int LoraWrite(const char *s, int len);

/**
 * @brief 启用LoRa模块收包功能
 * @return TODO
 */
void LoraReadAsyncStart();

/**
 * @brief 停止LoRa模块收包功能
 * @return TODO
 * @note LoRa模块应确保stop时即使有未收完的包后续也不会callback
 */
void LoraReadAsyncStop();

/**
 * @brief Keep reading
 * 
 */
void LoraRead();

/**
 * @brief 收包中断回调函数
 * @param[in] s 缓冲区地址
 * @param[in] len 数据长度，最大为256
 * @note 由用户实现
 * @note 函数返回后缓冲区`s`将不可用
 */
//void LoraRxCallbackFromISR(const char *s, uint8_t len);

void LoraTxCallbackFromTO();

/**
 * LoRa read同步系统调用
 * @param[in] s 待写入缓冲区地址
 * @param[in] len 最长读入长度
 * @return 读入字符数，-1为失败
 * @note 同步API，需要阻塞，下次收包不需要回调，使该函数返回即可
 */
int LoraReadSync(char *s, int len);


uint16_t UpdateCRC16(uint16_t crc_in, uint8_t byte);
uint16_t Cal_CRC16(const uint8_t* p_data, uint32_t size);
uint8_t Crc(const char* payload, uint8_t len);

#endif /* INC_LORA_H_ */
