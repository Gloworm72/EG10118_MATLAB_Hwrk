%% exponentialGrowth.m
% This program asks the users for various inputs to determine the final
% population size rounded to the nearest integer for a population
% experiencing exponential growth

% Author: Andrew Congdon
% EG-10118
% Section: 07
% Date: 1/21/2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Ask User to Assign Values to Variables

% Name of animal
animalname = input('Enter the name of the animal: ','s');
% Initial population
initpop = input('Enter the initial population (P_0): ');
% Growth rate
growthrate = input('Enter the growth rate (number between 0 and 1): ');
% Year
timeyear = input('Enter the time (yr): ');

%% Perform Calculations

% final population calculation
finalpop = (initpop)*(exp(growthrate*timeyear));
finalpopinteger = round(finalpop);

%% Display Result to User

% Adds space before result
disp(' ')
% Display animal name
disp('Name of Animal: ')
disp(animalname)
% Display population size
disp('Final population of Animal: ')
disp(finalpopinteger)