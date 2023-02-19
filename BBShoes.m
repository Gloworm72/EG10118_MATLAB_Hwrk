%% BBShoes.m
% This program asks the user for the length of a women's foot (in
% centimeters) and returns the size of shoe to order using conditionals.

% Author: Andrew Congdon
% January 31, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Variables

% ask for user foot length
userSize = input('Please enter your foot length (in cm): ');
% round to nearest whole number (in case decimals inputed)
userSize2 = round(userSize);

%% Use Conditionals

% use else-if statement to display response
if (userSize2 <= 28) && (userSize2 > 27.5)
    disp('Your custom basketball shoe size is 11.5')
elseif (userSize2 <= 27.5) && (userSize2 > 27)
    disp('Your custom basketball shoe size is 11')
elseif (userSize2 <= 27) && (userSize2 > 26.5)
    disp('Your custom basketball shoe size is 10.5')
elseif (userSize2 <= 26.5) && (userSize2 > 26)
    disp('Your custom basketball shoe size is 10')
elseif (userSize2 <= 26) && (userSize2 > 25.5)
    disp('Your custom basketball shoe size is 9.5')
elseif (userSize2 <= 25.5) && (userSize2 > 25)
    disp('Your custom basketball shoe size is 9')
else 
    disp('Apologies, we do not have any shoes that fit you right now.')
end