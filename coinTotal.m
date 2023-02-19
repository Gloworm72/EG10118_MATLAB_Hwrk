%% coinTotal.m
% This program allows the user to input the number of pennies, nickles,
% dimes and quarters provided by a client and output how much money should
% be deposited into their account.

% Author: Andrew Congdon
% EG-10118
% Section: 07
% Date: 1/21/2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Ask for User Input

disp('Enter the number of each type of coin to be deposited')
% Pennies
clientpennies = input('Number of pennies: ');
% Nickels
clientnickels = input('Number of nickels: ');
% Dimes
clientdimes = input('Number of dimes: ');
% Quarters
clientquarters = input('Number of quarters: ');

%% Convert to Cents, Sum Up Values and Convert to Dollars

% Assign each variable to correct client variable and convert
penniesvalue = clientpennies;
nickelsvalue = clientnickels*5;
dimesvalue = clientdimes*10;
quartersvalue = clientquarters*25;

% Sum up values
totval_cents = penniesvalue + nickelsvalue + dimesvalue + quartersvalue;

% Convert to dollars
totval_dollars = totval_cents/100;

%% Display final value to user

disp('The total amount of money to deposit (in dollars) is: ')
disp (totval_dollars)
