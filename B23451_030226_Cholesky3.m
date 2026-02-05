clc,clearvars

% Initializing the matrix
A=[8,20,15;20,80,50;15,50,60];B=[50;250;100];
n=length(A);
L=zeros(n);U=zeros(n);


% Cholesky Algorithm 
% Obtain L and U (Clearly U=transpose(L))
for i=1:n
    L(i,i)=sqrt(A(i,i)-sum(L(i,:).*L(i,:)));U(i,i)=L(i,i);
    for j=i+1:n
        L(j,i)=(A(j,i)-sum(L(i,:).*L(j,:)))/L(i,i);
        U(i,j)=L(j,i);
    end
end

% solve LD=B
D=zeros(n,1);
for i=1:n
    D(i)=(B(i)-L(i,:)*D)/L(i,i);
end

% Solve UX=D
X=zeros(n,1);
for i=n:-1:1
    X(i)=(D(i)-U(i,:)*X)/U(i,i);
end
disp(X);
