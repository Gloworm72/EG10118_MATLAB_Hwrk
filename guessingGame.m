%% guessingGame
% This program serves as a game where the user must correctly guess a 
% random integer number between 1 and 20 while the program gives feedback
% on how close they are.

% Author: Andrew Congdon
% February 14, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Create random number and set logical
% Create random number
randNum = randi(20);
% Set logical
number = true;
% Set Counter
counter = 0;

%% Use while loop to analyze number input
while number
    userNum = input('Make your guess: ');
    if userNum == randNum
        disp('BOOYAH')
        number = false;
    elseif userNum > randNum+2
        disp('Guess too high')
    elseif (userNum > randNum) && (userNum < randNum+2)
        disp('SO CLOSE!')
        disp('Guess too high')
    elseif userNum < randNum-2
        disp('Guess too low')
    elseif (userNum < randNum) && (userNum > randNum-2)
        disp('SO CLOSE!')
        disp('Guess too low')
    end
    counter = counter + 1;
end

%% Display number of tries
% Dashed lines for clarity
disp('--')
% Display statement
disp('Number of tries to guess correctly: ')
disp(counter)