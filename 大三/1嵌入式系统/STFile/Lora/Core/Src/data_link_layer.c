#include "data_link_layer.h"
#include "global.h"
#include "route.h"
#include <stdlib.h>
#include <string.h>
#include "lora.h"
#include "sx1278.h"
Resender resender_head = NULL;
Resender resender_tail = NULL;
DataToSend data_to_send_head = NULL;
DataToSend data_to_send_tail = NULL;
struct AckFlag ack_flag;
NormalDataToHandle normal_data_to_handle_head = NULL;
NormalDataToHandle normal_data_to_handle_tail = NULL;

LoraPacketHeader *createHeader(uint8_t src_addr, uint8_t real_dest_addr, uint8_t dest_addr, uint8_t seq, uint8_t length)
{
    LoraPacketHeader *header = (LoraPacketHeader *)malloc(sizeof(LoraPacketHeader));
    header->src_addr = src_addr;
    header->real_dest_addr = real_dest_addr;
    header->dest_addr = dest_addr;
    header->magic_number = 0;

    header->settings.seq = seq;
    header->settings.ack = 0;
    header->settings.nak = 0;

    header->length = length;
    header->ttl = ttl_init;
    return header;
}

DataPacket createDataPacket(LoraPacketHeader *header, char *data, uint8_t len)
{
    DataPacket data_packet = (DataPacket)malloc(sizeof(struct DataPacket));
    data_packet->header = header;
    data_packet->data = data;
    data_packet->len = len;
    return data_packet;
}

void freeDataPacket(DataPacket data_packet)
{
    free(data_packet->header);
    free(data_packet->data);
    free(data_packet);
}

uint8_t sendData(const char *data, uint8_t data_len, uint8_t real_dest_addr)
{
    char *data_to_send = (char*)malloc(sizeof(char) * data_len);
    memcpy(data_to_send, data , data_len);
    uint8_t next_hop_addr = getNextHopAddr(real_dest_addr);
    LoraPacketHeader *header = createHeader(host_addr, real_dest_addr, next_hop_addr, 0, data_len);
    DataPacket data_packet = createDataPacket(header, data_to_send, data_len);
//        setCrc(data_packet);
    sendDataPacket(data_packet);
    return 0;
    
    uint8_t seq = 0;
    uint8_t sent_bytes = 0;
    if (data_len == 0)
    {
    	LoraPacketHeader *header = createHeader(host_addr, real_dest_addr, 0, 0, 0);
        DataPacket data_packet = createDataPacket(header, NULL, 0);
//	    setCrc(data_packet);
        sendDataPacket(data_packet);
        return 0;
    }
    while (sent_bytes < data_len)
    {
        uint8_t packet_len = 0;
        if (data_len - sent_bytes >= LORA_MAX_PAYLOAD)
        {
            packet_len = LORA_MAX_PAYLOAD;
        }
        else
        {
            packet_len = data_len - sent_bytes;
        }
        char *data_to_send = (char*)malloc(sizeof(char) * packet_len);
        memcpy(data_to_send, data + sent_bytes, packet_len);
        sent_bytes += packet_len;
        uint8_t next_hop_addr = getNextHopAddr(real_dest_addr);
        LoraPacketHeader *header = createHeader(host_addr, real_dest_addr, next_hop_addr, seq++, packet_len);
        DataPacket data_packet = createDataPacket(header, data_to_send, packet_len);
//        setCrc(data_packet);
        sendDataPacket(data_packet);
    }
}

uint8_t sendDataPacket(DataPacket data_packet)
{
    // LoraWriteAsync(data_packet->data, data_packet->len, data_packet->header);
    addData(data_packet);
    // // 路由广播包不重传
    // if (data_packet->header->real_dest_addr == data_packet->header->src_addr)
    // {
    //     freeDataPacket(data_packet);
    // }
    // // ack和nak不重传
    // else if (data_packet->header->settings.ack == 1 && data_packet->header->settings.nak == 1)
    // {
    //     freeDataPacket(data_packet);
    // }
    // else
    // {
    // 	// uint8_t times = 10;
    //     // ack_flag.flag = 0;
    //     // ack_flag.real_dest_addr = data_packet->header->real_dest_addr;
    //     // ack_flag.seq = data_packet->header->settings.seq;
    //     // while(!ack_flag.flag && times)
    //     // {
    //     //     LoraWriteAsync(data_packet->data, data_packet->len, data_packet->header);
    //     //     times--;
    //     //     HAL_Delay(100);
    //     // }
    //     // if (!times)
    //     // {
    //     //     printf("Send dataPacket failed!\r\n");
    //     // }
    //     freeDataPacket(data_packet);
    // }
}

