function X = Dftfunc(x,N)
 for k=0:N-1
     X(k+1)=0;
     for n=0:N-1
          X(k+1)=X(k+1)+ x(n+1)*exp(-1i*2*pi*k*n/N);
     end
 end 
end
 
