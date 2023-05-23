%% colorSequenceGenerator.m
% This program generates a growing list of colors, whereby a random color
% from a list is first selescted and added to the end of the sequence for a
% specified number of iterations. The sequence stays the same each
% iteration except for the addition of a new random color at the end. Every
% time the "game" is played the generated sequence should be totally new
% and random.

% Author: Andrew Congdon
% Date: 3/25/2023

% Clear Workspace
clear
% Clear the Command Window
clc

%% Initialize Variables and Arrays

% Cell array of possible colors
colorArray = {'Red','Green','Blue','Yellow'};
% Maximum number in sequence to remember
maxNum = 5;

%% Display Random Colors

% Use while loop to keep generating until program reaches maxNum
for ix = 1:maxNum
    % Generate random array
    newArray = colorArray(randi(length(colorArray),1,ix));
    % Display array
    disp(newArray)
    % Pause for 0.5 seconds
    pause(0.5)
end
