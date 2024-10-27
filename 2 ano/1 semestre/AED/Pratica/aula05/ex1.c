#include<stdio.h>
int N1,N2,N3;
int f1(int n){
    if(n==1){
        return 1;
    }
    else{
       N1++;
       return n+f1(n/2);
    }
}

int f2(int n){
    if(n==1){
        return 1;
    }
    else{
        N2+=2;
        return f2(n/2)+f2((n+1)/2)+n;
    }
}

int f3(int n){
  if (n==1)
  return 1;
    if(n%2==0){
        N3+=2;
        return f3(n/2)+f2((n+1)/2)+n;
    }
    else{
        N3+=1;
        return 2*f3(n/2)+n;
    }
}
int main() {
    for(int i = 1;i<16;i++){
        N1=0;
        N2=0;
        N3=0;
        int aux1 = f1(i);
        int aux2 = f2(i);
        int aux3 =f3(i);
        printf("N=%2d F1=%4d N1=%4d     | F2=%4d N2=%4d     | F3=%4d N3=%4d\n",i,aux1,N1,aux2,N2,aux3,N3);
    }
    return 0;
}