%Triangle
% clc;
% clear all;
% t=[0:6];
% x=[(t<=3).*(2.*t/3) + ((t>3)&(t<=6)).*(12-2*t)/3];
% subplot(3,3,1);
% plot(t,x);

% Sawtooth
clc;
clear all;
t=[0:4];
x=[((t<=4).*t)];
subplot(3,3,2);
plot(t,x);






