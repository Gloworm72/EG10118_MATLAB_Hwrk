%% systemsSolver.m
% This program solves a specific system of equations.

% Author: Andrew Congdon
% Date: 3/26/2023

% Clear Workspace
clear
% Clear the Command Window
clc

%% Set Parameters by Putting System into A * u = b form

% Set A
A = [3 1 -12 -6;
    2 -1 -8 2;
    1 6 -3 0;
    -2 -1 0 -5];
% Set b
b = [35;
    18;
    2;
    19];

%% Perform Calculation

% Do the inverse of both sides to find u
u = A\b;

%% Display Values

disp('The results are:')
% Value for w
disp("w = " + u(1))
% Value for x
disp("x = " + u(2))
% Value for y
disp("y = " + u(3))
% Value for z
disp("z = " + u(4))