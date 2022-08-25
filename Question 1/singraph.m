clc;
clear all;
T=input('Enter the fundamental period');
t=0:0.01:T;
A=input('Enter the amplitude');
f=1/T;
x=A*sin(2*pi*f*t);
plot(t,x);