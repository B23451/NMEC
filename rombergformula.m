clc,clearvars

function [v]= evaluate(array)



end

f = @(x) x^2+2*x+1;
a = input("Write the lower limit of integration: ");
b = input("Write the upper limit of integration: ");
k = 10; % LEVELS UPTO WHICH IT HAS TO BE EVALUATE
n=2^k+1;
value=zeros(n);
% 
%     2 2P
% 4 3 2 4P
%   3 2 8P
%       16P
%

for i=1:n
    value(i)=f(a+i*(b-a)/(n));
end
trapazoidal=zeros(k,k);I=0;
for i=1:k
    I=-value(1)-value(n);
    for j=1:2^(k-i+1):n
       I=I+2*value(j);
    end
    trapazoidal(1,i)=I*(b-a)*2^(k-i-1)/(n-1);
    fprintf("for i = %d, I=%.4f .\n",(n-1)/2^(k-i)+1,trapazoidal(i));
end


