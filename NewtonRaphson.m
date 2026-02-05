% Newton Raphson Method
clc,clearvars
syms x
f = 2*(x^3) - 11.7*(x^2) + 17.7*x - 5;
df=vpa(diff(f));
x0=3;
tol=1e-10;
while(abs(vpa(subs(f,x0)))>tol)
    x_new= x0- vpa(subs(f,x0)/subs(df,x0));
    x0=x_new;
end

fprintf("The root of the equation for f(x) within range %e is %.10f.\n",tol,x0)
