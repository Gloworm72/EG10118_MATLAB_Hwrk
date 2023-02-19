%% arrayMath.m
% This program defines a two dimentional array of values, displays to the
% command window as well as the number of rows and columns. Then, it
% modifies the array by subtracting 5 from each element in the original
% array and multiplying by -2 and displaying it. It then asks the user to
% specify a column and row position and displays it.

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Create Array and Display

% Create vector
vecOG = [-2, 4, -3, 17; 3, 13, 17, -5; -2, 0, 15, -3];
% Determines size of array
[nRow, nCol] = size(vecOG);
% Displays to command window
disp('The original array values are: ')
disp(vecOG)
disp('This array''s size is: ')
disp('Rows: ')
disp(nRow)
disp('Columns: ')
disp(nCol)


%% Modify and Display Array

% Subtract each element by 5 and multiplies by -2
vecMod = (vecOG-5)*-2;
% Displays to command window
disp('The modified array values are: ')
disp(vecMod)

%% Ask for User Input and Displays Value

% Ask user for input
disp('Please specify a row and column position you would like to locate.')
nRow2 = input('Row number (1-3): ');
nCol2 = input('Column number (1-4): ');
% Display the value cooresponding to the position
finalVal = vecMod(nRow2,nCol2);
% Space for clarity
disp('  ')
disp('The specified value is: ')
disp(finalVal);

