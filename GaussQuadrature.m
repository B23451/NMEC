clc,clearvars

n = input("Number of points to be used?");
a = input("Write the lower limit of integration: ");
b = input("Write the upper limit of integration: ");

x = @(x1) 0.5*(b+a)+0.5*(b-a)*x1;
% f = @(e) (4+3*x(e)+2*x(e)^2+x(e)^3)*(b-a)*0.5;
f = @(e) ((x(e)+1/x(e))^2)*(b-a)*0.5;
I=intmin;
if n==1
    e1=0;w1=2;
    I=f(e1)*w1;
elseif n==2
    e1=1/sqrt(3);e2=-e1;w1=1;w2=1;
    I=f(e1)*w1+f(e2)*w2;
elseif n==3
    e1=-sqrt(3/5);e3=-e1;e2=0;w1=5/9;w3=w1;w2=8/9;
    I=w1*f(e1)+w2*f(e2)+w3*f(e3);
elseif n==4
    e1=0.8611363116;e2=0.3399810436;e3=-e2;e4=-e3;
    w1=0.3478548451;w2=1-w1;w3=w2;w4=w1;
    I=w1*f(e1)+w2*f(e2)+w3*f(e3)+w4*f(e4);
elseif n==5
    e1=0.9061798459;e2=0.5384693101;e3=0;e4=-e2;e5=-e1;
    w1=0.2369268851;w2=0.4786286705;w3=0.5688888889;w4=w2;w5=w1;
    I=w1*f(e1)+w2*f(e2)+w3*f(e3)+w4*f(e4)+w5*f(e5);
elseif n==6
    e1=0.9324695142;e2=0.6612093865;e3=0.2386191861;
    e4=-e3;e5=-e2;e6=-e1;
    w1=0.1713244924;w2=0.3607615730;w3=0.4679139346;
    w4=w3;w5=w2;w6=w1;
    I=w1*f(e1)+w2*f(e2)+w3*f(e3)+w4*f(e4)+w5*f(e5)+w6*f(e6);
end
if I==intmin
    fprintf("Error the value of number of points to be ")
    fprintf("choosen is not an integer between 1 and 6 ")
    fprintf("Hence, this code cannot compute the value.")
else
    fprintf("The value of integral is: %.4f .\n",I)
end


