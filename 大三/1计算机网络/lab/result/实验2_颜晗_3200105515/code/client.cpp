#include <iostream>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <netinet/in.h>
#include <arpa/inet.h>
// #include <thread>
#include <pthread.h>
#include <unistd.h>
#include <string>
#include <mutex>
#include <cstring>
#include <vector>

using namespace std;

#define MAX_BUF_SIZE 256

#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define YELLOW  "\033[33m"
#define NORMAL  "\033[0m"

#define SERVER_PORT 5515

enum msgtype{CONNECT, DISCONNECT, GET_TIME, GET_NAME,
             GET_CLIENTS_LIST, SEND_MSG, POST_MSG};

/**
 * @struct msgbuf
 * @brief 自定义消息类型
*/
struct Mmsgbuf{
    long mtype;
    char minfo[MAX_BUF_SIZE];
};


// bool running = 1;       //表示客户端的连接状态
/**
 * @class Client
 * @brief 客户端定义
*/
class Client{
    private:
        int sockfd;
        sockaddr_in server_addr; //服务端地址信息
        pthread_t subThread;   //接收消息的子线程
        int msgID;          //消息队列ID
        // bool connect;       //表示客户端的连接状态

        void infoTable();
        void connectWithServer();   //连接服务器
        void disconnectWithServer();//断开连接
        void getServerTime();       //获取服务器时间
        void getServerName();       //获取服务器机器名
        void getClientList();       //获取客户端列表
        void sendMessage();         //发送信息


    public:
        Client();
        ~Client();
        void run();
        // bool getConnect(){ return connect;}

};
void* msgThread(void* argc);        //接收信息的子线程函数。


int main()
{
    Client client;
    client.run();

    return 0;
}

void Client::infoTable()
{
    cout<<"+-------+--------------------------------------+"<<endl;
    cout<<"| INPUT |              FUNCTION                |"<<endl;
    cout<<"+-------+--------------------------------------+"<<endl;
    cout<<"|   c   |         Connect to a server          |"<<endl;
    cout<<"|   d   |     Disconnect with the server       |"<<endl;
    cout<<"|   t   |  Get the current time on the server  |"<<endl;
    cout<<"|   n   |  Get the machine name of the server  |"<<endl;
    cout<<"|   l   |  Get the clients list of the server  |"<<endl;
    cout<<"|   s   |     Send a message to a client       |"<<endl;
    cout<<"|   q   |        Disconnect and quit           |"<<endl;
    cout<<"|   h   |     Show this infomation table       |"<<endl;
    cout<<"+-------+--------------------------------------+"<<endl;
    return ;
}

Client::Client()
{
    sockfd = -1;
    key_t key = ftok("/",55);
    msgID = msgget(key, IPC_CREAT | 0666);
    if (msgID < 0){
        cout<<RED << "[Error] Message queue create fail."<< NORMAL <<endl; 
        return;
    }

    cout<< "The socket client of 5515"<<endl;
    cout<< "Welcome !"<< endl;
    infoTable();
    cout<<YELLOW<<"[Tip] Please connect to a server before your operation"<<NORMAL<<endl;

}

Client::~Client()
{

}

void Client::run()
{
    cout<<GREEN<<">>> "<<NORMAL;
    char get_in;
    cin >>get_in;
    while (true)
    {
        if(get_in == 'c'){
            connectWithServer();
        }
        else if(get_in == 'd'){
            disconnectWithServer();
        }
        else if(get_in == 't'){
            getServerTime();
        }
        else if(get_in == 'n'){
            getServerName();
        }
        else if(get_in == 'l'){
            getClientList();
        }
        else if(get_in == 's'){
            sendMessage();
        }
        else if(get_in == 'q'){
            if (sockfd != -1)
                disconnectWithServer();
            break;
        }
        else if(get_in == 'h'){
            infoTable();
        }
        else {
            cout << RED<<"INVALID INPUT !"<<NORMAL<<endl;
        }
        
        cout<<GREEN<<">>> "<<NORMAL;
        cin >> get_in;
    }
    cout<<YELLOW <<"[Tip] The client is closing ......"<<NORMAL<<endl;
}

