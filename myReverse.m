function [reverseVec] = myReverse(vec)
% This function reverses the order of an inputed vector of numbers.

%  Author: Andrew Congdon
%  Date: 3/7/2023

% Find length of inputed vector
N = length(vec);
% Initialize reverse vector
reverseVec = zeros(1,N);
% Find first value
% reverseVec(1) = vec(N);
% % Find last value
% reverseVec(N) = 
% Use for loop to reverse order of vector
for iX = 1:N
    reverseVec(iX) = vec(N-iX+1);
end
