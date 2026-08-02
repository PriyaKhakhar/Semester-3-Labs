// WAP to check whether two numbers are co-prime or not.
#include<stdio.h>

void main()
{
    int arr[2];

    printf("Enter two numbers: ");
    scanf("%d%d", &arr[0], &arr[1]);

    int hcf = 1;

    for(int i = 1; i <= arr[0] && i <= arr[1]; i++)
    {
        if(arr[0] % i == 0 && arr[1] % i == 0)
        {
            hcf = i;
        }
    }

    if(hcf == 1)
    {
        printf("Co-prime Numbers");
    }
    else
    {
        printf("Not Co-prime Numbers");
    }
}
