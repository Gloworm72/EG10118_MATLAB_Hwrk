%% harryPotter.m
% This program asks the user for the name of a Hogwarts student from the
% Harry Potter era and uses a switch conditional to suggest the Hogwarts
% house using certain guidelines

% Author: Andrew Congdon
% January 31, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Variable

% Asks for user input
name = input('Please enter the name (first name only) of a Hogwarts student: ','s');
% Convert to lower case to prevent case-sensitivity
name2 = lower(name);

%% Perform Conditional

% Use switch statement to determine house assignment
switch name2
    case {'cedric', 'cadwallador', 'maxine'}
        disp('This student has been placed in Hufflepuff.')
    case {'luna', 'padma', 'cho', 'eddie'}
        disp('This student has been placed in Ravenclaw.')
    case {'hermoine', 'ron', 'ginny', 'harry'}
        disp('This student has been placed in Gryffindor.')
    case {'draco', 'crabbe', 'goyle'}
        disp('This student has been placed in Slytherin.')
    otherwise
        disp('No suggestions available. Verify your spelling.')
end
    