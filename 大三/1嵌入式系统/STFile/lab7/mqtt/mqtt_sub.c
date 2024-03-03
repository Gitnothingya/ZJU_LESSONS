#include <mosquitto.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>



static int running = 1;

void ShowOnLED(char * msg, int len);

void ConnnectCallback(struct mosquitto *mosq, void* obj, int rc)
{
    printf("Connect: %s\n",mosquitto_connack_string(rc));
    if(rc != 0){
        fprintf(stderr, "Error Connect: Connect fail !!!\n");
        mosquitto_disconnect(mosq);
    }

    rc = mosquitto_subscribe(mosq, NULL, "DHT11", 0);//订阅，mosq结构体，id, 主题， Qos
    if(rc != MOSQ_ERR_SUCCESS){
        fprintf(stderr, "Error subscribe: %s\n", mosquitto_strerror(rc));
        mosquitto_disconnect(mosq);
    }
    running = 1;
}

void SubscibeCallback(struct mosquitto *mosq, void* obj, int mid, int qos_count, const int *granted_qos)
{
        int i;
        bool have_subscription = false;// 订阅是否成功 flag.

        for(i=0; i<qos_count; i++){
                printf("on_subscribe: %d:granted qos = %d\n", i, granted_qos[i]);
                if(granted_qos[i] <= 2){
                        have_subscription = true;
                }
        }
        if(have_subscription == false){
                fprintf(stderr, "Error: All subscriptions rejected.\n");
                mosquitto_disconnect(mosq);
        }
}

void MessageCallback(struct mosquitto *mosq, void *obj, const struct mosquitto_message *msg)
{
    printf("********* Message Begin **********\n");
    printf("Topic: %s  Qos%d  len:%d\n",msg->topic, msg->qos,msg->payloadlen);// 输出相关信息，主题，Qos，信息
    printf("Msg: %s\n", (char*)msg->payload);

    ShowOnLED((char*) msg->payload,msg->payloadlen);

    printf("*********  Message END  **********\n\n");


}

void DisconnectCallback(struct mosquitto *mosq, void *obj, int rc)
{
    printf("Disconnect: disconnect_callback\n");
    running = 0;
}

void ShowOnLED(char * msg, int len)
{
    int fd, ret;

    fd = open("/dev/led_matrix",O_RDWR | O_NONBLOCK);//增加写权限
    if(fd < 0)
    {
        fprintf(stderr, "Error Open: open /dev/led_matrix error! fd:%d\n",fd);
        return ;
    }

    ret = write(fd, msg, len);
    if(ret < 0)
    {
        fprintf(stderr,"error to write msg to LED\n");
        return ;
    }
    // int i;
    // for (i = 0; i < len; i++){
    //     ret 
    // }
    close(fd);
}




int  main()
{
    struct mosquitto *mosq;
    int rc;

    // 初始化mosquitto库
    mosquitto_lib_init();
    
    // 创建新的客户端实例。
    mosq = mosquitto_new(NULL, true, NULL);
    if(mosq == NULL){
        fprintf(stderr, "Error: Not able to create mosquitto.\n");
        return 1;
    }

    // mosquitto_log_callback_set(mosq, my_log_callback);
    mosquitto_connect_callback_set(mosq, ConnnectCallback);
    mosquitto_message_callback_set(mosq, MessageCallback);
    mosquitto_subscribe_callback_set(mosq, SubscibeCallback);
    mosquitto_disconnect_callback_set(mosq, DisconnectCallback);

    mosquitto_username_pw_set(mosq, "yanhan", "yanhan");
    rc = mosquitto_connect_async (mosq, "192.168.43.145", 1883, 60);
    if(rc != MOSQ_ERR_SUCCESS){
            mosquitto_destroy(mosq);
            fprintf(stderr, "Error connect main: %s\n", mosquitto_strerror(rc));
            return 1;
    }

    // 异步循环
    rc = mosquitto_loop_start(mosq);
    if(rc != MOSQ_ERR_SUCCESS)
    {
            mosquitto_destroy(mosq);
            fprintf(stderr, "Error loop main: %s\n", mosquitto_strerror(rc));
            return 1;
    }

    // 开始循环
    printf("Start mosquitto loop!\n");
    while(running)
    {
        char ch;
        scanf("%c",ch);
        if(ch == 'q') break;
    }

    // 结束后的清理工作
    mosquitto_destroy(mosq);
    mosquitto_lib_cleanup();
    printf("End mosquitto loop!\n");
    return 0;
}













