%% dublicate.m
%  This program locates and displays duplicate values in a vector of 5
%  random numbers between 1 and 10

%  Author: Andrew Congdon
%  Date: 2/21/2023

%  Clear Workspace
clear
%  Clear Command Window
clc

%% Create Vector

% Creates vector of 5 random integers between 1 and 10
vec = randi(10,1,5);
% Display
disp(vec)

%% Identify Whether There is a Duplicate Value
% Flag Variable
flag = false;
% initialize variable
for iC = 1:length(vec)
    a = iC + 1;
    while a <= length(vec) && ~flag
        if vec(iC) == vec(a)
            disp('Duplicate found:')
            disp(vec(iC))
            flag = true;
        end

        a = a + 1;
    end
end


