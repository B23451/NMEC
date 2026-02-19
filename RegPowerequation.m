% Getting coefficients of power equation using linearization

clc,clearvars
x=[.75,3,6,8.5];y=[1.2,2,2.4,2.6];

function [xs,ys,x2,xy,st,n]=calcv(x,y)
xs=sum(x);ys=sum(y);x2=sum(x.*x);xy=sum(x.*y);
n=length(x);st=sum((y-ys/n).*(y-ys/n));
end

xl=log10(x);yl=log10(y);
[xs,ys,x2,xy,st,n]=calcv(xl,yl);
a1=(n*xy-xs*ys)/(n*x2-xs*xs);a0=(ys/n)-a1*(xs/n);
alpha=10^a0;beta=a1;
xg=linspace(0,10);
yg=alpha*xg.^beta;
plot(x,y,".",xg,yg)
