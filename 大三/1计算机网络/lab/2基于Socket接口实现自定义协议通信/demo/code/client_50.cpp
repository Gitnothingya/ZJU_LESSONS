#include <iostream>
#include <sys/socket.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string>
#include <mutex>
#include <string.h>
#include <pthread.h>
using namespace std;

#define BUFSIZE 256

#define CONNECT 1
#define DISCONN 2
#define GETTIME 3
#define GETNAME 4
#define GETACTV 5
#define SNDDATA 6
#define EXIT 7
#define FORWARD 8

#define RED "\033[31m"
#define GREEN "\033[32m"
#define YELLOW "\033[33m"
#define NORMAL "\033[0m"

mutex mtx;

struct Message{
    long type;
    char data[BUFSIZE];
};

void conn_handle(int conn_fd){
    char buf[BUFSIZE];
    recv(conn_fd, buf, BUFSIZE, 0);
    cout << buf << endl;
    cout << "-> ";
    fflush(stdout);
    key_t key = ftok("/", 'a');
    int msqid = msgget(key, IPC_CREAT|0666);
    if(msqid == -1){
        cout << RED << "error in msgget, errno: " << errno << NORMAL << endl;
    }
    int timeres_cnt = 0;
    while(1){
        Message msg;
        memset(msg.data, 0, sizeof(msg.data));
        memset(buf, 0, BUFSIZE);
        int l = recv(conn_fd, buf, BUFSIZE, 0);
        if(l < 0){
            cout << RED << "error in recv, errno: " << errno << NORMAL << endl;
            cout << "-> ";
        }
        if(buf[0] == FORWARD){
            cout << YELLOW <<"recieve forward:" << NORMAL << endl;
            cout << buf+1 << endl << "-> ";
            fflush(stdout);
            continue;
        }
        if(buf[0] == GETTIME){
            timeres_cnt++;
            // printf("res %02d recieved\n", timeres_cnt);
        }
        msg.type = buf[0];
        memcpy(msg.data, buf+1, l-1);
        msgsnd(msqid, &msg, BUFSIZE, 0);
    }
}

class Client{
public:
    int sockfd;
    sockaddr_in server_addr;
    pthread_t conn_thread;
    int msqid;

    Client(){
        sockfd = -1;
        key_t k = ftok("/", 'a');
        msqid = msgget(k, IPC_CREAT | 0666);
        // printf("create msqid: %d\n", msqid);
        if(msqid == -1){
            cout << RED << "error in msgget, errno: " << errno << NORMAL << endl;
        }
    }
    ~Client(){
        close(sockfd);
    }

    static void *thread_handle(void *cfd){
        conn_handle(*(int*)cfd);
        return NULL;
    }

    void connect_server(string ip, int port){
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        server_addr.sin_family = AF_INET;
        server_addr.sin_port = htons(port);
        server_addr.sin_addr.s_addr = inet_addr(ip.c_str());
        connect(sockfd, (sockaddr*)&server_addr, sizeof(server_addr));
        pthread_create(&conn_thread, NULL, thread_handle, &sockfd);
    }

    int choices(){
        int choice = -1;
        string prompt = "Input your choice:\n"
                        "\t1) connect\n"
                        "\t2) disconnect\n"
                        "\t3) get time\n"
                        "\t4) mechine name\n"
                        "\t5) activities list\n"
                        "\t6) send data\n"
                        "\t7) exit\n";
        cout << prompt << "-> ";
        scanf("%d", &choice);
        return choice;
    }

