clc;
clear all;
N=input('enter no of cycles');
a=0;
for n=1:N
    t=0:0.01:10;
    x=[(t==0).*0+(t>0).*(10-t)];
    subplot(2,2,1);
    plot(t+a,x);
    a=a+10;
    hold on;
end
xlabel('t');
ylabel('x(t)');
title('sawtooth');
N=input('enter no of cycles');
a=0;
for n=1:N
    t=0:0.1:5;
    x=[(t<2.5).*1+(t>2.5).*0+(t==5).*1];
    subplot(2,2,2);
    plot(t+a,x);
    a=a+5;
    hold on;
end
xlabel('t');
ylabel('x(t)');
title('squarewave');
N=input('enter no of cycles');
a=0;
for n=1:N
    t=0:0.01:10;
    x=[(t<=5).*t+(t>5).*(10-t)];
    subplot(2,2,3);
    plot(t+a,x);
    a=a+10;
    hold on;
end
xlabel('t');
ylabel('x(t)');
title('triangular');

