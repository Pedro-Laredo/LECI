#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

/*******************************************************/

SllNode* sllDestroy(SllNode* list)
{
    while (list)
    {
        SllNode* next = list->next;
        if(list->reg.name) free((void*)list->reg.name);
        free(list);
        list = next;

    }
    return NULL;
}


/*******************************************************/

void sllPrint(SllNode *list, FILE *fout)
{
    if (list==NULL){
        printf("\n List is empty");
    }
    fprintf(fout, "\n%-10s | %-30s\n", "NMEC", "NAME");
    fprintf(fout, "%-10s-+-%-30s\n", "----------", "------------------------------");
    while(list !=NULL){
        SllNode* next = list->next;
        fprintf(fout,"%-10u | %30s\n",list->reg.nmec, list->reg.name);
        list = next;


    }
    printf("\n");

}

/*******************************************************/

SllNode* sllInsert(SllNode* list, uint32_t nmec, const char *name)
{
    assert(name != NULL && name[0] != '\0');
    assert(!sllExists(list, nmec));
    SllNode* newNode = (SllNode*)malloc(sizeof(SllNode));

    if(newNode==NULL){
        return list;
    }
    newNode->reg.nmec = nmec;
    newNode ->reg.name= (char*)malloc(strlen(name)+1);

    if (newNode->reg.name == NULL){
        free(newNode);
        return list;
    }
    strcpy(newNode->reg.name,name);
    newNode->next = NULL;

    if (list==NULL){
        return newNode;
    }
    if (nmec< list->reg.nmec){

        newNode->next = list;
        return newNode;
    }
    SllNode* current = list;
    while(current->next !=NULL && current->next->reg.nmec<nmec){
        current = current->next;
    }
    //insert node
    newNode->next = current->next;
    current->next = newNode;
    return list;
}

/*******************************************************/

bool sllExists(SllNode* list, uint32_t nmec)
{
    while(list!=NULL){
        if(list->reg.nmec==nmec){
            return true;
        }
        list = list->next;
    }
    return false;
}

/*******************************************************/

SllNode* sllRemove(SllNode* list, uint32_t nmec)
{
    assert(list != NULL);
    assert(sllExists(list, nmec));

    if(list->reg.nmec==nmec){
        SllNode* next = list->next;
        if(list->reg.name) free((void*)list->reg.name);
        free(list);
        return next;
    }
    SllNode* current = list;
    while(current->next!=NULL && current->next->reg.nmec !=nmec){
        current = current->next;
    }
    if (current->next !=NULL){
        SllNode* nodeToRemove = current->next;
        current->next = nodeToRemove->next;
        if(nodeToRemove->reg.name) free((void*)nodeToRemove->reg.name);
        free(nodeToRemove);
    }

    return list;
}

/*******************************************************/

const char *sllGetName(SllNode* list, uint32_t nmec)
{
    assert(list != NULL);
    assert(sllExists(list, nmec));
    while (list!=NULL){
        if(list->reg.nmec == nmec){
            return list->reg.name;
        }
        list = list->next;
    }

    return NULL;
}

/*******************************************************/

SllNode* sllLoad(SllNode *list, FILE *fin, bool *ok)
{
    assert(fin != NULL);

    if (ok != NULL)
       *ok = false; // load failure

    return NULL;
}

/*******************************************************/

