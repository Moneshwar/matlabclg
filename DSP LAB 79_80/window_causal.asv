N=input('Enter N');
n=0:N-1;
WR=ones(1,N);
disp(n);
disp(WR);
subplot(2,2,1);
stem(n,WR);
title('Rectangale window');
WHn=0.5-0.5*cos(2*pi*n/(N-1));
subplot(2,2,2);
stem(n,WHn);
title('Hanning window');
WHm=0.54-0.46*cos(2*pi*n/(N-1));
subplot(2,2,3);
stem(n,WHn);
title('Hamming window');

