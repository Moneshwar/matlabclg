clc;
clear all;
X=input('enter the samples');
N=input('enter n point');
for n=1:N
    x(n)=0;
    for k=1:N
        x(n)=x(n)+ ((1/N)*(X(k)*exp(i*2*pi*(n-1)*(k-1)/N)));
    end
end
disp(x);
n=1:N;
stem(n,x(n));