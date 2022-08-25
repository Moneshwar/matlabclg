clc;
clear all;
t=[0:0.001:5];
x=[(t<1).*t + ((t>=1) & (t<3)).*2 + ((t>=3) & (t<4)).*(-1).*((1*sin(2*pi*t/2))-2) + ((t>=4) & (t<5)).*(6-t) + ((t>=5)).*0];
subplot(2,2,1);
plot(t,x);
xlabel('t');
ylabel('u(t)');
title('Aperiodic');