clc;
clear all;
N=input('enter no of cycles');
a=0;
for n=1:N
    t=0:0.1:5;
    x=[(t<2.5).*1+(t>2.5).*0+(t==5).*1];
    plot(t+a,x);
    a=a+5;
    hold on;
end
xlabel('t');
ylabel('x(t)');
title('squarewave');


