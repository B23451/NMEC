clc,clearvars
%function
%f = @(x) .7*x^5-8*x^4+44*x^3-90*x^2+82*x-25;
f = @(x) 0.8/x-0.3;
%initializing initial gusses and function value at initial guess
xl=1;xu=3;er = 1000;fl=f(xl);fu=f(xu);i=1;xr=xu-((xl-xu)*fu/(fl-fu));fr=f(xr);
fprintf('xl = %.7f ,xu = %.7f ,xr = %.7f, f(xr)= %.2f \n',xl,xu,xr,fr)

while(er>.2)
xr_old=xr;i=i+1;
if fr*fl<0
    xu=xr_old;fu=fr;xr=xu-(xl-xu)*fu/(fl-fu);fr=f(xr);
else
    xl=xr_old;fl=fr;xr=xu-(xl-xu)*fu/(fl-fu);xl=xr_old;fl=fr;fr=f(xr);
end
er=abs(xr_old-xr)*100/xr;
fprintf('i=%d ',i)
fprintf('xl = %.7f ,xu = %.7f ,xr = %.7f ,error = %.2f, f(xr)= %.2f \n',xl,xu,xr,er,fr)
end
fprintf('final answer = %.7f \n',xr)
