clc,clearvars
function xpm=xpm(x,m)
xpm=sum(x.^m);
end
function y=f(x,Coeff,n)
y=0;
for i =1:n
    y=y+(x.^(i-1))*Coeff(i,1);
end
end

x=[3 4 5 7 8 9 11 12];
y=[1.6 3.6 4.3 3.4 2.8 2.8 3.8 4.6];
n = input("Write Which order regression you want: ");n=n+1;
A=zeros(n);B=zeros(n,1);
for i=1:n
    temp=xpm(x,i-1);j=i;ii=1;
    while(ii<n+1 && j>0)
        A(ii,j)=temp;ii=ii+1;j=j-1;
    end
    B(i)=sum((x.^(i-1)).*y);
end
for i=2:n
    temp=xpm(x,n+i-2);ii=i;j=n;
    while(ii <n+1 && j>0)
        A(ii,j)=temp;ii=ii+1;j=j-1;
    end
end
Coeff=A\B;
my=sum(y)/length(y);
St=sum((y-my).^2);
% ypredicted=f(x,Coeff,n);
Sr=sum((y-f(x,Coeff,n)).^2);
r=sqrt(1-(Sr/St));
Sybyx=sqrt(Sr/(length(y)-n));
x_plot=linspace(2,12);
y_plot=f(x_plot,Coeff,n);
plot(x,y,".",x_plot,y_plot)
