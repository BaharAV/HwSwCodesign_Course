#include <8051.h>
//#include <stdio.h>
//#include <stdlib.h>
//#include <time.h>

void terminate(){
	P3 = 0x55;
}

void main()
{
	
	volatile unsigned char *shared =(volatile unsigned char *) 0x4000;

    		/*unsigned arr [10][10] = {
        	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        	{0, 97, 181, 206, 218, 162, 146, 158, 151, 0},
            	{0, 49, 108, 171, 184, 198, 209, 151, 149, 0},
        	{0, 70, 86, 108, 154, 175, 196, 222, 165, 0},
        	{0, 43, 74, 103, 117, 169, 180, 206, 209, 0},
        	{0, 38, 46, 72, 93, 119, 149, 174, 187, 0},
        	{0, 31, 39, 39, 72, 103, 104, 142, 141, 0},
        	{0, 16, 41, 39, 46, 66, 86, 115, 128, 0},
        	{0, 21, 12, 46, 49, 47, 59, 63, 109, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    		};*/
		unsigned k, i, j;
		for (k=0; k<8; k++){
			//srand(time(0));
			for(i=0; i<10; i++){
				for(j=0; j<10; j++){
					if(i==0 || j==0 || i==9 || j==9){
						shared[(10*i)+j] = 0;
					}
					else{
						//shared[(10*i)+j] = rand();
						shared[(10*i)+j] = k+(10*i)+j; //to make the pixels
					}
				}
			}
			P1 = 1;
			P1 = 0;
			while(P2==1);
		}
		terminate();
}
