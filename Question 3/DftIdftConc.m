x=input('Enter x');
h=input('Enter h');
L=length(x);
m=length(h);
N=max(L,m);
x=[x,zeros(1,(N-L))];
h=[h,zeros(1,(N-m))];
X=Dftfunc(x,N);
H=Dftfunc(h,N);
Y=X.*H;
y=idftfunc(Y,N);
disp(y);