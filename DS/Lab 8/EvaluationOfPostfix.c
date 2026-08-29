//WAP for evaluation of postfix Expression using Stack.
#include<stdio.h>
#include<string.h>
#define N 50 
int s[N];
int top = -1;
int value = 0;

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
int evalpost(char str[]) 
{
    int i = 0;
    while(str[i] !='\0')
    {
        char ch = str[i];
        if(isdigit(ch))
        {
            push(ch - '0');
        }
        else
        {
            int val2= pop ();
            int val1= pop();
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
        i++;
    }
    return pop();
}
void main()
{
    char str[] = "546+*493/+*";
    int result = evalpost(str);
    printf("Answer : %d",result);


}

//'0' = 48
//1 = 49
