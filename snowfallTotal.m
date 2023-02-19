%% snowfallTotal.m
% This program loads snowfall data from South Bend to perform calculations
% of snowfall depending on seasons

% Author: Andrew Congdon
% February 14, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Load file and create column vector
% Load file
data = load('snowfallData (1).txt');
% Initialize Column Vectors
seasonTotals = zeros(1,size(data,1));

%% Calculate snowfall totals
% Display snowfall totals
disp('The snowfall totals by season: ')
% Use nested for loop
for iSeason = 1:size(data,1)
    totalSnowfall = 0;
    for iMonth = 1:size(data,2)
        totalSnowfall = totalSnowfall + data(iSeason,iMonth);
    end
    seasonTotals(iSeason) = totalSnowfall;
    disp(seasonTotals(iSeason))
end

%% Determine maximum snowfall and display
% Display maximum snow
disp('The largest amount of snow (inches) in one season was: ')
% Use max funtion
maxSnow = max(seasonTotals);
% display maximum
disp(maxSnow)