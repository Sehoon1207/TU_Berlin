#include <sys/types.h>
//#include <winsock.h>        // <netdb.h> <arpa/inet.h> <sys/time.h> <sys/socket.h> <netinet/in.h>    << 유닉스용 헤더파일이므로 winsock으로 대체한다. 
//#include <winsock2.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>

#define CLNT_MAX 10

int g_clnt_socks[CLNT_MAX];
int g_clnt_count = 0;

int main(int argc, char** argv) {
    // Start here :)

    int serv_sock;
    int clnt_sock;
    

    struct sockaddr_in clnt_addr;
    int clnt_addr_size;

    struct sockaddr_in serv_addr;
    serv_sock = socket(PF_INET,SOCK_STREAM,0);

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(4711);

    if(bind(serv_sock,(struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1){
        printf("bind error\n");
    }
    
    if (listen(serv_sock,1)==-1){
        printf("Listen error");
    }

    char buff[200];
    int recv_len = 0;

    while(1){
        clnt_addr_size=sizeof(clnt_addr);
        clnt_sock = accept(serv_sock,(struct sockaddr *)&clnt_addr,&clnt_addr_size);

        //g_clnt_socks[g_clnt_count++] = clnt_sock;

        while(1){
            recv_len = read(clnt_sock,buff,200);  // 클라이언트한테 받아서 저장

            printf("recv : ");
            for(int i = 0; i < recv_len; i++){
                    printf("%02X",(unsigned char)buff[i]);
            }
            printf("\n");
        }
    }



    return EXIT_SUCCESS;
}
