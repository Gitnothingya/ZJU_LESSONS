#ifndef _DATA_LINK_LAYER_H_
#define _DATA_LINK_LAYER_H_
#include <stdint.h>
#include "lora.h"
#include "global.h"
#include "cmsis_os.h"
#include "FreeRTOS.h"
#include "task.h"
extern SX1278_t sx1278;
extern uint8_t host_addr;
extern uint32_t timeout_time;
extern uint8_t ttl_init;

struct AckFlag {
    uint8_t real_dest_addr;
    uint8_t seq;
    uint8_t flag;
};

struct NormalDataToHandle {
    uint8_t src_addr;
    uint8_t seq;
    char *data;
    uint8_t data_len;
    struct NormalDataToHandle *next;
};
typedef struct NormalDataToHandle *NormalDataToHandle;

struct DataPacket {
    LoraPacketHeader *header;
    char *data;
    uint8_t len; //数据部分的长度
};
typedef struct DataPacket *DataPacket;

struct DataToSend {
    DataPacket data_packet;
    struct DataToSend *next;
};
typedef struct DataToSend *DataToSend;



struct Resender {
    TaskHandle_t resender_handle;
    uint8_t dest_addr;
    uint8_t seq;
    DataPacket data_packet;
    struct Resender *next;
};
typedef struct Resender *Resender;

/**
 * @brief 在重发线程链表中添加一个线程
*/
Resender addResender(TaskHandle_t resender_handle, DataPacket data_packet);

/**
 * @brief free掉data_packet中相关的堆中的内存
*/
void freeDataPacket(DataPacket data_packet);



/**
 * @brief 创建一个数据包头
*/
LoraPacketHeader *createHeader(uint8_t src_addr, uint8_t real_dest_addr, uint8_t dest_addr, uint8_t seq, uint8_t length);

/**
 * @brief 创建数据包
*/
DataPacket createDataPacket(LoraPacketHeader *header, char *data, uint8_t len);

/**
 * @brief 设置crc
*/
void setCrc(DataPacket data_packet);

/**
 * @brief 发送整块数据
 * @param data 数据部分
 * @param data_len 数据部分总长度
 * @param real_dest_addr 目的地址
*/
uint8_t sendData(const char *data, uint8_t data_len, uint8_t real_dest_addr);

/**
 * @brief 发送数据包
 * @param data_packet 需要发送的数据包
*/
uint8_t sendDataPacket(DataPacket data_packet);

/**
 * @brief 创建超时重传的线程
 * @param data_packet 需要发送的数据包
*/
uint8_t createDataPacketResender(DataPacket data_packet);

/**
 * @brief 数据包超时重传线程
 * @param data_packet 需要发送的数据包
*/
uint8_t dataPacketResender(DataPacket data_packet);

/**
 * @brief 发送ack
 * @param real_dest_addr 发送ack的目的地址
 * @param seq 确认的数据包的序列号
 * @note 需要调用sendDataPacket函数
*/
uint8_t sendAck(uint8_t real_dest_addr, uint8_t seq);

/**
 * @brief 发送nak
 * @param real_dest_addr 发送nak的目的地址
 * @param seq 序列号
 * @note 需要调用sendDataPacket函数
*/
uint8_t sendNak(uint8_t real_dest_addr, uint8_t seq);


/**
 * @brief 创建一个线程监听收到的数据包，线程调用SX1278_LoRaRxPacket函数，触发中断处理函数LoraRxCallbackFromISR，
 * 中断处理函数再调用数据包处理函数
*/
uint8_t createDataListener();

/**
 * @brief 监听数据的线程函数
 * @note 由createDataListener函数调用
*/
void dataListener();

/**
 * @brief 处理收到的数据包
 * @param data_packet 接收到的数据包
 * @note 需要调用handleRouteUpdatePacket或者handleRouteUpdatePacket
*/
uint8_t handleDataPacket(DataPacket data_packet);

/**
 * @brief 处理路由信息更新的数据包
 * @param data_packet 接收到的的数据包
*/
uint8_t handleRouteUpdatePacket(DataPacket data_packet);

/**
 * @brief 处理普通数据包
 * @param data_packet 接收到的的数据包
*/
uint8_t handleNormalPacket(DataPacket data_packet);

/**
 * @brief 关闭线程
 * @note 在超时重传次数到达上限或者收到ack之后调用
*/
uint8_t closeResender(uint8_t real_dest_addr, uint8_t seq);

/**
 * @brief 创建发送数据的线程
*/
uint8_t createDataSender();

/***
 * @brief 发送数据的线程
*/
uint8_t dataSender();

uint8_t handleNormalData();


#endif
