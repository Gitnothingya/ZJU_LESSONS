#include <iostream>
#include <string>
#include <vector>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <mutex>
#include <arpa/inet.h>
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

typedef pair<string, int> host;

mutex mtx;
vector<pair<int, host>> clients;

void conn_handle(int conn_fd){
    string hello = "Hello";
    send(conn_fd, hello.c_str(), hello.length(), 0);
    
    char buf_recv[BUFSIZE] = {0};
    char buf_send[BUFSIZE] = {0};
    // int closed = 0;
    int recv_cnt=0;
    while(1){
        int l = recv(conn_fd, buf_recv, BUFSIZE, 0);
        if(l < 0){
            cout << RED << "error in recv, errno: " << errno << NORMAL << endl;
        }
        memset(buf_send, 0, BUFSIZE);
        mtx.lock();

        if(buf_recv[0] == DISCONN){
            for(auto it=clients.begin(); it!=clients.end(); it++){
                if(it->first == conn_fd){
                    it = clients.erase(it);
                    break;
                }
            }
            cout << YELLOW << "client " << conn_fd << " disconnected" << NORMAL << endl;
        }
        else if(buf_recv[0] == GETTIME){
            time_t t;
            time(&t);
            // cout << YELLOW << "client " << conn_fd << " get time: " << NORMAL << ctime(&t) << endl;
            // fflush(stdout);
            recv_cnt++;
            printf("req %02d: client %d get time: %s", recv_cnt, conn_fd, ctime(&t));

            buf_send[0] = GETTIME;
            sprintf(buf_send+1, "%ld", t);

            if(send(conn_fd, buf_send, strlen(buf_send), 0) < 0){
                cout << "error in send, errno: " << errno << endl;
            }
            printf("res %02d sended\n", recv_cnt);
        }
        else if(buf_recv[0] == GETNAME){
            buf_send[0] = GETNAME;
            gethostname(buf_send+1, sizeof(buf_send)-sizeof(char));
            cout << YELLOW << "client " << conn_fd << " get server name: " << NORMAL << buf_send+1 << endl;

            if(send(conn_fd, buf_send, strlen(buf_send), 0) < 0){
                cout << RED << "error in send, errno: " << errno << NORMAL << endl;
            }
        }
        else if(buf_recv[0] == GETACTV){
            cout << YELLOW << "client " << conn_fd << " get activities:" << NORMAL << endl;
            buf_send[0] = GETACTV;
            for(auto it=clients.begin(); it!=clients.end(); it++){
                int client_fd = it->first;
                string ip = it->second.first;
                int port = it->second.second;
                string c = to_string(client_fd) + "@" + ip + ":" + to_string(port) + "\n";
                cout << c;
                memcpy(buf_send+strlen(buf_send), c.c_str(), c.length());
            }
            if(send(conn_fd, buf_send, strlen(buf_send), 0) < 0){
                cout << RED << "error in send, errno: " << errno << NORMAL << endl;
            }
        }
        else if(buf_recv[0] == SNDDATA){
            string data = string(buf_recv+1);
            string ip = data.substr(0, data.find(":"));
            data = data.substr(data.find(":") + 1);
            int port = stoi(data.substr(0, data.find(":")));
            data = data.substr(data.find(":") + 2);

            cout << YELLOW << "client " << conn_fd << " send message to: " << NORMAL << ip << ":" << port << endl;
            int target = -1;
            for(auto it=clients.begin(); it!=clients.end(); it++){
                if(it->second.first==ip && it->second.second==port){
                    target = it->first;
                    break;
                }
            }
            buf_send[0] = SNDDATA;
            if(target==-1){sprintf(buf_send+1, "No such client");}
            else{sprintf(buf_send+1, "forward success");}

            char forward[BUFSIZE] = {0};
            forward[0] = FORWARD;
            memcpy(forward+1, data.c_str(), data.length());
            if(send(target, forward, strlen(forward), 0) < 0){
                cout << RED << "error in forword, errno: " << errno << NORMAL << endl;
                sprintf(buf_send+1, "forward failed, errno: %d", errno);
            }
            if(send(conn_fd, buf_send, strlen(buf_send), 0) < 0){
                cout << RED << "error in send, errno: " << errno << NORMAL << endl;
            }
        }
        else if(buf_recv[0] == EXIT){
            for(auto it=clients.begin(); it!=clients.end(); it++){
                if(it->first == conn_fd){
                    it = clients.erase(it);
                    break;
                }
            }
            cout << YELLOW << "client " << conn_fd << " disconnected" << NORMAL << endl;
        }
        memset(buf_recv, 0, BUFSIZE);
        mtx.unlock();
    }
}

class Server{
public:
    int sockfd;
    sockaddr_in sin;
    int max_conn = 10;
    
    Server(){
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        sin.sin_family = AF_INET;
        sin.sin_port = htons(5099);
        sin.sin_addr.s_addr = htonl(INADDR_ANY);
        bind(sockfd, (sockaddr*)&sin, sizeof(sin));
        listen(sockfd, max_conn);
    }

    ~Server(){
        close(sockfd);
    }

    void run(){
        cout << "Listening..." << endl;
        while(1){
            sockaddr_in client;
            unsigned client_addr_len = sizeof(client);
            int connfd = accept(sockfd, (sockaddr*)&client, (socklen_t*)&client_addr_len);
            clients.push_back(make_pair(connfd, host(inet_ntoa(client.sin_addr), ntohs(client.sin_port))));
            cout << inet_ntoa(client.sin_addr) << ":" << ntohs(client.sin_port) << " connected." << endl;
            pthread_t conn_thread;
            pthread_create(&conn_thread, NULL, thread_handle, &connfd);
        }
    }

    static void* thread_handle(void *cfd){
        conn_handle(*(int*)cfd);
        return NULL;
    }
};

int main(){
    Server server;
    server.run();
    return 0;
}