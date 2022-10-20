clc;
clear all;
N=input('Enter N:');
L=input('Enter M:');
A=input('Enter Amplitude:');
f=input('Enter the signal frequency');
fs=N*f;
T=1/f;
t=0:0.01*T:T;
x=A*sin(2*pi*f*t);
subplot(3,3,1);
plot(t,x);
n=0:N-1;
x1=A*sin(2*pi*f*n/fs);
subplot(3,3,2);
stem(n,x1);
a=1;
for w=0:0.01*pi:pi
    X1(a)=0;
    for n=1:N
        X1(a)=X1(a)+x1(n)*exp(-1i*w*n);
    end
    a=a+1;
end
w=0:0.01*pi:pi;
subplot(3,3,3);
plot(w,abs(X1));
x2=[zeros(1,N*L)];
t1=1:L:N*L;
x2(t1)=x1;
n=0:length(x2)-1;
subplot(3,3,4);
stem(n,x2);
b=1;
for w=0:0.01*pi:pi
    X2(b)=0;
    for n=1:(N*L)
        X2(b)=X2(b)+x2(n)*exp(-1i*w*n);
    end
    b=b+1;
end
w=0:0.01*pi:pi;
subplot(3,3,5);
plot(w,abs(X2));
