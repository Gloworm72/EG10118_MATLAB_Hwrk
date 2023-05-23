function [operationCount] = compSpeed(operationType,timeAllowed)
% This function allows the user to input one of four types of operations
% along with a time limit for the operation to run, and then output the
% number of operations it was able to complete.

%  Author: Andrew Congdon
%  Date: 3/7/2023

% Initialize number of operations
operationCount = 0;
% Initialize testVar
testVar = 3;
% Initialize current time
time = 0;

% Start time
tic
% Use while loop that runs as long as toc is less than max time
while time <= timeAllowed
    switch operationType
        case "Addition"
            placeVar = testVar+testVar;
        case "Division"
            placeVar = testVar/testVar;
        case "Random Integer"
            placeVar = randi(testVar);
        case "Random Multiplication"
            placeVar = randi(testVar)^3;
    end
    operationCount = operationCount + 1;
    time = toc;
end