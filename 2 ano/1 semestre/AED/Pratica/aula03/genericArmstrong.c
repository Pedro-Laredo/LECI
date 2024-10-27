#include<stdio.h>
#include<math.h>
int countDigits(int num){
    int count = 0;
    while(num!=0){
        num /=10;
        count++;
    }
    return count;
}
int isArmstrong(int num){
    int n = countDigits(num);
    int sum = 0;
    int temp = num;
    while(temp!=0){
        int digit = temp%10;
        sum +=pow(digit,n);
        temp /=10;
    }
    return (sum==num);

}
int main(){
    int digits = 5;
    int maxNum = pow(10,digits)-1;
    for (int i = 1 ;i<=maxNum; i++){
        if(isArmstrong(i)){
            printf("%d\n",i);
        }
    }
    
}