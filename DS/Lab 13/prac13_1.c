//  WAP to allocate and de-allocate memory for int, char and float variable at runtime
#include<stdio.h>
#include<stdlib.h>
void main()
{
    int *p;
    char *q;
    float *r;
    p=(int*)malloc(sizeof(int));
    q=(char*)malloc(sizeof(char));
    r=(float*)malloc(sizeof(float));
    printf("Enter an integer value: ");
    scanf("%d",p);
    printf("Enter a character value: ");
    scanf(" %c",q);
    printf("Enter a float value: ");
    scanf("%f",r);
    printf("The integer value is: %d\n",*p);
    printf("The character value is: %c\n",*q);
    printf("The float value is: %.2f\n",*r);
    free(p);
    free(q);
    free(r);
}
