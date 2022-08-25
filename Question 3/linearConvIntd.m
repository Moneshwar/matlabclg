x=input('Enter sequence x');
h=input('Enter sequence h');
l=length(x);
m=length(h);
N=m+l-1;
for n = 0:N-1
    y(n+1)=0;
    for k = 0:l-1
        if((n-k)>=0 && (n-k)<=m-1)
            y(n+1)=y(n+1) + x(k+1)*h(n-k+1);
        end
    end
end
k=1:N;
subplot(2,1,1);
plot(k,abs(y(k)));
subplot(2,1,2);
stem(k,abs(y(k)));
disp(y);