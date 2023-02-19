%% findExtremes.m
% This program determines the 2 derivatives of a funtion and locates anu
% local maximum and minimum values.

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Create Vector

% Use linspace to spacify min,max, and # of points
xVec = linspace(-4,4,81);

%% Domain Marching from Previous Problem

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

%% Use For Loop/If Statements
% Create for loop that finds values for which y'(x) is 0 and y''(x) is
% positive or negative to locate local min/max
for iX = 1:81
    if (yVec2(iX) == 0) && (yVec3(iX) > 0)
        xMin = xVec(iX);
    elseif (yVec2(iX) == 0) && (yVec3(iX) < 0)
        xMax = xVec(iX);
    end
end

%% Display to user

% Display local minimum
disp('The local minimum value is: ')
disp(xMin)
% Display local maximum
disp('The local maximum value is: ')
disp(xMax)
