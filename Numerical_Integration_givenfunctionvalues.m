% This code provides an overview and may has mass scope for optimization....
% Look forward to optimizing the code before using it.


clc,clearvars
% x = input("Write the independent variable values: ");
% fx = input("Write the corresponding dependent variable value: ");
x = [-2 0 2 4 6 8 10];
fx = [35 5 -10 2 5 3 20];
n = length(x);

% for trapazoidal rule------------------------------------------------------------
I=fx(1)+fx(end);
for i=2:n-1
    I=I+2*fx(i);
end
I=I*(x(2)-x(1))/3;
fprintf("The final integration by trapazoidal rule is : %.4f.\n",I);

% for simpson's 1/3rd rule--------------------------------------------------------
I=fx(1)+fx(end);
for i=2:n-1
    I=I+4*fx(i)*(1-mod(i,2))+2*fx(i)*mod(i,2);
end
I=I*(x(2)-x(1))/3;
fprintf("The final integration by simpson's 1/3rd rule is : %.4f.\n",I);

% for simpson's 3/8th rule---------------------------------------------------------
I=fx(1)+fx(n);
for i=2:n-1
    I=I+3*fx(i)*(mod(i-1,3)>0)+2*fx(i)*(mod(i-1,3)==0);
end
I=I*(x(2)-x(1))*3/8;
fprintf("The final integration by simpson's 3/8th rule is : %.4f.\n",I);

