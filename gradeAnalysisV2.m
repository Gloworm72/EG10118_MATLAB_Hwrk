%% gradeAnalysis.m
% This program analyzes a subset of student grades and displays to the user
% how many grades there were, the number of A's, B's, C's, etc. and then
% displays them again with with 5% value added to them (curved score).

%  Author: Andrew Congdon
%  Date: 2/4/2023

%  Clear Workspace
clear
%  Clear Command Window
clc
% close plots
close all

%% Set Variables and Vectors

% Assign grades to vector variable
gradeVec = [78, 90, 56, 88, 100, 0, 34, 67, 91, 85, 92, 89, 83, 85, 66, 0, 73, 85, 98, 60, 77, 83, 95, 100, 84];
% Determine number of rows and columns (grades)
[nRow, nCol] = size(gradeVec);
% Display to user the number of columns (grades)
disp('Number of grades being evaluated: ')
disp(nCol)

%% Use Nested Loop to Count and Display Grades

% Create vector to put values for A,B,C,D,F in
gradeVecempty = zeros(1,5);
% Run a nested if-elseif loop in a for-loop to update the value of the
% empty vector with one additional number every time it meets the
% conditionals
for iV = 1:1:25
        if (gradeVec(iV) >= 90) && (gradeVec(iV) <= 100)
            gradeVecempty(1) = gradeVecempty(1) + 1;
        elseif (gradeVec(iV) >= 80) && (gradeVec(iV) < 90)
            gradeVecempty(2) = gradeVecempty(2) + 1;
        elseif (gradeVec(iV) >= 70) && (gradeVec(iV) < 80)
            gradeVecempty(3) = gradeVecempty(3) + 1;
        elseif (gradeVec(iV) >= 60) && (gradeVec(iV) < 70)
            gradeVecempty(4) = gradeVecempty(4) + 1;
        elseif gradeVec(iV) < 60
            gradeVecempty(5) = gradeVecempty(5) + 1;
        end
end
% Display updated values of the vector with their cooresponding letter
% grade
disp('Number of A''s: ')
disp(gradeVecempty(1))
disp('Number of B''s: ')
disp(gradeVecempty(2))
disp('Number of C''s: ')
disp(gradeVecempty(3))
disp('Number of D''s: ')
disp(gradeVecempty(4))
disp('Number of F''s: ')
disp(gradeVecempty(5))

%% Update Values of the Original Vector

% Add 5 to original vector
gradeVec2 = gradeVec + 5;
% Make sure any value that is above 100 is set to 100
for i2 = 1:25
    if gradeVec2(i2) > 100
        gradeVec2(i2) = 100;
    end
end
% Create a new empty vector of adjusted letter grades
gradeVec2empty = zeros(1,5);
% Run a nested if-elseif statement to assign adjusted grades to appropriate
% letter grade category
for iV2 = 1:1:25
        if (gradeVec2(iV2) >= 90) && (gradeVec2(iV2) <= 100)
            gradeVec2empty(1) = gradeVec2empty(1) + 1;
        elseif (gradeVec2(iV2) >= 80) && (gradeVec2(iV2) < 90)
            gradeVec2empty(2) = gradeVec2empty(2) + 1;
        elseif (gradeVec2(iV2) >= 70) && (gradeVec2(iV2) < 80)
            gradeVec2empty(3) = gradeVec2empty(3) + 1;
        elseif (gradeVec2(iV2) >= 60) && (gradeVec2(iV2) < 70)
            gradeVec2empty(4) = gradeVec2empty(4) + 1;
        elseif gradeVec2(iV2) < 60
            gradeVec2empty(5) = gradeVec2empty(5) + 1;
        end
end

% Display updated values of the adjusted vector with their cooresponding letter
% grade
disp('Adjusted Number of A''s: ')
disp(gradeVec2empty(1))
disp('Adjusted Number of B''s: ')
disp(gradeVec2empty(2))
disp('Adjusted Number of C''s: ')
disp(gradeVec2empty(3))
disp('Adjusted Number of D''s: ')
disp(gradeVec2empty(4))
disp('Adjusted Number of F''s: ')
disp(gradeVec2empty(5))
