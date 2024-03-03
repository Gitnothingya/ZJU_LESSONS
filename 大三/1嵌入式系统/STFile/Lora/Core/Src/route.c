#include "route.h"

extern DataToSend data_to_send_head;
extern DataToSend data_to_send_tail;

//create a route table
Table route_table = NULL;
Table getRouteTable(const char* buffer){
	printf("other route table is %s\r\n", buffer);
	if(!buffer) return NULL;
    Entry table = NULL;
    char* token;
    char* buffer_copy = strdup(buffer);
    const char* delimiter = " ;";
    token = strtok(buffer_copy, delimiter);
    while(token){
        uint8_t dest, next_hop, hop_count, life_count;
        if(sscanf(token, "%d %d %d %d", &dest, &next_hop, &hop_count, &life_count) == 4){
            Entry entry = (Entry)malloc(sizeof(struct RouteTableEntry));
            entry->dest = dest;
            entry->next_hop = next_hop;
            entry->hop_count = hop_count;
            entry->life_count = life_count;
            entry->next = table;
            entry->type = host_type;
            table = entry;
        }
        token = strtok(NULL, delimiter);
    }
    free(buffer_copy);
    return table;
}

void checkRouteTable(Table table){
    Entry entry, my_entry;
    entry = table;
    while(entry){
        checkEntry(entry);
        entry = entry->next;
    }
    my_entry = route_table;
    if (my_entry == NULL)
    {
    	printf("Route table is NULL!\r\n");
    }
    else
    {
        while(my_entry){
    		printf("dest: %d\tnext_hop: %d\thop_count: %d\tlife_count: %d\r\n", my_entry->dest, my_entry->next_hop, my_entry->hop_count, my_entry->life_count);
    		my_entry = my_entry->next;
    	}
    }
    freeRouteTable(table);
}

void checkEntry(Entry entry)
{
	Entry my_entry;
    // 是邻居本身的Entry
    if (entry->hop_count == 1)
    {
        for (Entry temp = route_table; temp != NULL; temp = temp->next)
        {
            if (temp->next_hop == entry->dest)
            {
                temp->life_count = 6;
            }
        }
    }
    my_entry = route_table;
    int add_flag = 1, modify_flag = 0;
    while(my_entry){
        if(entry->dest == my_entry->dest){
            add_flag = 0;
            if(my_entry->hop_count > entry->hop_count + 1) modify_flag = 1;
            break;
        }
        my_entry = my_entry->next;
    }
    if(modify_flag) modifyRouteTableEntry(entry->dest, entry->next_hop, entry->hop_count + 1, entry->type);
    if(add_flag) addRouteTableEntry(entry->dest, entry->next_hop, entry->hop_count, entry->type);
}

void freeRouteTable(Table table)
{
	Entry temp = table;
    while (temp != NULL)
    {
        Entry temp1 = temp;
        temp = temp->next;
        free(temp1);
    }
}

void addRouteTableEntry(uint8_t dest, uint8_t next_hop, uint8_t hop_count, uint8_t type){
    Entry entry;
    entry = (Entry)malloc(sizeof(struct RouteTableEntry));
    entry->dest = dest;
    entry->next_hop = next_hop;
    entry->hop_count = hop_count;
    entry->life_count = 6;
    entry->next = route_table;
    entry->type = type;
    route_table = entry;
}

void modifyRouteTableEntry(uint8_t dest, uint8_t next_hop, uint8_t hop_count, uint8_t type){
    Entry entry = route_table;
    while(entry){
        if(entry->dest == dest){
            entry->next_hop = next_hop;
            entry->hop_count = hop_count;
            entry->life_count = 6;
            entry->type = type;
            break;
        }
        entry = entry->next;
    }
}

void createBroadcastTread(){
    BaseType_t xReturned;
    xReturned = xTaskCreate(broadcastRouteTable, "broadcastRouteTable", configMINIMAL_STACK_SIZE*2, (void*)1, osPriorityNormal1, NULL);
    // return;
   if(xReturned != pdPASS) printf("\r\ncreateBroadcastTread Create fail\r\n");
   else printf("\r\nCreate Broadcast success\r\n");
    return;
}

