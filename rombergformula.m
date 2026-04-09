clc,clearvars

function []=solve(vec1,k,kg)
vec=zeros(length(vec1)-1);
for i=1:length(vec1)-1
    vec(i)=(4^(k-1)*vec1(i+1)-vec1(i))/(4^(k-1)-1);
    fprintf("%.8f  ",vec(i))
end
fprintf("\n")
if(k<kg)
    solve(vec,k+1,kg);
end
end

a = input("Write the lower limit of integration: ");
b = input("Write the upper limit of integration: ");
k = input("Write levels upto which we have to evaluate"); % LEVELS UPTO WHICH IT HAS TO BE EVALUATE
f = input("Write the function: ","s");
n=2^k+1;
value=zeros(n);


for i=1:n
    x=a+(i-1)*(b-a)/(n-1);
    value(i)=eval(f);
end
trapazoidal=zeros(k);I=0;
for i=1:k
    I=-value(1)-value(n);
    for j=1:2^(k-i+1):n
       I=I+2*value(j);
    end
    trapazoidal(i)=I*(b-a)*2^(k-i)/(n-1);
    fprintf("%.8f  ",trapazoidal(i))
end
fprintf("\n")
solve(trapazoidal,2,k)
