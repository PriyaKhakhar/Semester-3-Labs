//Write a recursive function to reverse a given number
#include<stdio.h>
int rev(int n , int revno)
{
    if(n==0)
        return revno;
    if(n>0)
    {
        return rev(n/10,revno *10 + n%10);
    }
    
}
void main()
{
    int n ;
    printf("enter n");
    scanf("%d",&n);
    printf("ans  is: %d",rev(n,0));
}
