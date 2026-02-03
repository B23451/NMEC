clc,clearvars
A=[1,-2,2;1,1,3;2,2,5];%inv(A)=[.3333;-4.6667,2.6667;-.3333,-.3333,.3333;0,2,-1]
n=length(A);
L=eye(n);

% LU Decomposition
for i=1:n
    for j=i+1:n
        L(j,i)=A(j,i)/A(i,i);
        A(j,i:end)=A(j,i:end)-L(j,i)*A(i,i:end);
    end
end


X=zeros(n);
for i=1:n % LD=B
    % LD=B
    B=zeros(n,1);D=zeros(n,1);
    B(i)=1;
    for j=1:n
        D(j)=B(j)-L(j,:)*D;
    end


    %UX=D
    for j=n:-1:1
        X(j,i)=(D(j)-A(j,:)*X(:,i))/A(j,j);
    end
end
disp(X);

    