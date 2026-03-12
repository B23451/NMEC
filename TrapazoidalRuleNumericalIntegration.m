clc,clearvars

%f = @(x) (4*x-3).^3;
f = @(x) 20+10*x-x.^2;

low=input("Lower limit for integration: ");
high=input("Upper limit for integration: ");
n_intervals=input("Number of intervals: ");
accurate_result=input("Write the exact integral value: ");
x=linspace(low,high,n_intervals+1);
y=f(x);
result=(2*sum(y)-y(1)-y(n_intervals+1))*(high-low)/(2*n_intervals);
fprintf("The result of integration is: %.5f\n",result)
fprintf("The percentage error in prediction is: %.2f.\n",abs((result/accurate_result - 1)*100))
