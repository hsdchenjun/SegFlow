#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
char str[300];
sprintf(str,"%s%s%s%s%s%s%s%s%s%s%s","SegPM/SegPM"," ","input/frame_0001.png"," ","input/frame_0002.png"," ","Edge/edge1.bin"," ","Edge/edge2.bin"," ","Match/SegMatch1.txt");
printf("%s\n",str);
system(str);
return 0;
}

