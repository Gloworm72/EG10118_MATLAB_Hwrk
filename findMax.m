%% findMax.m
%  This program generates a 5 x 10 matrix of random numbers between 1 and
%  100 and uses myMaxFunc to find the maximum value and display it to the
%  command windo

% Author: Andrew Congdon
% March 8, 2023

% Clear workspace
clear
% Clear command window
clc

%% Generate and display matrix

% Create random 5x10 matrix
randArray = randi(100,5,10);
% Display matrix
disp('The random array is: ')
disp(randArray)

%% Use user-defined function

% Use function to assign values to output variables
[max, row, col] = myMaxFunc(randArray);
% Display results
disp("The maximum value of the random array is: " + num2str(max))
disp("This value occurred in row " + num2str(row) + " and in Column " + num2str(col))