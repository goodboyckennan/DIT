/*
    Created: Sept. 30, 2014
*/

#include <stdio.h>
main(){

    int a,b;
    for(a = 1; a <= 10; a++){
            for(b = 1; b <=a; b++){
                printf("%d ",b);
            }
            printf("\n");
    }
}
