#include <stdio.h>
#include <iostream>
#include <string>
#include <sstream>
#include <mutex>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/stat.h>
#include <unistd.h>
#include <ctype.h>
#include <strings.h>
#include <string.h>
#include <sys/stat.h>
#include <pthread.h>
#include <sys/wait.h>
#include <stdlib.h>

using namespace std;

// 颜色提示
#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define YELLOW  "\033[33m"
#define NORMAL  "\033[0m"

// 服务器端口
#define SERVER_PORT 5515
// 最大同时连接数
#define MAX_CON 10
// 缓冲区大小
#define BUFFSIZE 8192

enum requestMethod {INVALID, GET, POST}; //请求方法
struct Account{
    string login;
    string pass;
};

// 接收客户端信息，调用不同方法处理函数
void* handle_request(void* arg0);
//获取客户端方法 仅GET POST 并解析文件路径
requestMethod  getMethodandFile(char * buf, char* filepath);
// int parse_uri(char info[BUFFSIZE], char* filepath);// 解析文件路径
// 检查帐号密码
bool checkAccount(char *buf);
//文件发送
bool sendFile(int sockfd ,char* filepath);
//文件类型

//未实现方法
void notFound(int sockfd,char* filepath);

mutex mtx;
int connections;
const char fileRoot[10] = "webFile";

int main()
{
    int sockfd;
    sockaddr_in sin;
    pthread_t subThread;

    if( (sockfd = socket(AF_INET, SOCK_STREAM, 0)) == -1 ){
        cout<<RED << "[Error] Sockfd get failure !!!"<<NORMAL <<endl;
        exit(-1);
    }
    int on = 1;
    setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
    cout<< GREEN << "Initilize socket ......"<< NORMAL <<endl;

    sin.sin_family = AF_INET;
    sin.sin_port = htons(SERVER_PORT);
    sin.sin_addr.s_addr = htonl(INADDR_ANY);
    memset(&(sin.sin_zero), 0, 8);

    if((bind(sockfd, (struct sockaddr *)&sin, sizeof(struct sockaddr))) == -1){
        cout<<RED << "[Error] Sockfd bind failure !!!"<<NORMAL <<endl;
        cout<<errno<<endl;
        exit(1);
    }
    cout<<"Bind socket ......"<<endl;

    if(listen(sockfd, MAX_CON ) == -1) {
        cout<<RED << "[Error] Sockfd listen failure !!!"<<NORMAL <<endl;
    }
    cout<< "Start listening ......"<<endl;

    while (true){
        sockaddr_in client_addr;
        unsigned int client_addr_len = sizeof(struct sockaddr);
        int clientfd;
        if((clientfd = accept(sockfd, (struct sockaddr*)&client_addr, 
                            (socklen_t*)& client_addr_len)) == -1) {
            cout<<RED << "[Error] Sockfd accept failure !!!"<<NORMAL <<endl;
            exit(1);
        }
        while (connections > 10){}// 判断连接数

        cout<< GREEN << "Handle request from address "<< 
            inet_ntoa(client_addr.sin_addr) << ":" <<
            ntohs(client_addr.sin_port) << NORMAL<<endl;

        pthread_create(&subThread, NULL, handle_request, &clientfd);// 创建子线程
        pthread_detach(subThread);

        mtx.lock();
        connections++; //增加一个处理线程
        mtx.unlock();
        cout<<RED<< "connection: "<<connections<<NORMAL<<endl;
    }

    close(sockfd);

    return 0;
}


void* handle_request(void* arg0)
{
    int cfd = *(int*)arg0;
    char * rcvBuff = new char[BUFFSIZE];
    char * filePath = new char[BUFFSIZE];
    int rcvLength = recv(cfd, rcvBuff, BUFFSIZE, 0);
    
    cout << YELLOW << "Connect with socket "<< cfd<<NORMAL<<endl;
    cout << rcvBuff << endl;

    requestMethod method = getMethodandFile(rcvBuff,filePath);
    
    bool flag=0;
    if(requestMethod::GET == method){
        flag = sendFile(cfd, filePath);
    }
    else if(requestMethod::POST == method){
        flag = sendFile(cfd, filePath);
    }
    else {
    }
    if(!flag) cout<<RED<<"[ERROR] send file failed!!!"<<NORMAL<<endl;


    close(cfd);
    delete [] rcvBuff;
    delete [] filePath;
    cout << YELLOW <<"Disconnect with socket "<< cfd <<NORMAL<<endl<<endl;

    mtx.lock();
    connections--; //减少连接计数
    mtx.unlock();
    cout<<RED<< "connection: "<<connections<<NORMAL<<endl;
    return NULL;
}


