//  WAP to calculate the sum of n numbers using Pointer.
#include<stdio.h>
void main()
{
    int n, i , sum =0;
    printf("Enter size of array: ");
    scanf("%d",&n);
    int *ptr;
    int arr[n];
    ptr=arr;
    for(i=0;i<n;i++)
    {
        printf("Enter element %d: ",i+1);
        scanf("%d",ptr+i);
    }
    
    for(i=0;i<n;i++)
    {
        sum=sum+*(ptr+i);
    }
    printf("Sum of array elements is: %d",sum);
}