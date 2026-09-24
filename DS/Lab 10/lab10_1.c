//Write a menu driven program to implement following operations on the Queue using an Array
// • ENQUEUE
// • DEQUEUE
// • DISPLAY

#include <stdio.h>
#define n 10 
int Q[n];
int F=-1;
int R=-1;

void enqueue(int y)
{
    if(R==n-1)
    {
        printf("Queue overflow");
        return;
    }
    R++;
    Q[R]=y;
    if(F==-1)
    {
        F=0;
    }
}

int dequeue()
{
    if(F==-1)
    {
        printf("Queue Underflow");
        return -1;

    }
    else
    {
        int y = Q[F];
        if(F==R)
        {
            F=R=-1;
            return y;
        }
        else
        {
             F++;
             return y ;

        }
    }
}
void display()
{
    if(F==-1)
    {
        printf("Queue overflow");
        return;
    }
    for(int i =F;i<=R;i++)
    {
        printf("%d\n",Q[i]);
    }
    printf("\n");
}
void main()
{
    int choice, x;
    while(1)
    {
        printf("1. Enqueue\n2. Dequeue\n3. Display\n4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch(choice)
        {
            case 1:
                printf("Enter the element to enqueue: ");
                scanf("%d", &x);
                enqueue(x);
                break;
            case 2:
                dequeue();
                break;
            case 3:
                display();
                break;
            case 4:
                return;
            default:
                printf("Invalid choice\n");
        }
    }
}
