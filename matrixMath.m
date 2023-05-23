%% matrixMath.m
% This program defines certain matrices and performs multiple different matrix multiplication problems.

% Author: Andrew Congdon
% Date: 3/26/2023

% Clear Workspace
clear
% Clear the Command Window
clc

%% Define Matrices

% Matrix A
A = [1 2 3;
    4 5 6;
    7 8 9];
% Matrix B
B = [3 -5 0;
    2 3 4;
    9 -1 1];
% Matrix C
C = [0 0 2;
    0 2 0;
    2 0 0];

%% Perform and Display Calculations

% A + B + C
disp('A + B + C equals:')
disp(A + B + C)

% A - B - C
disp('A - B - C equals:')
disp(A - B - C)

% A * B * C (matrix multiplication)
disp('A * B * C (matrix multiplication) equals:')
disp(A * B * C)

% A * B * C (element-wise multiplication)
disp('A * B * C (element-wise multiplication) equals:')
disp(A .* B .* C)

% A * 10
disp('A * 10 equals:')
disp(A * 10)

% B * C (matrix multiplication)
disp('B * C (matrix multiplication) equals:')
disp(B * C)

% C * B (matrix multiplication)
disp('C * B (matrix multiplication) equals:')
disp(C * B)

