  clc;
 clear all;
 N=input('Enter the cycles');
 T=input('Enter the fundamental period');
 f=1/T;
 A=input('Enter the Amplitude');
 t=0:0.001*T:(T/2);
 X=(A*sin(2*pi*f*t));
 plot(t,X);
   for i=1:N
       t=(i-1)*T/2:0.001*T:i*(T/2);
       plot(t,X);
       hold on;
   end