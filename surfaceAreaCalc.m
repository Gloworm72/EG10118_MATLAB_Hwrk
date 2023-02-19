%% surfaceAreaCalc.m
% This program calculates and displays the surface area of a cylinder with
% a square prism cut out of the middle of it.

% Author: Andrew Congdon
% EG-10118
% Section: 07
% Date: 1/21/2023

% Collaborated with Kayden Grassel

% Clear Workspace
clear

% Clear Command Window
clc

%% Set Variables

% Height of Cylinder (in)
height = 12;
% Radius of Cylinder (in)
radius = 5;
% Side Length of Prism (in)
sidelength = 2;

%% Calculation of Surface Areas

% Cylindar Surface Area (in^2)
surfaceAreaCylinder = (2*(pi*radius^2)) + ((2*pi*radius)*height);
% Prism Surface Area (in^2)
surfaceAreaPrismTopBottom = 2*(sidelength^2);
surfaceAreaPrismSides = 4*(sidelength*height);

% Subtract Surface Areas (in^2)
surfaceAreaTotal = (surfaceAreaCylinder - surfaceAreaPrismTopBottom) + surfaceAreaPrismSides;

%% Display Surface Area Calculation

disp('The total surface area (in^2) is: ')
disp(surfaceAreaTotal)