clc;
clear all;
t=-5:0.01:5;
x=[zeros(1,500),ones(1,1),zeros(1,500)];
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('continous time impulse step signal');