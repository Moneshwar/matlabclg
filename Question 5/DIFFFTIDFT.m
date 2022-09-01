x=input('Enter x :');
N=input('Enter N:');
L=length(x);
if(L<N)
    x=[x,zeros(1,N-L)];
end
x=conj(x);
M=log2(N);
k=0:N/2-1
w=exp(-1i*2*pi*k/N);
for a=M:-1:1
     m=2^a;
     W=w(1:N/m:N/2);
     for K=0:m:N-1
         for n=1:m/2 
             A=x(n+K);
             B=x(n+K+m/2);
             x(n+K)=(A+B);
             x(n+K+m/2)=(A-B)*W(n);
         end
     end
end
x=bitrevorder(x);
x=(1/N)*conj(x);
display(x);
      