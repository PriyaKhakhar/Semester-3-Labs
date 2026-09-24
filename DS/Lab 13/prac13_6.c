//  WAP to check whether the string is Palindrome or not using Pointer.
#include<stdio.h>
void main()
{
    char str[100],*ptr1,*ptr2;
    printf("Enter a string:");
    scanf("%s",str);
    ptr1=str;
    ptr2=str;
    while(*ptr2!='\0')
    {
        ptr2++;
    }
    ptr2--;
    while(ptr1<ptr2)
    {
        if(*ptr1!=*ptr2)
        {
            printf("The String is not palindrome");
            return;
        }
        ptr1++;
        ptr2--;
    }
    printf("The String is palindrome");
}