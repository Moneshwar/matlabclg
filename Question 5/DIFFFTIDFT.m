X=input('Enter X :');
N=input('Enter N:');
L=length(X);
if(L<N)
    X=[X,zeros(1,N-L)];
end
X=conj(X);
M=log2(N);
k=0:N/2-1
w=exp(-1i*2*pi*k/N);
for a=M:-1:1
     m=2^a;
     W=w(1:N/m:N/2);
     for K=0:m:N-1
         for n=1:m/2 
             A=X(n+K);
             B=X(n+K+m/2);
             X(n+K)=(A+B);
             X(n+K+m/2)=(A-B)*W(n);
         end
     end
end
X=bitrevorder(X);
X=(1/N)*conj(X);
display(X);
      