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
#include <map>

using namespace std;

#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define YELLOW  "\033[33m"
#define NORMAL  "\033[0m"

#define SERVER_PORT 5515
#define MAX_BUF_SIZE 256

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

class Server{
    private:
        int sockfd;
        sockaddr_in sin;
        int max_con = 10;


    public:
        Server();
        ~Server();
        void run();


};
mutex mtx;

map <int, sockaddr_in> cliList;     //客户端列表，前一个int表示clientfd.
 vector<pthread_t> clientThreads;

void* handle_one_client(void* arg);


int main()
{
    Server server;
    server.run();

    return 0;
}


Server::Server()
{
    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) == -1){
        cout<<RED << "[Error] Sockfd get failure !!!"<<NORMAL <<endl;
        exit(1); 
    }
    int on = 1;
    setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
    cout<< "Initilize socket ......"<<endl;
    //服务器bind
    sin.sin_family = AF_INET;
    sin.sin_port = htons(SERVER_PORT);
    sin.sin_addr.s_addr = htonl(INADDR_ANY);
    memset(&(sin.sin_zero), 0, 8);

    if((bind(sockfd, (struct sockaddr *)&sin, sizeof(struct sockaddr))) == -1){
        cout<<RED << "[Error] Sockfd bind failure !!!"<<NORMAL <<endl;
        exit(1);
    }
    cout<<"Bind socket ......"<<endl;

    if(listen(sockfd, max_con) == -1) {
        cout<<RED << "[Error] Sockfd listen failure !!!"<<NORMAL <<endl;
    }
    cout<< "Start listening ......"<<endl;

}

Server::~Server()
{

}

void Server::run()
{
    while (true)
    {
        sockaddr_in client_addr;
        unsigned int client_addr_len = sizeof(struct sockaddr);
        int clientfd;
        if((clientfd = accept(sockfd, (struct sockaddr*)&client_addr, 
                            (socklen_t*)& client_addr_len)) == -1) {
            cout<<RED << "[Error] Sockfd accept failure !!!"<<NORMAL <<endl;
            exit(1);
        }
        //在列表中添加该客户端
        cliList[clientfd] = client_addr;

        //创建子线程
        pthread_t cliThread;
        pthread_create(&cliThread, NULL, handle_one_client, &clientfd );
        clientThreads.push_back(cliThread);
    }
    return ;
}

void* handle_one_client(void* arg)
{
    int cfd = *(int*)arg;
    string hello = "Hello, you connect with me successfully.";
    send(cfd, hello.c_str(), hello.length(), 0);

    Mmsgbuf sendBuf= {0}, rcvBuf = {0};
    cout << YELLOW<< "[Tip] client "<<cfd<<" connected."<<NORMAL<<endl;

    while(true){
        if(recv(cfd, &rcvBuf, MAX_BUF_SIZE, 0) <= 0) {
            cout<< RED << "[Error] recieve from "<<cfd<<" failure!!!"<<NORMAL<<endl;
            break;
        }
        memset(&sendBuf, 0, sizeof(sendBuf));
        mtx.lock();

        if(DISCONNECT == rcvBuf.mtype){
            // cout<<cfd <<"disconnect msg 1111"<<endl;
            sendBuf.mtype = DISCONNECT;
            send(cfd, &sendBuf, sizeof(sendBuf), 0);
            mtx.unlock();
            break;
        }
        else if(GET_TIME == rcvBuf.mtype){
            time_t t;
            time(&t);
            sendBuf.mtype = GET_TIME;
            sprintf(sendBuf.minfo, "%ld", t);
            if(send(cfd, &sendBuf, sizeof(sendBuf), 0) < 0){
                cout<<RED << "[Error] Send time to "<<cfd<<" failure!!!"<<NORMAL<<endl;
            }
            else {
                cout << GREEN<<"[Info] "<<NORMAL<<"Client "<<cfd<<" get server time "<<ctime(&t) <<endl;
            }
        }
        else if(GET_NAME == rcvBuf.mtype){
            sendBuf.mtype = GET_NAME;
            gethostname(sendBuf.minfo, MAX_BUF_SIZE);
            if(send(cfd, &sendBuf, sizeof(sendBuf), 0) < 0){
                cout<<RED << "[Error] Send name to "<<cfd<<" failure!!!"<<NORMAL<<endl;
            }
            else {
                cout << GREEN<<"[Info] "<<NORMAL<<"Client "<<cfd<<" get server machine name "<<sendBuf.minfo<<endl;
            }
        }
        else if(GET_CLIENTS_LIST == rcvBuf.mtype){
            string clitable;
            auto itr = cliList.begin();
            auto itr_end = cliList.end();
            for(;itr != itr_end ;itr++){
                clitable = clitable + "ID  " + to_string(itr->first)+
                            "\tip:port  " + inet_ntoa(itr->second.sin_addr)+":"
                            + to_string(ntohs(itr->second.sin_port)) + "\n";
            }
            sendBuf.mtype = GET_CLIENTS_LIST;
            memcpy(sendBuf.minfo, clitable.c_str(), MAX_BUF_SIZE);
            if(send(cfd, &sendBuf, sizeof(sendBuf), 0) < 0){
                cout<<RED << "[Error] Send Client list to "<<cfd<<" failure!!!"<<NORMAL<<endl;
            }
            else {
                cout << GREEN<<"[Info] "<<NORMAL<<"Client "<<cfd<<" get Client List: \n"<<sendBuf.minfo<<endl;
            }

        }
        else if(SEND_MSG == rcvBuf.mtype){
            // int target = *(int*)rcvBuf.minfo;
            int target = strtol(rcvBuf.minfo, NULL, 10);
            Mmsgbuf  forward;
            forward.mtype = POST_MSG;
            sprintf(forward.minfo,"%d", cfd);
            memcpy(forward.minfo+5, rcvBuf.minfo+5, 201);

            if(cliList.find(target) == cliList.end()){
                sendBuf.mtype = SEND_MSG;
                sprintf(sendBuf.minfo, "No such client, please confirm your input !");
                send(cfd, &sendBuf, sizeof(sendBuf), 0);
                cout<<YELLOW << "[Info] "<<NORMAL<<"Client "<<cfd<<" send message to Client "<<target
                    <<" failed, no "<<target<<" Client !!!"<<endl;
            }
            else {
                sendBuf.mtype = SEND_MSG;
                sprintf(sendBuf.minfo, "Send Message Successfully.");
                send(cfd, &sendBuf, sizeof(sendBuf), 0);
                send(target, &forward, sizeof(forward), 0);
                cout<<YELLOW<<"[Info] "<<NORMAL<<"Client "<<cfd<<" send message to Client "
                    <<target<<" successfully"<<endl;
                
            }
        }

        memset(&rcvBuf , 0, sizeof(rcvBuf));
        mtx.unlock();

    }
    cliList.erase(cfd);
    cout << YELLOW<< "[Tip] client "<<cfd<<" disconnected."<<NORMAL<<endl;
    close(cfd);
    cout <<YELLOW<< "[Tip] Thread of "<<cfd<<" ended."<<NORMAL<<endl;

    return NULL;
}




