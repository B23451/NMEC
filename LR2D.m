clc,clearvars

x = [0 2 4 6 9];xs=sum(x);
y = [5 6 6 7 9];ys=sum(y);
xy=sum(x.*y);
x2=sum(x.*x);
n=length(x);
a1=(n*xy-xs*ys)/(n*x2-xs*xs);a0=(ys/n)-a1*(xs/n);
yp=(a0+a1*x);e=(y-yp);
sr=sum(e.*e);sybyx=sqrt(sr/(n-2));
st=sum((y-(ys/n)).*(y-(ys/n)));
r=sqrt(1-sr/st);
fprintf("a0 = %.4f, a1 = %.4f, \nstandard error of estimate = %.4f, r = %.4f.\n",a0,a1,sybyx,r)
