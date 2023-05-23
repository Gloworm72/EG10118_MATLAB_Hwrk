%% polynomialGenerate.m
%  This program allows the user to insrt coefficients of a polynomials
%  alog with a set of x values to visualize those data points compared to
%  the calculated graph of the entire function.

%  Author: Andrew Congdon
%  Date: 2/21/2023

%  Clear Workspace
clear
%  Clear Command Window
clc
% Clear graphs
close all

%% Collect Information From User

% Ask user to input polynomial of degree n
n = input('Enter a polynomial degree between 0 and 6: ');
% Initialize a vector to store coefficients
vecCo = zeros(1,n+1);

% Use loop to ask user for each coefficient
for i = 0:n
    vecCo(i+1) = input(['Enter value for the coefficient C_',num2str(i),': ']);
end

% Initialize Vector
xp = zeros(1,n+1);
% Ask for x-coordinates using loop
for iX = 1:n+1
    xp(iX) = input('Enter a value for x : ');
end

%% Run Computations

% Initialize y vector
yp = zeros(size(xp));

% Use loop to compute value of polynomial
for ix = 1:length(xp)
    for iC = 1:n+1
        yp(ix) = yp(ix) + vecCo(iC)*xp(ix)^(iC-1);
    end
end


% Determine minimum and maximum x values inputed by user
xMin = min(xp);
xMax = max(xp);

% Create x vector
x = linspace(xMin,xMax,100);

% Initialize a y vector
y = zeros(1,length(x));

% Use for loop
for ix2 = 1:length(x)
    for iy = 1:n+1
        y(ix2) = y(ix2) + vecCo(iy)*x(ix2)^(iy-1);
    end
end


%% Display Results

% Create figure
figure
% Set limits
xlim([1,100])
ylim([1,100])
% Display both sets of data
plot(xp,yp,'ro',x,y,'k-')


