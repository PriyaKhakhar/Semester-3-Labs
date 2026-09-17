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
