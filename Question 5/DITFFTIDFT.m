x=input('Enter x :');
N=input('Enter N:');
L=length(x);
if(L<N)
    x=[x,zeros(1,N-L)];
end
M=log2(N);
x=bitrevorder(x);
x=conj(x);
k=0:N/2-1
w=exp(-1i*2*pi*k/N);
for a=1:M
     m=2^a;
     W=w(1:N/m:N/2);
     for K=0:m:N-1
         for n=1:m/2
             A=x(n+K);
             B=x(n+K+m/2)*W(n);
             x(n+K)=A+B;
             x(n+K+m/2)=A-B;
         end
     end
end
x=(1/N)*conj(x);
display(x);
      