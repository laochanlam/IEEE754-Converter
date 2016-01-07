/***************************************************
* Student Number : F74045034
* Name : LAO CHON LAM
* The way of compile : gcc hw6_2.c -o hw6_2
* The way of execute : ./hw6_2
* The function of program : 1. Float to binary number
			    2. Binary number to float
			    3. Binary number to double
				(union version)
* Date of upload : 2015.12.14
***************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

union array{
	char c[32];
	char lc[64];
	   };



int main(){
unsigned cher;
int i,j,k,m,n;
float f;
unsigned mask = 1<<31 ;
union array ar;
////////////////////////////////////////////////////////////////////

printf("Input the float number:");	//Float to binary number

scanf("%f",&f);
cher =*(unsigned*)&f;

for (i=0;i<32;i++)
	{
	putchar(mask & cher? '1' : '0' );
	cher <<=1;
	}

//////////////////////////////////////////////////////////////////////

printf("\n");	// Binary number to float
printf("Input binary number to convert float number:");
printf("\n");

int a[32] = {0};
int x,y;
	scanf("%s",&ar.c);


	for (i=0;i<32;i++)
	a[i] = ar.c[i] - '0';
	
y=1;x=0;
for (i=8;i>=1;i--)		// Exponent
	{
	if (a[i] == 1)
		x = x+y;
	y=y*2;
	}



float rx,ry;
int e;
e=0;
ry=0.5;
for (i=9;i<=31;i++)	//Mantissa
        {
        if (a[i] == 1)
               rx = ry + rx;
        ry=ry*0.5;
       }


e = x - 127;

m=0;n=0;j=0;

float ans = 1;

while (e>=0 & j==0)	//Mantissa
{
	ans = ans*2;
	n++;
	if (n==e)
		j=1;	
}


while (e<0 & j==0)	//Mantissa
{
        ans = ans*0.5;
        n--;
        if (n==e)
                j=1;
}
float final = (1 + rx) * ans;
if (a[0]==1) 	//Sign bit
	final = final *-1;
printf("%f",final);

/////////////////////////////////////////////////////////////

printf("\n"); 	//Binary number to double
printf("Input binary number to convert double number:");
printf("\n");

int la[64] = {0};
long long int lx,ly;

	scanf("%s",&ar.lc);


	for (i=0;i<64;i++)
	la[i] = ar.lc[i] - '0';
	
ly=1;lx=0;
for (i=11;i>=1;i--)	// Exponent
	{
	if (la[i] == 1)
		lx = lx+ly;
	ly=ly*2;
	}



double lrx,lry;
long long int le;
le=0;
lry=0.5;
for (i=12;i<=63;i++)	//Mantissa
        {
        if (la[i] == 1)
               lrx = lry + lrx;
        lry=lry*0.5;
       }


le = lx - 1023;

m=0;n=0;j=0;

double lans = 1;


while (e>=0 & j==0)	//Mantissa
{
	lans = lans*2;
	n++;
	if (n==le)
		j=1;	
}


while (e<0 & j==0)	//Mantissa
{
        lans = lans*0.5;
        n--;
        if (n==le)
                j=1;
}

double lfinal = (1 + lrx) * lans;
if (la[0]==1)  //Sign bit
	lfinal = lfinal *-1;
printf("%lf\n",lfinal);
































return 0 ;

}