    void run(){
        int choice = choices();
        while(1){
            if(choice == CONNECT){
                string ip;
                int port;
                cout << "ip: ";
                cin >> ip;
                cout << "port: ";
                cin >> port;
                if(sockfd != -1){
                    cout << "Connected already!" << endl;
                }else{
                    connect_server(ip, port);
                }
            }
            else if(choice == DISCONN){
                if(sockfd == -1){
                    cout << "No connection." << endl;
                }else{
                    char data = DISCONN;
                    send(sockfd, &data, sizeof(data), 0);
                    mtx.lock();
                    pthread_cancel(conn_thread);
                    mtx.unlock();
                    close(sockfd);
                    sockfd = -1;
                    cout << "Connection closed." << endl;
                }
            }
            else if(choice == GETTIME){
                if(sockfd == -1){
                    cout << "No connection." << endl;
                }else{
                    char data = GETTIME;
                    long msgtype = GETTIME;
                    Message msg;

                    int send_cnt = 50;
                    while(send_cnt > 0){
                        if(send(sockfd, &data, sizeof(data), 0) < 0){
                            cout << RED << "error in send, errno: " << errno << NORMAL << endl;
                        }
                        send_cnt--;
                        printf("send gettime req %02d finished\n", 50-send_cnt);
                        sleep(1);
                    }
                    
                    int recv_cnt = 0;
                    while(recv_cnt < 50){
                        if(msgrcv(msqid, &msg, BUFSIZE, msgtype, 0) < 0){
                            cout << RED << "error in msgrcv, errno: " << errno << NORMAL << endl;
                        }
                        recv_cnt++;
                        time_t t;
                        sscanf(msg.data, "%ld", &t);
                        // cout << YELLOW << "res " << recv_cnt << ": Server time: " << NORMAL << ctime(&t);
                        // fflush(stdout);
                        printf("res %02d: server time: %s", recv_cnt, ctime(&t));
                        // sleep(1);
                    }
                    
                    
                }
            }
            else if(choice == GETNAME){
                char data = GETNAME;
                long msgtype = GETNAME;
                Message msg;
                if(send(sockfd, &data, sizeof(data), 0) < 0){
                    cout << RED << "error in send, errno: " << errno << NORMAL << endl;
                }
                if(msgrcv(msqid, &msg, BUFSIZE, msgtype, 0) < 0){
                    cout << RED << "error in msgrcv, errno: " << errno << NORMAL << endl;
                }
                cout << YELLOW << "Server host name: " << NORMAL << msg.data << endl;
            }
            else if(choice == GETACTV){
                char data = GETACTV;
                long msgtype = GETACTV;
                Message msg;
                if(send(sockfd, &data, sizeof(data), 0) < 0){
                    cout << RED << "error in send, errno: " << errno << NORMAL << endl;
                }
                if(msgrcv(msqid, &msg, BUFSIZE, msgtype, 0) < 0){
                    cout << RED << "error in msgrcv, errno: " << errno << NORMAL << endl;
                }
                cout << YELLOW << "Active connections:\n" << NORMAL << msg.data << endl;
            }
            else if(choice == SNDDATA){
                char data[BUFSIZE] = {0};
                data[0] = SNDDATA;
                long msgtype = SNDDATA;
                string ip;
                int port;
                cout << "ip: ";
                cin >> ip;
                cout << "port: ";
                cin >> port;
                sprintf(data+1, "%s:%d", ip.c_str(), port);
                cout << "message:" << endl;
                char c = ':';
                while(c != '#'){
                    sprintf(data+strlen(data), "%c", c);
                    c = getchar();
                }
                if(send(sockfd, &data, strlen(data), 0) < 0){
                    cout << RED << "error in send, errno: " << errno << NORMAL << endl;
                }
                Message msg;
                if(msgrcv(msqid, &msg, BUFSIZE, msgtype, 0) < 0){
                    cout << RED << "error in msgrcv, errno: " << errno << NORMAL << endl;
                }
                cout << YELLOW << "Server message: " << NORMAL << msg.data << endl;
            }
            else if(choice == EXIT){
                if(sockfd == -1){
                    cout << "Bye~" << endl;
                    break;
                }
                char data = EXIT;
                send(sockfd, &data, sizeof(data), 0);
                close(sockfd);
                cout << "socket " << sockfd << " closed" << endl;
                cout << "Bye~" << endl;
                break;
            }
            else{
                cout << "Illegal input" << endl;
            }
            choice = choices();
        }
    }
};

int main(){
    int choice = -1;
    Client client;
    client.run();
    return 0;
}