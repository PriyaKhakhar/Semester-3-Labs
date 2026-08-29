//Write a recursive function to find the sum of digits of a given number.
#include<stdio.h>
int sumofdigit(int n)
{
    if(n==0)
    {
        return 0 ;

    }
    return (n%10) + sumofdigit(n/10);
}
void main()
{
    int n;
    printf("enter n");
    scanf("%d",&n);
    printf("sum is : %d",sumofdigit(n));


}
