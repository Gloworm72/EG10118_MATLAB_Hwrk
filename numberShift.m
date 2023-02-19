%% numberShift.m
% This program generates a vector with random values between 1 and 100 and
% displays it to the user. Then it uses a for loop to shift the value
% contained in each position one position to the right, with the last value
% being placed at the first position. Then, it displays the modified array
% to the user

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Creates and displays randomized vector

% Create random vector with numbers between 1 and 100 (1x10)
% Create vector of zeros
vecRand = zeros(1,10);
% Use for loop to assign random numbers
for iV = 1:10
    vecRand(iV) = randi(100);
end
% Store last value for later
lastVal = vecRand(10);
% Display values of vector
disp('Original Array of Random Numbers: ')
disp(vecRand)

%% Converts to Modified Vector and Displays Values

% Use for loop to shift each value of vector
for iR = 10:-1:2
    vecRand(iR) = vecRand(iR-1);
end
% Then assign last value to first value
vecRand(1) = lastVal;
% Display values of new vector
disp('Modified Array of Random Numbers: ')
disp(vecRand)