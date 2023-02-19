%% plotDerivatives.m
% This program creates an x vector from -4 to 4 with 81 evenly spaced
% points and uses domain marching in for loops to calculate 3 vectors and
% plot them.

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc
% Close Figure Windows
close all

%% Create Vector

% Use linspace to spacify min,max, and # of points
xVec = linspace(-4,4,81);

%% Apply Domain Marching and a For Loop

% Create vectors of 0
yVec1 = zeros(1,81);
yVec2 = zeros(1,81);
yVec3 = zeros(1,81);
% Use for loop to fill empty vectors
for iV = 1:81
    yVec1(iV) = -(xVec(iV))^3 + 12*xVec(iV);
    yVec2(iV) = -3*(xVec(iV)^2) + 12;
    yVec3(iV) = -6*xVec(iV);
end

%% Plot All Three Lines

% Plot y(x) as black solid line
% Plot y'(x) as dashed red line
% Plot y''(x) as dashed dotted blue line
plot(xVec,yVec1,'k-',xVec,yVec2,'r--',xVec,yVec3,'b-.')
% Create title
title('Cubic Polynomial')
% x label
xlabel('x')
% y label
ylabel('Value')

% Create legend
legend('Function','First Derivative','Second Derivative','Location','northeastoutside')
% Set axis
axis([-4,4,-40,30])

% Activate grid
grid on

