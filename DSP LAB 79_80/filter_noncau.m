
clc;
clear all;
wc=input('enter cut off frequency');
N=input('Enter N');
for n=-(N-1)/2 :(N-1)/2
   if(n==0)
        hd(n+1+((N-1)/2))=wc/pi;  
    else
        hd(n+1+((N-1)/2))=sin(n*wc)/(n*pi);
    end
end
disp(hd);
n=-(N-1)/2 :(N-1)/2;
w1=ones(1,N);
w2=0.5+0.5*cos(2*pi*n/(N-1));
w3=0.54+0.46*cos(2*pi*n/(N-1));

h1=hd.*w1;
disp(h1)
h2=hd.*w2;
disp(h2)
h3=hd.*w3;
disp(h3)
n=-(N-1)/2 :(N-1)/2;
subplot(2,3,1)
stem(n,h1);
subplot(2,3,2)
stem(n,h2);
subplot(2,3,3)
stem(n,h3);
 a=0;
for w=0:0.01:pi
    a=a+1;
    H1(a)=0;
    H2(a)=0;
    H3(a)=0;
%     b=0;
     for l=1:N
%          b=b+1;
        H1(a)= H1(a) + h1(l) * exp(-i*w*l);
        H2(a)= H2(a) + h2(l) * exp(-i*w*l);
        H3(a)= H3(a) + h3(l) * exp(-i*w*l);
     end
end
disp(a);
% disp(H1);
% disp(H2);
% disp(H3);
w=0:0.01:pi;
subplot(2,3,4)
stem(w,abs(H2));
subplot(2,3,5)
stem(w,abs(H1));
subplot(2,3,6)
stem(w,abs(H3));
        

