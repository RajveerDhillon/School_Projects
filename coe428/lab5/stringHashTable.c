
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define HASH_TABLE_SIZE 1057
typedef struct Entry Entry, *EntryPtr;
struct Entry {
  char * string;
  int count;
};
Entry hash_table[HASH_TABLE_SIZE];

void add(char * tag,int num)
{
  int sum = 0;
  int key, i;
  for (i = 0; i <= num; i++){
    sum += tag[i];
  }
  key = sum%HASH_TABLE_SIZE;
  if(hash_table[key].string != NULL){
    if (hash_table[key].string == tag){
      hash_table[key].count++;
    }
    else{
      while(hash_table[key].string != NULL){
        key++;
        if(hash_table[key].string != NULL){
          if(hash_table[key].string == tag){
            hash_table[key].count++;
            break;
          }
        }
      }
    }
  }
  if(hash_table[key].string == NULL){
    hash_table[key].count++;
    hash_table[key].string = tag;
  } 
}

void printResult(){
  int i;
  for (i = 0; i <= HASH_TABLE_SIZE; i++){
    if(hash_table[i].count != 0){
      printf("The string: %s, The count: %d", hash_table[i].string, hash_table[i].count);

    }
  }
}
