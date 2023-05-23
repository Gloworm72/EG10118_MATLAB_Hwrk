function [output] = myLinspace(startVal,endVal,Nx) 
% This program, linspaceScript.m, uses a for loop to achieve the same 
%  functionality as the function linspace. That is, the program creates
%  a vector of linearly spaced values (i.e., the difference between two 
%  consecutive values is the same) for any given starting value, 
%  ending value, and number of points. 
%
%  The program then compares the vector created using the for loop to the
%  vector created using the linspace function. 

%  Author: Andrew Congdon
%  Date: 3/7/2023 

%% Creating the vectors
% Initiaize the vector
output = zeros(1,Nx);

% Calculating the time step
dx = (endVal-startVal)/(Nx-1);

% Set the first value of the vector to be the starting value
output(1) = startVal;

% Use a for loop to calucate the second through last point by adding dx
% each time.
for ix = 2:Nx
    output(ix) = output(ix-1)+dx;
end

%% Displaying the Results
disp('The vector using the for loop is:')
disp(output)