%% eulerApprox.m
%  This program uses ueler's method to approximate the y values and plot
%  them using the given equation for the derivative. Then, it finds the
%  exact values using the original equation and calculates the error.

% Author: Andrew Congdon
% March 7, 2023

% Clear workspace
clear
% Clear command window
clc

%% Initialize values

% Initialize t-vector
tvec = linspace(-10,10,100);

% Find length of tvec
tLength = length(tvec);

% Initialize approximated y-vector
y_approx = zeros(1,tLength);

% Assign initial value to new y vector
y_approx(1) = 146;

% Change in t
tChange = tvec(2)-tvec(1);

% Initialize exact y-vector
y_exact = zeros(1,tLength);

% Initialize vector for error
error = zeros(1,tLength);

%% Domain March for both approx and exact

% Use for-loop with euler's to domain march through approximate y-vec
for iT = 2:tLength
    y_approx(iT) = y_approx(iT-1) + (4*(tvec(iT-1))+5)*tChange;
end

% Use for-loop to domain march through exact y-vec
for iT = 1:tLength
    y_exact(iT) = (2*(tvec(iT)^2)) + 5*(tvec(iT)) - 4;
end

%% Plot values

% Plot both exact and approximate values on same graph
plot(tvec,y_approx,'k-',tvec,y_exact,'r--')
% Create legend
legend('Approximate Solution','Exact Solution')
% Add title
title('Using Euler to Calculate an Approximation of y(t) = 2t^2+5t-4')
% Add x and y label
xlabel('Time')
ylabel('Vertical Position')

%% Calculations for error

% Use for-loop to find error at every point
for iE = 1:tLength
    error(iE) = y_exact(iE) - y_approx(iE);
end

% Find maximum absolute value
maxVal = abs(max(error));

% Display to command window
disp(['The maximum magnitude of the error vector is: ', num2str(maxVal)])

%% Result of changing tvec

% for 10 points, the new maximum error was 88.8889.

% for 1000 points, the new maximum error was 0.8008.

% 1000 data points resulted in the lowest maximum error, followed by 100
% data points, and 10 data points resulted in a much higher maximum error.
% The more data points the approximation has to step through, the more
% accurate the results become.

