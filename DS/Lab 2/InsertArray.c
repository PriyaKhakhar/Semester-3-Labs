// WAP to insert a number at a given location in an array.
#include<stdio.h>

void main()
{
    int arr[10];
    int n, val, pos;

    printf("Enter n: ");
    scanf("%d", &n);

    printf("Enter array elements:\n");
    for(int i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }

    printf("Enter value to insert: ");
    scanf("%d", &val);

    printf("Enter position: ");
    scanf("%d", &pos);

    if(pos > n + 1 || pos < 1)
    {
        printf("Insertion is not possible");
    }
    else
    {
        for(int j = n; j >= pos; j--)
        {
            arr[j] = arr[j - 1];
        }

        arr[pos - 1] = val;

        printf("Array after insertion:\n");
        for(int i = 0; i <= n; i++)
        {
            printf("%d ", arr[i]);
        }
    }
}
