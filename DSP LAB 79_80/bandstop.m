clc;
clear all;
wc1=input('enter cut off frequency(wc1):');
wc2=input('enter cut off frequency(wc2):');
N=input('Enter N:');
for n=-(N-1)/2 :(N-1)/2
   if(n==0)
        hd(n+1+((N-1)/2))=(pi+wc1-wc2)/(pi);  
    else
        hd(n+1+((N-1)/2))=((sin(n*wc1))-(sin(n*wc2)))/(n*pi);
    end
end
%disp(hd);
n=-(N-1)/2 :(N-1)/2;
w1=ones(1,N);
w2=0.5+0.5*cos(2*pi*n/(N-1));
w3=0.54+0.46*cos(2*pi*n/(N-1));
subplot(4,3,1);
stem(n,w1);
title('Rectangular window');
subplot(4,3,2);
stem(n,w2);
title('Hanning window');
subplot(4,3,3);
stem(n,w3);
title('Hamming window');
h1=hd.*w1;
%disp(h1)
h2=hd.*w2;
%disp(h2)
h3=hd.*w3;
%disp(h3)
n=-(N-1)/2 :(N-1)/2;
subplot(4,3,4)
stem(n,h1);
title('rectangular window h(n)');
subplot(4,3,5)
stem(n,h2);
title('Hanning window h(n)');
subplot(4,3,6)
stem(n,h3);
title('Hamming window h(n)');
 a=0;
for w=0:0.01:pi
    a=a+1;
    H1(a)=0;
    H2(a)=0;
    H3(a)=0;
     for l=1:N
        H1(a)= H1(a) + h1(l) * exp(-i*w*l);
        H2(a)= H2(a) + h2(l) * exp(-i*w*l);
        H3(a)= H3(a) + h3(l) * exp(-i*w*l);
     end
end
%disp(a);
w=0:0.01:pi;
subplot(4,3,7);
plot(w,abs(H1));
title('rectangular window H(Z) Plot');
subplot(4,3,8)
plot(w,abs(H2));
title('Hanning window H(Z) Plot');
subplot(4,3,9)
plot(w,abs(H3));
title('Hamming window H(Z) Plot');
subplot(4,3,10);
stem(w,abs(H1));
title('rectangular window H(Z) Stem');
subplot(4,3,11)
stem(w,abs(H2));
title('Hanning window H(Z) Stem');
subplot(4,3,12)
stem(w,abs(H3));
title('Hamming window H(Z) Stem');
        
        

