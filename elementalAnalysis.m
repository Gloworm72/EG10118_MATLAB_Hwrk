%% elementalAnalysis
%  This program displays elements that have certain attributes using a
%  table of given values

%  Author: Andrew Congdon
%  Date: 2/21/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Load Data

load('ElementData.mat')
% Find Column and Row Lengths
[nRow,nCol] = size(ElementData);

%% Run loops to produce answers

% Display initial statement
disp('Elements with a Melting Point Greater than 3000 degrees Kelvin:')
% Run for loop with if statemnt by going through each row of 5th column
for iR = 1:nRow
    if str2double(ElementData(iR,5)) > 3000
        disp(ElementData(iR,1) + " -- " + ElementData(iR,5) + " degrees Kelvin")
    end
end

% Space for clarity
disp(' ')
% Run for loop/if statement to find elements with BP less than 100
disp('Elemnts with a Boiling Point Less Than 100 degrees Kelvin: ')
for iR = 1:nRow
    if str2double(ElementData(iR,6)) < 100
        disp(ElementData(iR,1) + " -- " + ElementData(iR,6) + " degrees Kelvin")
    end
end

% Space for clarity
disp(' ')
% Run a for/if statement to find elements with TET Crystal Lattice
% Structure
disp('Elements with the TET (Tetragonal) Crystal Lattice Structure:')
for iR = 1:nRow
    if ElementData(iR,7) == "TET"
        disp(ElementData(iR,1) + " -- " + ElementData(iR,7) + " Crystal Lattice Structure")
    end
end