/**
 * @brief 连接服务器
*/
void Client::connectWithServer()
{
    if(sockfd != -1){
        cout<< RED << "[Error] Connected ALready"<<NORMAL <<endl;
        return ; 
    }
    string ip;
    int port;
    cout << "the server ip: "<<endl;
    cin >> ip;
    cout << "the server port: "<<endl;
    cin >> port;
    
    //设置
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERVER_PORT);
    server_addr.sin_addr.s_addr = inet_addr(ip.c_str());
    //连接
    connect(sockfd, (struct sockaddr*)&server_addr, sizeof(struct sockaddr) );
    pthread_create(&subThread, NULL, msgThread, &sockfd);


}
void Client::disconnectWithServer()
{
    if(sockfd == -1){
        cout<< RED <<"[Error] No Connection !!!"<<NORMAL <<endl;
    }
    else {
        Mmsgbuf sendBuf;
        sendBuf.mtype = DISCONNECT;
        // cout<<sockfd <<"????  "<<subThread<<endl;
        if(send(sockfd, &sendBuf, sizeof(sendBuf), 0) < 0){
            cout<<RED<<"[Error] connection close failure!!!"<<endl;
            exit(1);
        }
        // running = 0;
        // cout<<
        pthread_join(subThread, NULL); //合并子线程

        //sockfd 置-1，表示无连接
        close(sockfd);
        sockfd = -1;

        cout <<YELLOW << "[Info] "<< NORMAL << "Connetcion closed."<<endl;
        // subThread.join();
        return ;
    }

}

void Client::getServerTime()
{
    if(sockfd == -1){
        cout << RED << "[Error] No Connection !!!"<<NORMAL<<endl;
        return ;
    }
    Mmsgbuf sendBuf={0};
    sendBuf.mtype = GET_TIME;
    if(send(sockfd, &sendBuf, sizeof(sendBuf), 0) < 0){
        cout<<RED<<"[Error] GET_TIME send Failure !!!"<<NORMAL <<endl;
        return;
    }
    for(int i=0;i<99;i++){
        send(sockfd, &sendBuf, sizeof(sendBuf), 0);
        usleep(5000);
    }
    Mmsgbuf rcvBuf = {0};
    long msgType  = GET_TIME;
    if(msgrcv(msgID, &rcvBuf, MAX_BUF_SIZE, msgType, 0) < 0){
        cout << RED<< "[Error] GET_TIME recieve Failure !!!"<<NORMAL<<endl;
        return ;
    }
    
    time_t t;
    sscanf(rcvBuf.minfo, "%ld", &t);
    cout<<YELLOW << "[Info] "<<NORMAL<<"The server time is "<<ctime(&t);

    return;
}

void Client::getServerName()
{
    if(sockfd == -1){
        cout << RED << "[Error] No Connection !!!"<<NORMAL<<endl;
        return ;
    }
    Mmsgbuf sendBuf={0};
    sendBuf.mtype = GET_NAME;
    if(send(sockfd, &sendBuf, sizeof(sendBuf), 0) < 0){
        cout<<RED<<"[Error] GET_NAME send Failure !!!"<<NORMAL <<endl;
        return;
    }
    Mmsgbuf rcvBuf = {0};
    long msgType  = GET_NAME;
    if(msgrcv(msgID, &rcvBuf, MAX_BUF_SIZE, msgType, 0) < 0){
        cout << RED<< "[Error] GET_NAME recieve Failure !!!"<<NORMAL<<endl;
        return ;
    }
    cout<<YELLOW <<"[Info] "<<NORMAL<<"The server machine name is "<<rcvBuf.minfo<<endl;
    
    return;

}

