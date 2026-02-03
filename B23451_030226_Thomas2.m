clc,clearvars

e=[0 -1 -1 -1];f=[2.04 2.04 2.04 2.04];g=[-1 -1 -1];b=[40.8 0.8 0.8 200.8];
n=length(f);

d=zeros(n,1);x=zeros(n,1);
ff=f;d(1)=b(1);
for k=2:n
    ff(k)=ff(k)-e(k)*g(k-1)/ff(k-1);
    d(k)=b(k)-e(k)*d(k-1)/ff(k-1);
end
x(n)=d(n)/ff(n);
for k=n-1:-1:1
    x(k)=(d(k)-g(k)*x(k+1))/ff(k);
end
x