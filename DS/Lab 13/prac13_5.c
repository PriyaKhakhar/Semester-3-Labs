// WAP to sort the array elements using Pointer.
#include<stdio.h>
void main()
{
    int n, i ,max, sum =0;
    printf("Enter size of array: ");
    scanf("%d",&n);
    int arr[n];
    int *ptr = arr;
    for (i = 0; i < n; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", (ptr + i));
    }
    for(i=0;i<n-1;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(*(ptr+i)>*(ptr+j))
            {
                int temp=*(ptr+i);
                *(ptr+i)=*(ptr+j);
                *(ptr+j)=temp;
            }
        }
    }
    for(i=0;i<n;i++)
    {
        printf("%d ",*(ptr+i));
    }
}