uint8_t sendAck(uint8_t real_dest_addr, uint8_t seq)
{
    LoraPacketHeader *header = createHeader(host_addr, real_dest_addr, getNextHopAddr(real_dest_addr), seq, 0);
    header->settings.ack = 1;
    DataPacket data_packet = createDataPacket(header, NULL, 0);
    sendDataPacket(data_packet);
}

uint8_t sendNak(uint8_t real_dest_addr, uint8_t seq)
{
    LoraPacketHeader *header = createHeader(host_addr, real_dest_addr, getNextHopAddr(real_dest_addr), seq, 0);
    header->settings.nak = 1;
    DataPacket data_packet = createDataPacket(header, NULL, 0);
    sendDataPacket(data_packet);
}

uint8_t createDataListener()
{
//	LoraReadAsyncStart();
    int ret;
	ret = xTaskCreate(dataListener, "dataListener", configMINIMAL_STACK_SIZE*2, NULL, osPriorityNormal1, NULL);
    if(ret != pdPASS) printf("\r\nDataListener Create fail\r\n");
    else printf("\r\nCreate datalistener success\r\n");

    return ret;
}

void  dataListener()
{
    SX1278_LoRaEntryRx(&Rxsx1278, 16, 2000);
	while(1)
    {
		int  ret =  SX1278_LoRaRxPacket(&Rxsx1278);
    }
}

void LoraRxCallbackFromISR(const char *s, uint8_t len)
{
    LoraPacketHeader *header = (LoraPacketHeader *)malloc(sizeof(LoraPacketHeader));

    memcpy(header, s, sizeof(LoraPacketHeader));
    char *data = (char*)malloc(sizeof(char) * header->length + 1);
    memcpy(data, s + sizeof(LoraPacketHeader), header->length);
    data[header->length] = '\0';
    handleDataPacket(createDataPacket(header, data, header->length));
}

uint8_t handleDataPacket(DataPacket data_packet)
{
    if (data_packet->header->src_addr == host_addr)
    {
//    	return 0;
    }
	if (data_packet->header->src_addr == data_packet->header->real_dest_addr)
    {
        handleRouteUpdatePacket(data_packet);
    }
    else
    {
        handleNormalPacket(data_packet);
    }
    freeDataPacket(data_packet);
}

uint8_t handleRouteUpdatePacket(DataPacket data_packet)
{
	printf("route\r\n");
    if (data_packet->header->src_addr != host_addr)
    {
       Entry entry = (Entry)malloc(sizeof(Entry));
       entry->dest = data_packet->header->src_addr;
       entry->next_hop = data_packet->header->src_addr;
       entry->hop_count = 1;
       entry->next = NULL;
       checkEntry(entry);

       Table table = getRouteTable(data_packet->data);
       checkRouteTable(table);
    }
}

