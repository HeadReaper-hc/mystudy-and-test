 #include <sys/types.h>
 #include <sys/socket.h>
 #include <stdio.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
 #include <unistd.h>
 #include <string.h>
 #include <stdlib.h>
 #include <fcntl.h>
 #include <sys/shm.h>

 #define MYPORT  2111
 char standby[24]={0x02,'s','M','N',' ','m','N','E','V','A','C','h','a','n','g','e','S','t','a','t','e',' ','1',0x03};
 char poweroff[24]={0x02,'s','M','N',' ','m','N','E','V','A','C','h','a','n','g','e','S','t','a','t','e',' ','0',0x03};
 char navigation[24]={0x02,'s','M','N',' ','m','N','E','V','A','C','h','a','n','g','e','S','t','a','t','e',' ','4',0x03};
 char getpose[20]={0x02,'s','M','N',' ','m','N','P','O','S','G','e','t','P','o','s','e',' ','1',0x03};
 void cmd(int socket,char (&data)[24],int state);
 void getPose(int socket,char (&data)[20]);
 int main()
 {
     ///定义sockfd
     int sock_cli = socket(AF_INET,SOCK_STREAM, 0);
 
     ///定义sockaddr_in
     struct sockaddr_in servaddr;
     memset(&servaddr, 0, sizeof(servaddr));
     servaddr.sin_family = AF_INET;
     servaddr.sin_port = htons(MYPORT);  ///服务器端口
     servaddr.sin_addr.s_addr = inet_addr("10.10.2.109");  ///服务器ip
 
     ///连接服务器，成功返回0，错误返回-1
     if (connect(sock_cli, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0)
     {
        perror("connect failed");
         exit(1);
     }
        cmd(sock_cli,standby,1);
        usleep(5);
        cmd(sock_cli,navigation,4);
        getPose(sock_cli,getpose);
        cmd(sock_cli,poweroff,0);
        while(1);

 
    close(sock_cli);
     return 0;
 }

void cmd(int socket,char (&data)[24],int state)
{
     int send_num=0;
     send_num=send(socket, data, 24,0); ///发送
     if(send_num==24)
     {  
        char recvbuf[22];
        int recv_num;
       recv_num=recv(socket, recvbuf, 22,0);
        if(recv_num==22&&recvbuf[0]==0x02&&recvbuf[21]==0x03)
        {
           if(state==0)
           {
            printf("poweroff is successful\n");
           }
           if(state==1)
           {
            printf("standby is successful\n");
           }
           if(state==4)
           {
            printf("navigation is successful\n");
           }
         }
     }
}

void getPose(int socket,char (&data)[20])
{
     int send_num=0;
     send_num=send(socket, data, 20,0); ///发送
     if(send_num==20)
     {
         char recvbuf[18];
         int recv_num;
         recv_num=recv(socket, recvbuf, 18,0);
         if(recv_num==18&&recvbuf[0]==0x02&&recvbuf[17]==0x03)
         {
             printf("getpose receive succeed\n");
              char recvbuf[100];
              int recv_num;
              recv_num=recv(socket, recvbuf, 100,0);
              printf("recv_num:%d\n",recv_num);
          }
     }
}
                  

     
