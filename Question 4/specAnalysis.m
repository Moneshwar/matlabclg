clc;
clear all;
A=input('enter the amplitude');
fm=input('enter the message Frequency');
T=1/fm;
t=0:0.001*T:T;
x=A*sin(2*pi*fm*t);
subplot(2,2,1);
plot(t,x);
fs=input('enter the sampling frequency');
N=input('enter the number of samples');
Ts=1/fs;
if(fs>=2*fm)
    n=0:N-1;
    x1=A*sin(2*pi*fm*n*Ts);
    subplot(2,2,2);
    stem(n,x1);
    X=Dftfunc(x1,N);
    subplot(2,2,3);
    plot(n,abs(X));
    fm1=fs/N;
    if mod(fm,fm1)==0
        disp('There is no power leakage');
    else
        disp('There is a power leakage');
        a=fm/fm1;
        disp(a);
        disp(N-a);
    end
else
    disp('Aliasing will occur');
end
