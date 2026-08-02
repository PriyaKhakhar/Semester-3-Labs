//WAP to delete a number from a given location in an array.
#include<stdio.h>

void main()
{
    int arr[10];
    int n, pos;

    printf("Enter n: ");
    scanf("%d", &n);

    printf("Enter values:\n");
    for(int i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }

    printf("Enter position: ");
    scanf("%d", &pos);

    if(pos > n || pos < 1)
    {
        printf("Deletion is not possible");
    }
    else
    {
        for(int i = pos - 1; i < n - 1; i++)
        {
            arr[i] = arr[i + 1];
        }

        printf("Array after deletion:\n");
        for(int i = 0; i < n - 1; i++)
        {
            printf("%d ", arr[i]);
        }
    }
}
