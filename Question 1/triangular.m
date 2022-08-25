clc;
clear all;
N=input('enter no of cycles');
a=0;
for n=1:N
    t=0:0.01:10;
    x=[(t<=5).*t+(t>5).*(10-t)];
    plot(t+a,x);
    a=a+10;
    hold on;
end
xlabel('t');
ylabel('x(t)');
title('triangular');
