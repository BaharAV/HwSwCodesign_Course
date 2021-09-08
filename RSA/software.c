#include <stdio.h>

volatile unsigned int * req = (unsigned int *) 0x80000000;
volatile unsigned int * ack = (unsigned int *) 0x80000004;

volatile unsigned int * p = (unsigned int *) 0x80000008;
volatile unsigned int * q = (unsigned int *) 0x8000000C;
volatile unsigned long long * msg = (unsigned long long *) 0x80000010;
volatile unsigned int * e_first = (unsigned int *) 0x80000050;
volatile unsigned int * d_first = (unsigned int *) 0x80000054;

volatile unsigned int * n = (unsigned int *) 0x80000058;
volatile unsigned int * z = (unsigned int *) 0x8000005C;
volatile unsigned int * e_final = (unsigned int *) 0x80000060;
volatile unsigned int * d_final = (unsigned int *) 0x80000064;
volatile unsigned long long * result = (unsigned long long *) 0x80000068;
volatile unsigned long long * result_2 = (unsigned long long *) 0x800000A8;

unsigned long long msg_keep = 24;

void sync1(){
	*req=1; 
	while(*ack==0);
}

void sync0(){;
	*req=0; 
	while(*ack==1);
}

int main() {

    	*p = 3;  //p
	*q = 17; //q
	*msg = msg_keep; //msg = 24
	*e_first = 2; //e_first
	*d_first = 2; //d_first

	{
		printf("SW: n is: %d\n",*n);
		printf("SW: z is: %d\n",*z);
	}
	//point 1
	sync1();
    	{
		printf("SW: e is: %d\n",*e_final);
		printf("-----------\n");
	}

	//point 2
	sync0();
    	{
		printf("SW: d is: %d\n",*d_final);
		printf("-----------\n");
	}

	//poinnt 3
	sync1();
	{
		printf("SW: data is: %ld\n",msg_keep);
		printf("-----------\n");
	}

	//point 4
	sync0();
    	{
		printf("SW: Encrypted data is: %ld\n",*result);
		printf("-----------\n");
	}

	//point 5
	sync1();
    	{
		printf("SW: Decrypted data is: %ld\n",*result_2);
		printf("-----------\n");
	} 

	sync0();
    return 0;
}

//	/usr/local/arm/bin/arm-linux-gcc -static \software.c -o software
