#include <stdio.h>
#include <unistd.h>

void countDown(int length);

int main(){
    int number;
    printf("Enter an integer: ");  
    scanf("%d", &number);  
    countDown(number);
    return 0;
}

void countDown(int length){
    sleep(1);
    setbuf(stdout, NULL);
    while (length > 0){
        printf("%d",length);
        countDown(length-1);
    }
}
