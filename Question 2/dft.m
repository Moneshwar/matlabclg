clc;
clear all;
x=input('enter the samples');
N=input('enter n point');
L=length(x);
if N<L
    disp('invalid');
else
    x=[x,zeros(1,N-L)];
for K=0:N-1
    X(K+1)=0;
    for n=0:N-1
        X(K+1)=X(K+1)+x(n+1)*exp(-1i*2*pi*K*n/N);
    end
end
disp(X);
K=0:N-1;
subplot(2,2,1);
stem(K,abs(X));
subplot(2,2,2);
stem(K,angle(X));
xlabel('t');
ylabel('x(t)');
title('DFT');
end