requestMethod  getMethodandFile(char * buf, char* filepath)
{
    char method[10],uri[BUFFSIZE];
    sscanf(buf, "%s %s",method, uri);

    if(!strcmp(method,"GET")){
        strcpy(filepath, "webFile");
        strcat(filepath, uri);
        int urilen = strlen(uri);
        if(uri[urilen-1] == '/'){
            strcat(filepath,"index.html");
        }

        return requestMethod::GET;
    }
    else if(!strcmp(method,"POST")){
        if(strstr(uri, "/dopost")){
            strcpy(filepath, "webFile/html");
            if(checkAccount(buf)){
                strcat(filepath, "/loginSuccess.html");
                
            }
            else {
                strcat(filepath, "/loginFailure.html");
            }
        }
        return requestMethod::POST;
    }
    else {
        return requestMethod::INVALID;
    }

}

bool checkAccount(char *buf)
{
    stringstream in(buf);
    string blank;
    while(1){
        getline(in, blank);
        if(blank[0] == '\r'){
            break;
        }
    }
    getline(in, blank);
    int pos,mid,spos;
    pos = blank.find_first_of("=");
    spos = blank.find("=", pos+1);
    mid = blank.find("&");
    Account account;
    account.login = blank.substr(pos+1, mid-pos-1);
    account.pass = blank.substr(spos+1,blank.length()-spos-1);
    
    return ((account.login == "3200105515")&&(account.pass == "5515"));

}

bool sendFile(int sockfd ,char* filepath)
{
    char sendBuf[BUFFSIZE],fileBuf[BUFFSIZE];
    memset(fileBuf,0,BUFFSIZE);
    memset(sendBuf,0,BUFFSIZE);
    char fileType[20];
    struct stat sbuf;

    // char notf[50] = "webFile/html/NotFound.html";
    int ll;
    if((ll=stat(filepath, &sbuf)) < 0){
        char buf[1024];
        //返回404
        sprintf(buf, "HTTP/1.0 404 NOT FOUND\r\n");
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "Server: Tiny Web Server\r\n");
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "Content-Type: text/html\r\n");
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "\r\n");
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "<HTML><TITLE>Not Found</TITLE>\r\n");
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "<BODY><h1>404 Not Found, the file %s\r\n",filepath);
        send(sockfd, buf, strlen(buf), 0);
        sprintf(buf, "</BODY></HTML>\r\n");
        send(sockfd, buf, strlen(buf), 0);
        return false;
    }
    // cout<<"return:"<<ll<<endl;

    int fileLen = sbuf.st_size;
    if (strstr(filepath, ".html"))
	    strcpy(fileType, "text/html");
    else if (strstr(filepath, ".jpg"))
	    strcpy(fileType, "image/jpeg");
    else
	    strcpy(fileType, "text/plain");
// cout<<RED <<"FILE about to read "<<NORMAL<<endl;
    FILE *fp;
    fp = fopen(filepath, "rb");
    // cout<<"check: "<<filepath<<"   "<<fileLen<<endl;
    // fread(fileBuf, 1,, fp);
    // cout<<RED <<"FILE read sucess"<<NORMAL<<endl;


    sprintf(sendBuf, "HTTP/1.0 200 OK\r\n");
    strcat(sendBuf, "Server: Tiny Web Server\r\n");
    strcat(sendBuf, "Content-length: ");
    strcat(sendBuf,to_string(fileLen).c_str());
    strcat(sendBuf,"\r\n");
    strcat(sendBuf, "Content-type: ");
    strcat(sendBuf, fileType);
    strcat(sendBuf,"\r\n\r\n");
    send(sockfd, sendBuf, strlen(sendBuf), 0);

    int count = 0;
    while (!feof(fp))
    {
        fread(fileBuf, 1,BUFFSIZE, fp);
        send(sockfd, fileBuf, BUFFSIZE, 0);
        memset(fileBuf,0,BUFFSIZE);
    }
    // cout<<"count: "<<count<<endl;
    // strcat(sendBuf, fileBuf);

    fclose(fp);

    // int res = send(sockfd, sendBuf, strlen(sendBuf), 0);
    // cout<< sendBuf<<strlen(sendBuf);
    return true;
}
