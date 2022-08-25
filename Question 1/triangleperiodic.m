 clc;
 clear all;
 N=input('Enter the cycles');
 t=0:0.001:5;
 if(t<2.5)
    X=[(t<=N/2).*(2.*t/(N/2))];
 end;
 plot(t,X);
%     for i=1:N
%         t=(i-1)*T/2:0.001*T:i*(T/2);
%         plot(t,X);
%         hold on;
%     end