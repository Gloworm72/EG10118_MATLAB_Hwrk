%% sineDamping.m
% This program asks the user for numerical values of A and xi. The program
% creates a time vector that ranges from 0 to 5 seconds with 101 data
% points and uses domain marching to compute two equations. Then it
% multiplies those vectors together and plots the graph

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Ask User for Variables

% Ask user for A
A = input('Please input a value for A: ');
xi = input('Please input a value for xi: ');

%% Create Time Vector and Domain March the Two Functions

% Create time vector
xVec = linspace(0,5,101);
% Create empty vectors
funcF = zeros(1,101);
funcG = zeros(1,101);
% Use domain marching for the two equations
for iV = 1:101
    funcF(iV) = A * exp(-2*pi*xi*xVec(iV));
    funcG(iV) = sin(2*pi*sqrt((1-xi^2)*xVec(iV)));
end
% Create empty vector for the product
funcProduct = zeros(1,101);
% Compute the product of the two vectors
for iV2 = 1:101
    funcProduct(iV2) = funcF(iV2) * funcG(iV2);
end

%% Plot Vectors

% Plot f(t),-f(t), g(t), and product
plot(xVec,funcF,'b--',xVec,-funcF,'r--',xVec,funcG,'g:.',xVec,funcProduct,'k-')
% Add title
title('Sine Damping')
% Label x-axis
xlabel('Time (seconds)')
% Label y-axis
ylabel('Value')
% Add legend
legend('f(t)','-f(t)','g(t)','y(t)','Location', 'northeastoutside')
% Turn on Grid
grid on

%% Difference Between xi = 0.3 and xi = -0.3

%   When 0.3 is positive, the sine wave y(t)'s amplitude decreases as it moves
% from left to right. Through the whole time frame, it stays in between the
% positive f(t) and negative f(t).
%   When 0.3 is negative, the sine wave instead dampens as it moves right
% to left, while staying in between the positive f(t) and negative f(t).
% The g(t) seems to be a horizontal line instead of a sine curve.



