function [maxVal,rowOfmax,colOfmax] = myMaxFunc(array)
% This function allows the user to input a matrix of numbers and outputs
% the maximum value of the matrix along with the maximum value's row/column
% location.

%  Author: Andrew Congdon
%  Date: 3/8/2023

% Initialize Outputs
maxVal = array(1);
rowOfmax = 1;
colOfmax = 1;
% Determine number of rows/columns
[nRow,nCol] = size(array);
% Use for loop to step through and check each row/column
for iRow = 1:nRow
    for iCol = 1:nCol
        if array(iRow,iCol) > maxVal
            maxVal = array(iRow,iCol);
            rowOfmax = iRow;
            colOfmax = iCol;
        end
    end
end
