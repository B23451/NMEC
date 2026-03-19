% Taking function as input example(x.^2) and using array operations to solve is much faster than this eval method.
% So while implimenting it look for scope to optimize

clc,clearvars
a = input("Enter the lower bound for integration: ");
b = input("Enter the upper bound for integration: ");
n = input("Enter the number of segments into which out interval has to be divided: ");
fprintf("Example input: x^2+9*x+2\n");
f = input("Enter the function, which you want to integrate: (in variable 'x')\n","s");


% Trapazoidal rule ------------------------------------------------
I=0;h=(b-a)/n;
for x=a:h:b 
    I=I+2*eval(f);
end
I=I-eval(f);x=a;I=I-eval(f);
I=I*h/2;
fprintf("The final integration (by trapazoidal rule) is : %.4f.\n",I);


% Simpson's 1/3rd rule ---------------------------------------------
x=b;I=eval(f);x=a;I=I+eval(f);
for i=1:n-1
    x=x+h;
    if mod(i,2)==1
        I=I+4*eval(f);
    else
        I=I+2*eval(f);
    end
end
I=I*h/3;
fprintf("The final integration (by simpson's 1/3rd rule) is : %.4f.\n",I);


% Simpson's 3/8th rule ---------------------------------------------
x=b;I=eval(f);x=a;I=I+eval(f);
for i=1:n-1
    x=x+h;
    if mod(i,3)>0
        I=I+3*eval(f);
    else
        I=I+2*eval(f);
    end
end
I=I*h*3/8;
fprintf("The final integration (by simpson's 3/8th rule) is : %.4f.\n",I);