uint8_t handleNormalPacket(DataPacket data_packet)
{
    printf("normal\r\n");
	if (data_packet->header->settings.ack == 1)
    {
        if (data_packet->header->src_addr == ack_flag.real_dest_addr && data_packet->header->settings.seq == ack_flag.seq)
        {
            ack_flag.flag = 1;
            printf("ACK!\r\n");
        }
    }
    else if (data_packet->header->settings.nak == 1)
    {
        if (data_packet->header->src_addr == ack_flag.real_dest_addr && data_packet->header->settings.seq == ack_flag.seq)
        {
            printf("NAK!\r\n");
        }
    }
    else
    {
        printf("normalnornam, data is %s\r\n", data_packet->data);
        printf("src is %d, real_dest is %d, dest is %d\r\n", data_packet->header->src_addr, data_packet->header->real_dest_addr, data_packet->header->dest_addr);
    	if (1)
        {
            if (host_addr != data_packet->header->dest_addr)
            {
                return 0;
            }
            if (host_addr != data_packet->header->real_dest_addr)
            {
                sendData(data_packet->data, data_packet->header->length, data_packet->header->real_dest_addr);
                return 1;
            }
            char command[20];
            sscanf(data_packet->data, "%s", command);
            printf("command is %s\r\n", command);
            printf("The first char is %c\r\n", data_packet->data[0]);
            if (strstr(data_packet->data, "request") != NULL || data_packet->data[0] == 'r')
            {

            	printf("Receive a request dataPacket\r\n");
                char str[20];
                if (host_type == 0)
                {
                    sprintf(str, "request %d", data_packet->header->src_addr);
                }
                else if (host_type == 1)
                {
                    
                }
                sendDataToESP32(str, strlen(str));
            }
            // ESP32 request 100
            // data = "request ", real_dest = 100

            // 103 -> ESP32(request 110)
            // "answer type 110 d1 d2"
            // 
            // 100 110
            // 100(ESP32): request 110
            // 110收到：request 100
            // 110发送：100 20 30
            // 100收到：1 20 30
            else if (strstr(data_packet->data, "answer") != NULL)
            {
                printf("Receive a answer dataPacket\r\n");
                uint8_t d1;
                uint8_t d2;
                sscanf(data_packet->data, "answer %d %d", &d1, &d2);
                char data[20];
                sprintf(data, "1 %d %d", d1, d2);
                sendDataToESP32(data, strlen(data));
            }
            return 0;

            // if (data_packet->header->settings.seq == 0 && normal_data_to_handle_head == NULL)
            // {
            //     NormalDataToHandle temp = (NormalDataToHandle)malloc(sizeof(struct NormalDataToHandle));
            //     temp->src_addr = data_packet->header->src_addr;
            //     temp->seq = data_packet->header->settings.seq;
            //     temp->data = (char *)malloc(sizeof(char) * data_packet->header->length);
            //     memcpy(temp->data, data_packet->data, data_packet->header->length);
            //     temp->data_len = data_packet->header->length;
            //     temp->next = NULL;

            //     sendAck(temp->src_addr, temp->seq);
            //     normal_data_to_handle_head = normal_data_to_handle_tail = temp;
            // }
            // else if (normal_data_to_handle_head != NULL &&
            // normal_data_to_handle_tail->src_addr == data_packet->header->src_addr &&
            // normal_data_to_handle_tail->seq + 1 == data_packet->header->settings.seq)
            // {
            //     NormalDataToHandle temp = (NormalDataToHandle)malloc(sizeof(struct NormalDataToHandle));
            //     temp->src_addr = data_packet->header->src_addr;
            //     temp->seq = data_packet->header->settings.seq;
            //     temp->data = (char *)malloc(sizeof(char) * data_packet->header->length);
            //     memcpy(temp->data, data_packet->data, data_packet->header->length);
            //     temp->data_len = data_packet->header->length;
            //     temp->next = NULL;

            //     sendAck(temp->src_addr, temp->seq);
            //     normal_data_to_handle_tail = normal_data_to_handle_tail->next = temp;
            // }
            // else
            // {
            //     return 0;
            // }

            // if (strstr(data_packet->data, "END") != NULL)
            // {
            //     handleNormalData();
            // }
        }
        else
        {
            sendNak(data_packet->header->src_addr, data_packet->header->settings.seq);
        }

    }
}

uint8_t handleNormalData()
{
    char buffer[500];
    uint8_t ptr = 0;
    for (NormalDataToHandle temp = normal_data_to_handle_head; temp != NULL;)
    {
        memcpy(buffer + ptr, temp->data, temp->data_len);
        ptr += temp->data_len;
        NormalDataToHandle temp1 = temp;
        temp = temp->next;
        free(temp1->data);
        free(temp1);
    }
    buffer[ptr] = '\0';
    printf("Data: %s\r\n", buffer);
}

uint8_t createDataSender()
{
    int ret;
	ret = xTaskCreate(dataSender, "dataSender", configMINIMAL_STACK_SIZE*2, NULL, osPriorityNormal1, NULL);
    if(ret != pdPASS) printf("\r\nDataSender Create fail\r\n");
    else printf("\r\nCreate dataSender success\r\n");
}

uint8_t dataSender()
{
	while(1)
	{
	    if(data_to_send_head != NULL)
	    {
	        DataPacket data_packet = data_to_send_head->data_packet;
            LoraWriteAsync(data_packet->data, data_packet->len, data_packet->header);
	        DataToSend temp = data_to_send_head;
	        data_to_send_head = data_to_send_head->next;
	        freeDataPacket(data_packet);
	        free(temp);
	    }
	}
}
