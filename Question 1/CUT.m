%Unit step Continous
clc;
clear all;
t=[-3:0,0,1:3];
x=[zeros(1,4),ones(1,4)];
subplot(3,3,1);
plot(t,x);
xlabel('t');
ylabel('u(t)');
title('CT unit step');



%Unit step discrete
clc;
clear all;
t=-3:3;
x=[zeros(1,3),ones(1,4)];
subplot(3,3,2);
stem(t,x);
xlabel('t');
ylabel('u(t)');
title('DT unit step');

% Unit Impulse Continous
clc;
clear all;
t=[-5:0,0,0,1:5];
x=[zeros(1,6),ones(1,1),zeros(1,6)];
subplot(3,3,3);
plot(t,x);
xlabel('t');
ylabel('D(t)');
title('CT unit impulse');


% Unit Impulse discreate
clc;
clear all;
t=[-5:5];
x=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,4);
stem(t,x);
xlabel('t');
ylabel('D(t)');
title('DT unit impulse');

% Unit Ramp Continous
clc;
clear all;
t=[-5:5];
x=[(t>=0).*t];
subplot(3,3,5);
plot(t,x);
xlabel('t');
ylabel('R(t)');
title('CT unit Ramp');

% Unit Ramp Discreate
clc;
clear all;
t=[-5:5];
x=[(t>=0).*t];
subplot(3,3,6);
stem(t,x);
xlabel('t');
ylabel('R(t)');
title('DT unit Ramp');

% Parabolic Discreate 
clc;
clear all;
t=[-5:5];
x=[(t>=0).*(t.*t/2)];
subplot(3,3,7);
stem(t,x);
xlabel('t');
ylabel('x(t)');
title('Parabolic DT');

% Parabolic contineous 
clc;
clear all;
t=[-5:5];
x=[(t>=0).*(t.*t/2)];
subplot(3,3,8);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Parabolic CT');

% Exponential Contineous 
clc;
clear all;
t=[-5:5];
x=[exp(t)];
subplot(3,3,9);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Exponential');




