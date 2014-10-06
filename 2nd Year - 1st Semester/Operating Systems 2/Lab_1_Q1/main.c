#include <stdio.h>
#include <string.h>

int main()
{
    int a[] = {100,23,76,32,643,41,954,84,54};
    int x,y,temp,z;

    //assume first number in the array is the largest.
    x = a[0];
    //assume second number in the array is the 2nd largest.
    y = a[1];

    if(x < y){
        temp = x;
        x = y;
        y = temp;
    }

    for( z = 2; z < strlen(a); z++){
        if(a[z] >= a[x]){
            y = x;
            x = a[z];
        }
        else if(a[z] > y){
                y = a[z];
        }
    }

    printf("1st: %d \n"), x;
    printf("2nd: %d \n", y);
}
