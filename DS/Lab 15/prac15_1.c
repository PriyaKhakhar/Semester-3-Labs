// 53. WAP to copy a linked list. Take 2 linked lists

#include<stdio.h>
#include<stdlib.h>

struct node
{
    int info;
    struct node *link;
};

struct node *FIRST1 = NULL;
struct node *FIRST2 = NULL;

void copy(struct node *first1)
{
    struct node *temp, *newnode, *last = NULL;

    if(first1 == NULL)
    {
        printf("List is empty\n");
        return;
    }

    temp = first1;

    while(temp != NULL)
    {
        newnode = (struct node *)malloc(sizeof(struct node));

        newnode->info = temp->info;
        newnode->link = NULL;

        if(FIRST2 == NULL)
        {
            FIRST2 = newnode;
            last = newnode;
        }
        else
        {
            last->link = newnode;
            last = newnode;
        }

        temp = temp->link;
    }

    printf("Linked list copied successfully\n");
}

void main()
{
    struct node *newnode, *temp;
    int size, i;

    printf("Enter size of first linked list: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++)
    {
        newnode = (struct node *)malloc(sizeof(struct node));

        printf("Enter element: ");
        scanf("%d", &newnode->info);

        newnode->link = NULL;

        if(FIRST1 == NULL)
        {
            FIRST1 = newnode;
            temp = newnode;
        }
        else
        {
            temp->link = newnode;
            temp = newnode;
        }
    }

    printf("First linked list created successfully\n");

    copy(FIRST1);

    printf("Elements of first linked list:\n");

    temp = FIRST1;

    while(temp != NULL)
    {
        printf("%d ", temp->info);
        temp = temp->link;
    }

    printf("\n");

    printf("Elements of second linked list:\n");

    temp = FIRST2;

    while(temp != NULL)
    {
        printf("%d ", temp->info);
        temp = temp->link;
    }

    printf("\n");
}
