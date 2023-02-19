%% calculateUV.m
% This program allows the user to input values for "u" and "v" to solve
% multiple equations

% Author: Andrew Congdon
% EG-10118
% Section: 07
% Date: 1/21/2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Ask User for Variable Values

% Ask for u
u = input('Input a value for u: ');
% Ask for v
v = input('Input a value for v: ');

%% Perform Calculations

a = (4*u)/(3*v);
b = (2*v^-2)/((u+v)^2);
c = (v^3)/((v^3)-(u^3));
d = (exp(u))+log(v);
e = abs(u-v);
f = cos(u) + sin(v);
g = cos(deg2rad(u)) + sin(deg2rad(v));

%% Display Results to User

% Add space
disp('  ')
% Display ansewers
disp('a: ')
disp(a)
disp('b: ')
disp(b)
disp('c: ')
disp(c)
disp('d: ')
disp(d)
disp('e: ')
disp(e)
disp('f: ')
disp(f)
disp('g: ')
disp(g)