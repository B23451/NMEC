%Gauss Siedel Method
clc,clearvars
A=[8,4,-1;-2,5,1;2,-1,6];B=[11;4;7];%X=[1.0364;1.0043;0.9886],[.31985,-.0625,0]->after 3 iterations
% A=[5,1,1;-1,4,1;-1,1,3];B=[7;4;4];% solution converges big diagonal elements
% A=[1,1,5;1,4,-1;3,1,-1];B=[7;4;4];%solution diverges
n=length(A);x=zeros(n,1);
It_max=1e7;tol=1e-20;it=0;

while(abs(sum((A*x-B).*(A*x-B)))>tol && it<It_max)
    for j=1:n
        x(j)=(B(j)-A(j,:)*x+x(j)*A(j,j))/A(j,j);
    end
    it=it+1;
end
x
A*x-B

