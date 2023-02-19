%% compoundingInterest.m
% This program determines the amount of time in years required for an
% initial investment to double in an account with compunding interest.

% Author: Andrew Congdon
% February 14, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Parameters
% Set P
P = 1000;
% Set r
r = 0.07;
% Set n
n = 4;

% Set t as counter
t = 0;
% Set A
A = P;

%% Use While Loop
while A < 2*P
    t = t + 1;
    A = P*(1+r/n)^(n*t);
end

% Display amount of years
disp('Years required to double initial investment: ')
disp(t)
% Display final Amount of money
disp('Final Amount ($): ')
disp(A)