uint8_t addBroadcastData()
{
	char buffer[50];
	buffer[0] = '\0';
	if (route_table == NULL)
	{
		sprintf(buffer, "Buffer Table is NULL!\r\n");
	}
    while (route_table != NULL)
    {
		sprintf(buffer, "%s%d %d %d %d %d;", buffer, route_table->dest, route_table->next_hop, route_table->hop_count, route_table->life_count, route_table->type);
		route_table->life_count -= 1;
        if (route_table->life_count == 0)
        {
            Entry temp = route_table;
            route_table = route_table->next;
            free(temp);
        }
        else
        {
        	break;
        }
    }
    Entry entry = route_table;
	while(entry != NULL && entry->next != NULL){
		sprintf(buffer, "%s%d %d %d %d %d;", buffer, entry->next->dest, entry->next->next_hop, entry->next->hop_count, entry->next->life_count, entry->next->type);
        entry->next->life_count--;
        if (entry->next->life_count == 0)
        {
            Entry temp = entry->next;
            entry->next = entry->next->next;
            free(temp);
        }
		entry = entry->next;
	}
	printf("\r\nbroadcast routetable\r\n");
    sendData(buffer, strlen(buffer), host_addr);
}

uint8_t addData(DataPacket data_packet)
{
    DataToSend temp = (DataToSend)malloc(sizeof(struct DataToSend));
    temp->data_packet = data_packet;
    temp->next = NULL;
    if (data_to_send_head == NULL)
    {
        data_to_send_head = data_to_send_tail = temp;
    }
    else
    {
        data_to_send_tail = data_to_send_tail->next = temp;
    }
}

void broadcastRouteTable(Table table) {
    /***********************************************************/
//	printf("\r\nentry Broadcast ssss\r\n");
//    int ret;
//    char buffer[50];
//    int message =0;
//    int message_length;
//    while(1){
//        printf("Master ...\r\n");
//        HAL_Delay(5000);
//        printf("Sending package...\r\n");
//
//        message_length = sprintf(buffer, "Hello %d", message);
//        ret = SX1278_LoRaEntryTx(&Txsx1278, message_length, 2000);
//        printf("Entry: %d\r\n", ret);
//
//        printf("Sending %s\r\n", buffer);
//        ret = SX1278_LoRaTxPacket(&Txsx1278, (uint8_t*) buffer,
//                    message_length, 2000);
//        message += 1;
//
//        printf("Transmission: %d\r\n", ret);
//        printf("Package sent...\r\n\r\n\r\n");
//    }
/****************************************************/
	while(1){
//		if(!entry){
//			Entry temp = (Entry)malloc(sizeof(struct RouteTableEntry));
//			temp->dest = host_addr;
//			temp->next_hop = host_addr;
//			temp->hop_count = 0;
//			temp->next = entry;
//			entry = temp;
//		}
		char buffer[50];
		buffer[0] = '\0';
		if (route_table == NULL)
		{
			sprintf(buffer, "Buffer Table is NULL!\r\n");
		}
        while (route_table != NULL)
        {
			sprintf(buffer, "%s%d %d %d %d;", buffer, route_table->dest, route_table->next_hop, route_table->hop_count, route_table->life_count);
			route_table->life_count -= 1;
            if (route_table->life_count == 0)
            {
                Entry temp = route_table;
                route_table = route_table->next;
                free(temp);
            }
            else
            {
            	break;
            }
        }
        Entry entry = route_table;
		while(entry != NULL && entry->next){
			sprintf(buffer, "%s%d %d %d %d;", buffer, entry->next->dest, entry->next->next_hop, entry->next->hop_count, entry->next->life_count);
            entry->next->life_count--;
            if (entry->next->life_count == 0)
            {
                Entry temp = entry->next;
                entry->next = entry->next->next;
                free(temp);
            }
			entry = entry->next;
		}
		printf("\r\nbroadcast routetable\r\n");
		sendData(buffer, strlen(buffer), host_addr);
		HAL_Delay(5000);
	}
}

void printRouteTable(){
	if(!route_table){
		printf("Route Table is NULL\r\n");
		return;
	}
	else{
		Entry temp = route_table;
		while(temp){
			printf("dest_addr: %d\tnext_hop: %d\thop_count: %d\tlife_count: %d\r\n", temp->dest, temp->next_hop, temp->hop_count, temp->life_count);
			temp = temp->next;
		}
	}
}

uint8_t getNextHopAddr(uint8_t real_dest_addr){
	for (Entry temp = route_table; temp != NULL; temp = temp->next)
    {
        if (temp->dest == real_dest_addr)
        {
            return temp->next_hop;
        }
    }
}