void Client::getClientList()
{
    if(sockfd == -1){
        cout << RED << "[Error] No Connection !!!"<<NORMAL<<endl;
        return ;
    }
    Mmsgbuf sendBuf={0};
    sendBuf.mtype = GET_CLIENTS_LIST;
    if(send(sockfd, &sendBuf, sizeof(sendBuf), 0) < 0){
        cout<<RED<<"[Error] GET_CLIENT_LIST send Failure !!!"<<NORMAL <<endl;
        return;
    }
    Mmsgbuf rcvBuf = {0};
    long msgType  = GET_CLIENTS_LIST;
    if(msgrcv(msgID, &rcvBuf, MAX_BUF_SIZE, msgType, 0) < 0){
        cout << RED<< "[Error] GET_CLIENTS_LIST recieve Failure !!!"<<NORMAL<<endl;
        return ;
    }
    cout<<YELLOW <<"[Info] "<<NORMAL<<"The Clients List:\n"<<rcvBuf.minfo<<endl;
    
    return;
}

void Client::sendMessage()
{
    if(sockfd == -1){
        cout << RED << "[Error] No Connection !!!"<<NORMAL<<endl;
        return ;
    }
    Mmsgbuf sendBuf;
    sendBuf.mtype = SEND_MSG;
    int id;
    string content;
    cout<<"the client ID: "<<endl;
    cin >> id;
    cin.get();
    sprintf(sendBuf.minfo, "%d", id);
    cout<< "The content of message:(less than 200 characters)"<<endl;
    getline(cin,content);
    memcpy(sendBuf.minfo+5,content.c_str(), 201);

    if(send(sockfd, &sendBuf, sizeof(sendBuf), 0) < 0){
        cout<<RED<<"[Error] SEND_MSG send Failure !!!"<<NORMAL <<endl;
        return;
    }
    Mmsgbuf rcvBuf = {0};
    long msgType  = SEND_MSG;
    if(msgrcv(msgID, &rcvBuf, MAX_BUF_SIZE, msgType, 0) < 0){
        cout << RED<< "[Error] SEND_MSG recieve Failure !!!"<<NORMAL<<endl;
        return ;
    }
    cout<<YELLOW<<"[Info] "<<NORMAL<< rcvBuf.minfo<<endl;
    return;
}

void* msgThread(void* argc)
{
    int cfd = *(int*)argc;
    Mmsgbuf msg;
    key_t key = ftok("/",55);
    int msgID = msgget(key, IPC_CREAT | 0666);
    if (msgID < 0){
        cout<<RED << "[Error] Message queue create fail."<< NORMAL <<endl; 
        return NULL;
    }

    recv(cfd, &msg.minfo,sizeof(msg.minfo), 0);
    cout<<YELLOW<<"\n"<<"[Info] "<<NORMAL << msg.minfo <<endl;
    cout<<GREEN<<">>> "<<NORMAL;
    fflush(stdout); //刷新缓冲区，显示输出

    while(true){
        memset(&msg, 0, sizeof(msg));

        if(recv(cfd, &msg, sizeof(msg), 0)<=0){
            cout << RED << "[Error] msgThread recv failure !!!"<<NORMAL<<endl;
            cout<<GREEN<< ">>> "<<NORMAL;
            fflush(stdout);
            break;
        }
        // cout<<"rcv info from server fail???"<<endl;

        if(msg.mtype == POST_MSG) {
            cout<<endl << YELLOW << "[Info]" <<NORMAL<< "A message from ID ";
            printf("%ld\n",strtol(msg.minfo, NULL, 10));
            printf("%s\n",msg.minfo+5);
            cout<<GREEN<< ">>> "<<NORMAL;
            fflush(stdout);
            continue;
        }

        if(msg.mtype == DISCONNECT) {
            break;
        }
        msgsnd(msgID, &msg, MAX_BUF_SIZE, 0);
    }


    return NULL;
}
