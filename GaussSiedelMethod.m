%Gauss Siedel Method
clc,clearvars
A=[8,4,-1;-2,5,1;2,-1,6];B=[11;4;7];%X=[1.0364;1.0043;0.9886],[.31985,-.0625,0]->after 3 iterations
n=length(A);x=zeros(n,1);
for i=1:3
    for j=1:n
        x(j)=(B(j)-A(j,:)*x+x(j)*A(j,j))/A(j,j);
    end
end
x
A*x-B
