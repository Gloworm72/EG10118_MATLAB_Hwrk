%% weatherStats.m
% This program asks the user for how many days they wish to collect weather
% data then asks a series of questions to calculate weather data for each
% day

% Author: Andrew Congdon
% February 1, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Ask User for Data

% Set cumulators to zero
cumTemp = 0;
cumRain = 0;
% Ask for how many days
dayNum = input('How many days do you wish to collect data? ');
% Display day number and cooresponding questions using for loop
for iDay = 1:1:dayNum
    disp('Day: ')
    disp(iDay)
    highTemp = input('Enter the high temperature (degrees F) for this day: ');
    rainFall = input('Enter the rainfall total (inches) for this day: ');
    cumTemp = cumTemp + highTemp;
    cumRain = cumRain + rainFall;
end

%% Calculations

% Calculate average temperature
aveTemp = cumTemp/dayNum;
% Calculate total rainfall
totRain = cumRain;

% Display dashed lines for clarity
disp('-----')

% Display calculations
disp('The average high temp (degrees F) is: ')
disp(aveTemp)
disp('The total rainfall (inches) is: ')
disp(totRain)

