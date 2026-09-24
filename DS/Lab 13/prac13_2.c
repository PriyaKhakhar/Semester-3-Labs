//  WAP to get and print the array elements using Pointer.
#include<stdio.h>
void main()
{
    int arr[5],i;
    int *ptr;
    ptr=arr;
    printf("Enter 5 integer values:");
    for(i=0;i<5;i++)
    {
        scanf("%d",ptr+i);
    }
    printf("The array elements are:");
    for(i=0;i<5;i++)
    {
        printf("%d ",*(ptr+i));
    }
}