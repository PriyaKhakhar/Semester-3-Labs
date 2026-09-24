//WAP to find the largest element in the array using Pointer
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

    max=ptr[0];
    for (i = 0; i < n; i++) {
        if (*(ptr + i) > max) {
            max = *(ptr + i); 
        }
    }
    printf("Largest element in the array is: %d",max);
}

    
