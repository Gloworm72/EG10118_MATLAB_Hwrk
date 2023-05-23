%% timeOperation.m
%  This program calls the compSpeed function for each type of operation for
%  an allotted time of 0.1 seconds and then determines an average time to
%  complete one operation.

% Author: Andrew Congdon
% March 7, 2023

% Clear workspace
clear
% Clear command window
clc

%% Call each version of the function

% Set time for each
t = 0.1;

% Addition operation
add = compSpeed("Addition",t);
% Division operation
div = compSpeed("Division",t);
% Random integer operation
randomI = compSpeed("Random Integer",t);
% Random multiplication operation
randomM = compSpeed("Random Multiplication",t);

%% Display to command window

% Display max time
disp(['Alloted Time: ',num2str(t), ' seconds'])

% Display results
disp("The number of addition operations was: " + num2str(add))
disp("The number of division operations was: " + num2str(div))
disp("The number of random number generations was: " + num2str(randomI))
disp("The number of random integer multiplication operations was: " + num2str(randomM))

%% Perform Calculations and display

% 0.4 second divided by sum of all results
averageT = (4*t)/(add+div+randomI+randomM);
% Display result
disp("The average time to complete one computation was " + num2str(averageT) + " seconds!")