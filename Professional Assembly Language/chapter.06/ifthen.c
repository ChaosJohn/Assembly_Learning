/* ifthen.c - A example C if-then program */

#include <stdio.h> 

int 
main(int argc, 
    char **argv) {
  int a = 100; 
  int b = 25; 
  if (a > b) {
    printf("The higher value is %d\n", a); 
  } else {
    printf("The higher value is %d\n", b); 
  } 

  return 0; 
} 

