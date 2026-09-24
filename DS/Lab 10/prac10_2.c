//Write a menu driven program to implement following operations on a circular queue using an Array
// • Insert
// • Delete
// • Display all elements of the queue
#include <stdio.h>
#define N 10
int CQ[N];
int F=-1;
int R=-1;

void enqueue(int y)
{
    
    if((R+1)%N==F)
    {
        printf("Circular queue overflow");
        return;
    }
    R=(R+1)%N;
    CQ[R]=y;
    if(F==-1)
        F=0;
    
}
int dequeque()
{
    if(F==-1)
    {
        printf("Circular queue underflow\n");
        return -1;
    }
    else
    {
        int y = CQ[F];
        if(F==R)
            F=R=-1;
        else
            F=(F+1)%N;
        return y;
    }
}
void display()
{
    if(F==-1)
    {
        printf("Circular Queue underflow");
        return;
    }
    for(int i = F; i!=R;i=(i+1)%N)
    {
        printf("%d\n",CQ[i]);
    }
    printf("%d\n",CQ[R]);
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
                x = dequeque();
                if(x != -1)
                    printf("Dequeued element: %d\n", x);
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
