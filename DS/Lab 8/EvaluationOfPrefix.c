//WAP for evaluation of prefix Expression using Stack.
#include<stdio.h>
#include<string.h>
#include<ctype.h>
#define N 50 
int s[N];
int top = -1;

void push(int x) {
    if (top >= N - 1) {
        printf("Stack Overflow\n");
        return;
    }
    s[++top] = x;
}

int pop() {
    if (top < 0) {
        printf("Stack Underflow\n");
        return 0;
    }
    return s[top--];
}
int evalpre(char str[]) 
{
    int len = strlen(str);
    int i = len-1;
    while(i>=0)
    {
        char ch = str[i];
        
        if(isdigit(ch))
        {
            push(ch - '0');
        }
        else
        {
            
            int val1= pop();
            int val2= pop();
            switch(ch)
            {
                case '+':
                    push(val1+ val2);
                    break;
                case '-':
                    push(val1-val2);
                    break;
                case '*':
                    push(val1*val2);
                    break;
                case '/':
                    push(val1/val2);
                    break;
            }
        }
        i--;
    }
    return pop();
}
int  main()
{
    char str[] = "**5+46+4/93";
    int result = evalpre(str);
    printf("Answer : %d",result);


}
