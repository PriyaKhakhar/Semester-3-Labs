// Write a menu driven program to implement following operations on the Doubled Ended Queue using an Array
//  Insert at front end, Insert at rear end
//  Delete from front end, Delete from rear end
//  Display all elements of the queue
#include <stdio.h>

#define n 50

int q[n];
int front = -1;
int rear = -1;

void insert_rear(int value)
{
    if (rear == n - 1)
    {
        printf("Double ended queue overflow\n");
        return;
    }

    rear = rear + 1;
    q[rear] = value;

    if (front == -1)
    {
        front = 0;
    }
}

void insert_Front(int value)
{
    if (front == 0)
    {
        printf("Double ended queue overflow\n");
        return;
    }

    if (front == -1)
    {
        front = rear = 0;
    }
    else
    {
        front--;
    }

    q[front] = value;
}

int delete_FRONT()
{
    if (front == -1)
    {
        printf("Queue Underflow\n");
        return -1;
    }

    int value = q[front];

    if (front == rear)
    {
        front = rear = -1;
    }
    else
    {
        front++;
    }

    return value;
}

int delete_REAR()
{
    if (rear == -1)
    {
        printf("Queue Underflow\n");
        return -1;
    }

    int value = q[rear];

    if (front == rear)
    {
        front = rear = -1;
    }
    else
    {
        rear--;
    }

    return value;
}

void display()
{
    if (front == -1)
    {
        printf("Queue Underflow\n");
        return;
    }

    printf("Queue elements are:\n");

    for (int i = front; i <= rear; i++)
    {
        printf("%d ", q[i]);
    }

    printf("\n");
}

int main()
{
    int choice, x;

    while (1)
    {
        printf("\n--- DOUBLE ENDED QUEUE ---\n");
        printf("1. Insert at rear\n");
        printf("2. Insert at front\n");
        printf("3. Delete from front\n");
        printf("4. Delete from rear\n");
        printf("5. Display\n");
        printf("6. Exit\n");

        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice)
        {
            case 1:
                printf("Enter the element to insert at rear: ");
                scanf("%d", &x);
                insert_rear(x);
                break;

            case 2:
                printf("Enter the element to insert at front: ");
                scanf("%d", &x);
                insert_Front(x);
                break;

            case 3:
                x = delete_FRONT();
                if (x != -1)
                    printf("Deleted element from front: %d\n", x);
                break;

            case 4:
                x = delete_REAR();
                if (x != -1)
                    printf("Deleted element from rear: %d\n", x);
                break;

            case 5:
                display();
                break;

            case 6:
                return 0;

            default:
                printf("Invalid choice\n");
        }
    }
}
