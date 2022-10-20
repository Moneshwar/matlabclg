clc;
clear all;
close all;
Ap=input('enter PB attn');
As=input('enter SB attn');
wp=input('enter PB edge frequency');
ws=input('enter SB edge frequency');
T=input('sampling period');
r1=-20*(log10(Ap));
r2=-20*(log10(As));
awp=(2/T)*tan(wp/2);
aws=(2/T)*tan(ws/2);
display(awp);
display(aws);
[N awc]=cheb1ord(awp,aws,r1,r2,'s');
display(N);
display(awc);
[b a]=cheby1(N,r1,awc,'s');
Hs=tf(b,a);
display(Hs);
[bz az]=bilinear(b,a,(1/T));
Hz=tf(bz,az,T,'variable','z^-1');
display(Hz);
figure;
freqz(bz,az);