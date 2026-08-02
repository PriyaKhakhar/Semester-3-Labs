// WAP to delete duplicate numbers from an array
#include<stdio.h>

void main()
{
    int n;
    printf("Enter n: ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter values:\n");
    for(int i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }

    for(int i = 0; i < n; i++)
    {
        for(int j = i + 1; j < n; j++)
        {
            if(arr[i] == arr[j])
            {
                for(int k = j; k < n - 1; k++)
                {
                    arr[k] = arr[k + 1];
                }
                n--;
                j--;
            }
        }
    }

    printf("Array after deleting duplicates:\n");
    for(int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
}
