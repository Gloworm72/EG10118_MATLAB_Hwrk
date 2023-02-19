%% throwThree20SidedDice.m
% This program generates the sum from randomly rolling three 20-sided dice
% (numbered 1 through 20) and displays the result.

% Author: Andrew Congdon
% EG-10118
% Section: 07
% Date: 1/21/2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Variables for Dice
dice1 = randi (20);
dice2 = randi (20);
dice3 = randi (20);

%% Sum the Results of the Three Dice
dicesum = dice1 + dice2 + dice3;

%% Display the Final Sum to User
disp('Your total is: ')
disp(dicesum)