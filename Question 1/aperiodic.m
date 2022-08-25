clc;
clear all;
    t=0:0.01:10;
    x=[(t<=1).*0+((t>1).*(t<=2).*t)+(t>2).*(t<=3).*(2+sin(2*pi*0.5*t))+(t>3).*(t<=5).*(5-t)];
plot(t,x);
    
xlabel('t');
ylabel('x(t)');
title('aperiodic');
