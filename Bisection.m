clc, clearvars
%function definition
f = @(x) .7*x^5-8*x^4+44*x^3-90*x^2+82*x-25;

%initializing initial gusses and function value at initial guess
xl=0;xu=1;xr=(xl+xu)/2;er = 1000;fl=f(xl);fu=f(xu);fr=f(xr);i=1;
fprintf('xl = %.7f ,xu = %.7f ,xr = %.7f, f(xr)= %.2f \n',xl,xu,xr,fr)

while(er>.01)
xr_old=xr;i=i+1;
if fr*fl<0
    xu=xr;fu=fr;xr=(xu+xl)/2;fr=f(xr);
else
    xl=xr;fl=fr;xr=(xu+xl)/2;fr=f(xr);
end
er=abs(xr_old-xr)*100/xr;
fprintf('i=%d ',i)
fprintf('xl = %.7f ,xu = %.7f ,xr = %.7f ,error = %.2f, f(xr)= %.2f \n',xl,xu,xr,er,fr)
end
fprintf('final answer = %.7f \n',xr)
