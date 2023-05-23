function [] = stochasticPlot(s,m,x)
% This function domain marches to tabulate a vector of values using the x
% input vector and plots the two vectors with x on the horizontal axis and f(x)
% on the vertical axis.

%  Author: Andrew Congdon
%  Date: 3/8/2023

% Find length of x
N = length(x);
% Initialize f(x)
fVec = zeros(N);

% Use for-loop to domain march
for iX = 1:N
    fVec(iX) = (1/(s*sqrt(2*pi)))*exp(-0.5*((x(iX)-m)/s)^2);
end

% Plot function
plot(x,fVec)
grid on
xlabel('x')
ylabel('y')
title('Normal Distribution with m = 1 and s = 2')

