% % Periodic Sinewave
% clc;
% clear all;
% N=input('Enter the cycles');
% T=input('Enter the fundamental period');
% f=1/T;
% A=input('Enter the Amplitude');;
% for i=1:N
%     t=(i-1)*T:0.001*T:i*T;
%     X=A*sin(2*pi*f*t);
%     subplot(2,2,1);
%     plot(t,X);
%     hold on;
% end;
% Periodic Sinewave
 clc;
 clear all;
 N=input('Enter the cycles');
 T=input('Enter the fundamental period');
 f=1/T;
 A=input('Enter the Amplitude');;
 for i=1:N
     t=(i-1)*T:0.001*T:i*T;
     X=A*cos(2*pi*f*t);
     subplot(2,2,2);
     plot(t,X);
     hold on;
 end;

 clc;
 clear all;
 N=input('Enter the cycles');
 T=input('Enter the fundamental period');
 f=1/T;
 A=input('Enter the Amplitude');;
 for i=1:N
     t=(i-1)*T:0.001*T:i*T;
     X=A*cos(2*pi*f*t/2);
     %subplot(2,2,2);
     plot(t,X);
     hold on;
 end;




    

