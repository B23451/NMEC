% Jacobi Method
clc,clearvars

A=[5,-2,0;1,2,-1;0,-3,7];B=[2;3;2];% X=[0.9771;1.4643;0.9041], Ax-B=[-0.0429;0.0016;-0.0643]
n=length(A);X=zeros(n,1);Xn=zeros(n,1);
for i=1:3
    for j=1:n
        Xn(j)=(B(j)-A(j,:)*X+A(j,j)*X(j))/A(j,j);
    end
    X=Xn;
end
X
A*X-B
