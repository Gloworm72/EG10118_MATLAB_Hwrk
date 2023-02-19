%% trigFun.m
% This program asks the user for a value of x in degrees and calculates the
% value of the sine funtion for the user input. It then determines the sign
% (positive, negative, or 0) of the funtion value using conditional and
% displays the appropriate response about the sign.

% Author: Andrew Congdon
% January 31, 2023

% Clear Workspace
clear

% Clear Command Window
clc
%% Set Variables
% Ask for user to input degrees
userDegree = input('Please input an x value (in degrees): ');

%% Calculations
% Calculate the sign of the user-inputed data (using sind)
sineDegree = sind(userDegree);

%% Determine sign and produce appropriate response
% Use an else-if statement
if sineDegree > 0
    disp('The sine of that angle is positive')
elseif sineDegree < 0
    disp('The sine of that angle is negative')
elseif sineDegree == 0
    disp('The sine of that angle is zero')
end
