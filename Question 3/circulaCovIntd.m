x=input('Enter sequence x');
h=input('Enter sequence h');
l=length(x);
m=length(h);
N=max(l,m);
x=[x , zeros(1,(N-l))];
h =[h , zeros(1,(N-m))];
for n = 0:N-1
    y(n+1)=0;
    index=0;
    for k = 0:N-1
        if(n-k < 0)
            index=(n-k)+N;
        elseif(n-k>=0 && n-k <N)
            index=n-k;
        else
            index=n-k-N;
        end
        y(n+1)=y(n+1)+ x(k+1)*h(index+1);
    end
end
disp(y);