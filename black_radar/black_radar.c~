#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <errno.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <stdlib.h>
int danger;
int set_opt(int fd,int nSpeed, int nBits, char nEvent, int nStop)
{
    struct termios newtio,oldtio;
    if  ( tcgetattr( fd,&oldtio)  !=  0) 
    { 
        perror("SetupSerial 1");
        return -1;
    }
    bzero( &newtio, sizeof( newtio ) );
    newtio.c_cflag  |=  CLOCAL | CREAD; 
    newtio.c_cflag &= ~CSIZE; 

    switch( nBits )
    {
    case 7:
        newtio.c_cflag |= CS7;
        break;
    case 8:
        newtio.c_cflag |= CS8;
        break;
    }

    switch( nEvent )
    {
    case 'O':                     //奇校验
        newtio.c_cflag |= PARENB;
        newtio.c_cflag |= PARODD;
        newtio.c_iflag |= (INPCK | ISTRIP);
        break;
    case 'E':                     //偶校验
        newtio.c_iflag |= (INPCK | ISTRIP);
        newtio.c_cflag |= PARENB;
        newtio.c_cflag &= ~PARODD;
        break;
    case 'N':                    //无校验
        newtio.c_cflag &= ~PARENB;
        break;
    }

switch( nSpeed )
    {
    case 2400:
        cfsetispeed(&newtio, B2400);
        cfsetospeed(&newtio, B2400);
        break;
    case 4800:
        cfsetispeed(&newtio, B4800);
        cfsetospeed(&newtio, B4800);
        break;
    case 9600:
        cfsetispeed(&newtio, B9600);
        cfsetospeed(&newtio, B9600);
        break;
    case 115200:
        cfsetispeed(&newtio, B115200);
        cfsetospeed(&newtio, B115200);
        break;
    case 460800:
        cfsetispeed(&newtio, B460800);
        cfsetospeed(&newtio, B460800);
        break;
    default:
        cfsetispeed(&newtio, B9600);
        cfsetospeed(&newtio, B9600);
        break;
    }
    if( nStop == 1 )
    {
        newtio.c_cflag &=  ~CSTOPB;
    }
    else if ( nStop == 2 )
    {
        newtio.c_cflag |=  CSTOPB;
    }
    newtio.c_cc[VTIME]  = 0;
    newtio.c_cc[VMIN] = 0;
    tcflush(fd,TCIFLUSH);
    if((tcsetattr(fd,TCSANOW,&newtio))!=0)
    {
        perror("com set error");
        return -1;
    }
    printf("set done!\n");
    return 0;
}

int open_port(int fd,int comport)
{
    char *dev[]={"/dev/ttyUSB0","/dev/ttyUSB1","/dev/ttyUSB2"};
    long  vdisable;
    if (comport==1)
    {    fd = open( "/dev/ttyUSB0", O_RDWR|O_NOCTTY|O_NDELAY);
        if (-1 == fd)
        {
            perror("Can't Open Serial Port");
            return(-1);
        }
        else 
        {
            printf("open ttyUSB0 .....\n");
        }
    }
    else if(comport==2)
    {    fd = open( "/dev/ttyUSB1", O_RDWR|O_NOCTTY|O_NDELAY);
        if (-1 == fd)
        {
            perror("Can't Open Serial Port");
            return(-1);
        }
        else 
        {
            printf("open ttyUSB1 .....\n");
        }    
    }
    else if (comport==3)
    {
        fd = open( "/dev/ttyUSB2", O_RDWR|O_NOCTTY|O_NDELAY);
        if (-1 == fd)
        {
            perror("Can't Open Serial Port");
            return(-1);
        }
        else 
        {
            printf("open ttyUSB2 .....\n");
        }
    }
   if(fcntl(fd, F_SETFL, 0)<0)
   {
       printf("fcntl failed!\n");
   }
   else
   {
     printf("fcntl=%d\n",fcntl(fd, F_SETFL,0));
   }
    if(isatty(STDIN_FILENO)==0)
    {
        printf("standard input is not a terminal device\n");
    }
    else
    {
        printf("isatty success!\n");
    }
    printf("fd-open=%d\n",fd);
    return fd;
}

int main(void)
{
    int fd;
    int nread,i;
    unsigned char buff[1];
    unsigned char buff6[6];
    unsigned char buff2[2];
    unsigned char buff4[4];
    unsigned char buff8[8];
    unsigned char buff548[548];
    int dist_count=0;
    int plane=-1;
    int count=0;
    int distance=0;
    int flag=0;
    close(3);
    close(3);
    if((fd=open_port(fd,1))<0)
    {
        perror("open_port error");
        return;
    }
    if((i=set_opt(fd,460800,8,'N',1))<0)
    {
        perror("set_opt error");
        return;
    }
    printf("fd=%d\n",fd);

while(1)
{   
    flag=0;
    count=0;
    nread=read(fd,buff,1);
    if(buff[0]==0xFC)
    {  
       nread=read(fd,buff,1);
       if(buff[0]==0xFD)
       {   usleep(100);
           nread=read(fd,buff,1);
           if(buff[0]==0xFE)
           {  usleep(100); 
              nread=read(fd,buff,1);
              if(buff[0]==0xFF)
              {  usleep(100);
                 nread=read(fd,buff4,4);
                 printf("it's in\n");
                 if(buff4[0]==0x2D&&buff4[1]==0x02&&buff4[2]==0x5B&&buff4[3]==0xC3)
                 {  usleep(100);
                    printf("it's in\n");
                    nread=read(fd,buff6,6);
                    usleep(200);
                    nread=read(fd,buff,1);
                    plane=buff[0];
                    if(buff[0]==0)
                    {   
                    	//printf("now the plane is:%d\n",plane);
                        printf("it's begin2\n");
                        //count=count+1;
                        for(dist_count=0;dist_count<274;dist_count++)
                        {
                        usleep(200);
                        nread=read(fd,buff2,2);
                        //printf("count:%d;distance is %d  ",dist_count,buff2[0]+buff2[1]*16*16);
                       // printf("count :%d ",dist_count);
                       // printf("%d ",buff2[1]);
                       // printf("%d ",buff2[0]);
                        	if(dist_count>=95&&dist_count<=180)
                                {
                                   distance=buff2[0]+buff2[1]*16*16;
                                   if(distance<=1000)
                                   {
                                      flag=1;
                                   }
                                }
                        }
                        //printf("flag is %d\n",flag);
                        //printf("count is %d\n",count);
                        if(flag==1)
                        {
                        	danger=1;
                                printf("danger is %d\n",danger);
                        }
                        if(flag==0)
                        {
                                danger=0;
                                printf("danger is %d\n",danger);
                        }
                        //usleep(250);
                    }
                 }
              }
          }
       }
    }    
 }     
   
    close(fd);
    while(1);
    return;
}
