#ifndef _ROUTE_H_
#define _ROUTE_H_
#include <stdint.h>
#include "lora.h"
#include "data_link_layer.h"
#include "global.h"
#include "cmsis_os.h"
#include "FreeRTOS.h"
#include "task.h"

extern SX1278_t sx1278;
extern uint8_t host_addr;
extern uint8_t host_type;

struct RouteTableEntry
{
    uint8_t dest;
    uint8_t next_hop;
    uint8_t hop_count;
    uint8_t life_count;
    uint8_t type;
    struct RouteTableEntry *next;
};
typedef struct RouteTableEntry *Entry;
typedef struct RouteTableEntry *Table;

/**
 * @brief 将包内的字符串内容转化为Table
 * @param s 收到的路由表字符串
*/
Table getRouteTable(const char* buffer);

/**
 * @brief 检查自己的路由表是否需要更新
 * @param table 收到的路由表
*/
void checkRouteTable(Table table);


void checkEntry(Entry entry);

/**
 * @brief free掉收到的data中的table
*/
void freeRouteTable(Table table);

/**
 * @brief 添加路由表记录
 * @param dest 目的地址
 * @param next_hop 下一跳的地址
 * @param hop_count 去到目的地址的跳数
 * @note 这个函数应该由checkRouteTable()调用
*/
void addRouteTableEntry(uint8_t dest, uint8_t next_hop, uint8_t hop_count, uint8_t type);

/**
 * @brief 添加路由表记录
 * @param dest 目的地址
 * @param next_hop 下一跳的地址
 * @param hop_count 去到目的地址的跳数
 * @note 这个函数应该由checkRouteTable()调用
*/
void modifyRouteTableEntry(uint8_t dest, uint8_t next_hop, uint8_t hop_count, uint8_t type);

/**
 * @brief 创建广播自己的路由表的线程
 * @param table 自己的路由表
 * @note 需要创建一个线程，用于每隔一段时间都广播一次路由表
*/
void createBroadcastTread();

/**
 * @brief 添加广播路由表数据到发送数据队列中
 * @note 这个函数应该由定时器中断每5s调用一次
*/
uint8_t addBroadcastData();

/**
 * @brief 如果要发送数据，则把数据添加到队列中，由发送线程自动发送
*/
uint8_t addData(DataPacket data_packet);

void printRouteTable();

/**
 * @brief 广播自己的路由表
 * @param table 自己的路由表
 * @note 每隔一段时间都广播一次路由表
*/
void broadcastRouteTable(Table table);

/**
 * @brief 获取下一跳的地址
*/
uint8_t getNextHopAddr(uint8_t real_dest_addr);

#endif
