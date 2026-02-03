%clc,clearvars
A=[8,20,15;20,80,50;15,50,60];B=[50;250;100];
n=length(A);
L=zeros(n);
for i=1:n
    L(i,i)=sqrt(A(i,i)-sum(L(i,:).*L(i,:)));
    for j=i+1:n
        L(j,i)=(A(j,i)-sum(L(i,:).*L(j,:)));
    end
end
disp(L);