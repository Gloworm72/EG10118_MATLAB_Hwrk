%% dormCriteria.m
% This program analyzes and displays specific data found in the
% dormFile.mat data structure using for loops and if statements

% Author: Andrew Congdon
% Date: 3/25/2023

% Clear Workspace
clear
% Clear the Command Window
clc

%% Load Data

% Load in dorm data
load('dormFile.mat')

%% Analyze Data

% Find number of dorms total
numDormtot = length(Dorm);

% Display all dorms with greater than or equal to 260 residents
disp('Dorms with greater than or equal to 260 Residents:')
for i = 1:numDormtot
    if Dorm(i).capacity >= 260
        disp(Dorm(i).name + " -- Capacity: " + num2str(Dorm(i).capacity) + " -- Location: " + Dorm(i).quad)
    end
end

% Space for clarity
disp(' ')

% Display all dorms built before 1950 with a capacity of less than 150
disp('Dorms built before 1950 with a capacity of less than 150')
for i = 1:numDormtot
    if (Dorm(i).yearfounded < 1950) && (Dorm(i).capacity < 150)
        disp(Dorm(i).name + " -- Year Founded: " + num2str(Dorm(i).yearfounded) + " -- Capacity: " + Dorm(i).capacity)
    end
end

% Space for clarity
disp(' ')
% Display all dorms at Holy cross with a capacity greater than or equal to
% 50
disp('Dorms at Holy Cross with greater than or equal to 50 residents:')
for i = 1:numDormtot
    if (Dorm(i).capacity >= 50) && strcmp(Dorm(i).quad, 'Holy Cross')
        disp(Dorm(i).name + " -- Year Founded: " + num2str(Dorm(i).yearfounded))
    end
end