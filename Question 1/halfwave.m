 clc;
 clear all;
 N=input('Enter the cycles');
 T=input('Enter the fundamental period');
 f=1/T;
 A=input('Enter the Amplitude');
 for i=1:N
     t=(i-1)*T:0.001*T:i*(T);
     X=(t<=(i-1)*T+T/2).*(A*sin(2*pi*f*t));
     plot(t,X);
     hold on;
 end
 
 
