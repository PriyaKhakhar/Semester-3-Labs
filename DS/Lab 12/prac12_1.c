// WAP to implement Priority Queue (Ascending / Descending)

#include <stdio.h>
#define n 5

struct PriorityQueue
{
    int element;
    int priority;
};

struct PriorityQueue PQ[n];

int front = -1;
int rear = -1;

void enqueue(int x, int y)
{
    if (rear == n - 1)
    {
        printf("Priority Queue Overflow\n");
        return;
    }

    rear++;

    PQ[rear].element = x;
    PQ[rear].priority = y;

    if (front == -1)
        front = 0;

    printf("Element inserted successfully.\n");
}

void dequeueAscending()
{
    if (front == -1)
    {
        printf("Priority Queue Underflow\n");
        return;
    }

    int min_index = front;

    // Find smallest priority
    for (int i = front + 1; i <= rear; i++)
    {
        if (PQ[i].priority < PQ[min_index].priority)
        {
            min_index = i;
        }
    }

    printf("Deleted element is %d with priority %d\n",
           PQ[min_index].element, PQ[min_index].priority);

    for (int i = min_index; i < rear; i++)
    {
        PQ[i] = PQ[i + 1];
    }

    rear--;

    if (rear < front)
    {
        front = -1;
        rear = -1;
    }
}

void dequeueDescending()
{
    if (front == -1)
    {
        printf("Priority Queue Underflow\n");
        return;
    }

    int max_index = front;

    // Find largest priority
    for (int i = front + 1; i <= rear; i++)
    {
        if (PQ[i].priority > PQ[max_index].priority)
        {
            max_index = i;
        }
    }

    printf("Deleted element is %d with priority %d\n",
           PQ[max_index].element, PQ[max_index].priority);

    for (int i = max_index; i < rear; i++)
    {
        PQ[i] = PQ[i + 1];
    }

    rear--;

    if (rear < front)
    {
        front = -1;
        rear = -1;
    }
}

void display()
{
    if (front == -1)
    {
        printf("Priority Queue is empty\n");
        return;
    }

    printf("\nPriority Queue:\n");

    for (int i = front; i <= rear; i++)
    {
        printf("Element: %d, Priority: %d\n",
               PQ[i].element, PQ[i].priority);
    }
}

int main()
{
    int choice, element, priority, type;

    printf("Enter Priority Queue Type:\n");
    printf("1. Ascending Priority Queue\n");
    printf("2. Descending Priority Queue\n");
    printf("Enter choice: ");
    scanf("%d", &type);

    do
    {
        printf("\n----- PRIORITY QUEUE -----\n");
        printf("1. Enqueue\n");
        printf("2. Dequeue\n");
        printf("3. Display\n");
        printf("4. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        switch (choice)
        {
        case 1:
            printf("Enter element: ");
            scanf("%d", &element);

            printf("Enter priority: ");
            scanf("%d", &priority);

            enqueue(element, priority);
            break;

        case 2:
            if (type == 1)
                dequeueAscending();
            else if (type == 2)
                dequeueDescending();
            else
                printf("Invalid Priority Queue Type\n");
            break;

        case 3:
            display();
            break;

        case 4:
            printf("Program terminated.\n");
            break;

        default:
            printf("Invalid choice\n");
        }

    } while (choice != 4);

    return 0;
}
