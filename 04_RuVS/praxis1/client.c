#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <pthread.h>

#define BUFFSIZE 100
#define NAMESIZE 20

int StoHEX(char fi, char sc);
void error_headling(char *msg);
void * send_messasge(void * arg);
void * recv_messasge(void * arg);

char message[BUFFSIZE];

int main (int argc, char **argv){
    
    int sock;
    struct sockaddr_in serv_addr;
    pthread_t snd_thread, rcv_thread;
    void* thread_result;

    sock = socket(PF_INET, SOCK_STREAM, 0);
    if(sock==-1)
            //error_headling("socket() error");
            //printf("socket error");

    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family=AF_INET;


    serv_addr.sin_addr.s_addr = inet_addr("127.0.0.1");     // 같은 pc인 경우 127.0.0.1
    serv_addr.sin_port = htons(4711);                       // atoi(argv[1]) 대신 4711 사용


    if(connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1){

    }

    //error_headling("connect() error");
    //printf("connect error");

    // thread 생성
    //pthread_create(&snd_thread, NULL, send_message, (void*)sock);
    //pthread_create(&snd_thread, NULL, recv_message, (void*)sock);

    //pthread_join(snd_thread, &thread_result);
    //pthread_join(rcv_thread, &thread_result);



    unsigned char msg[100] = {'R','e','p','l','y'};               //{0x01,2,3,4,5,6,1,2,3,4,2,1,2,3,0x0c};

    while(1){

        printf("send : \n");
        write(sock,msg, 15);
        sleep(1);

    }


    close(sock);

    return 0;

} //end main

