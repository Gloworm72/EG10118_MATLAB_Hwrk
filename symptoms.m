%% symptoms.m
% This program asks users for their temperature, whether they have a sore
% throat, and whether they have congestion to infer what illness they are
% experiencing.

% Author: Andrew Congdon
% January 31, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Variable

% Ask user for temp (in F)
temp = input('What is your temperature (ear thermometer) in degrees F?: ');
% Space for clarity
disp('  ')
% Ask about sore throat, making sure they answer in 0 or 1
disp('For the following questions answer "1" for "Yes" and "0" for "No"')
% Add space for clarity
disp('  ')
sore = input('Do you have a sore throat (1 = Yes, 2 = No)?: ');
% Add space for clarity
disp('  ')
% Ask about congestion
congest = input('Do you have congestion (1 = Yes, 0 = No)?: ');

%% Setup Conditional Statement

% Add space for clarity
disp('  ')

% Use if-elseif-else-end
if (temp >= 101 && sore == 1 && congest == 1) || (temp >= 101 && sore ==1 && congest == 0)
    disp('You have Strep Throat or the Flu.')
elseif (temp < 101 && sore == 1 && congest == 1) || (temp < 101 && sore == 1 && congest == 0) || (temp < 101 && sore == 0 && congest == 1)
    disp('You have a Cold.')
elseif (temp >= 101 && sore == 0 && congest == 1)
    disp('You have the Flu.')
elseif (temp >= 101 && sore == 0 && congest == 0)
    disp('You have a possible Flu or other illness.')
elseif (temp < 101 && sore == 0 && congest == 0)
    disp('Need more symptom information.')
else 
    disp('Something went wrong.')
end


