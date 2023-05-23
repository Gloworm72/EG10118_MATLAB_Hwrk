%% battleship.m
%  This program allows the user to play a game of battle ship on an inputed
%  2-dimensional game board.

%  Author: Andrew Congdon
%  Date: 2/21/2023

%  Clear Workspace
clear
%  Clear Command Window
clc
% Clear graphs
close all

%% Determine Width/Height of Board

% Ask for input
boardCol = input('Input width of board (integer -> columns): ');
boardRow = input('Input height of board (integer -> rows): ');

%% Pick Random Location on Board

% Create random column number within bounds provided
randCol = randi(boardCol);
% Create random row number within bounds provided
randRow = randi(boardRow);

% Display message to user
disp('The computer has selected a random row and column!')
% Calculate how many turns the user will have
numTurns = ceil((boardRow*boardCol)/2);
% Display to user
disp("You have " + num2str(numTurns) + " guesses to hit the target.");

%% Allow User to Guess Location Until Correct

% Initialize plot
figure;
hold on;
xlim([1, boardCol]);
ylim([1, boardRow]);
daspect([1 1 1]);
% Initialize variables that user will update each time
rGuess = 0;
cGuess = 0;
% Set counter for number of Guesses
counter = 1;
% Initialize marker
a = 0;
% Use while loop
while ~((rGuess == randRow) && (cGuess == randCol))
    
    cGuess = input('Your guess (column) :');
    rGuess = input('Your guess (row) :');
    if ((rGuess > boardRow) || (rGuess < 1)) || ((cGuess > boardCol) || (cGuess < 1))
        disp('The value inputed does not exist. Please make another guess.')
    elseif counter == numTurns
        rGuess = randRow;
        cGuess = randCol;
        % Marker variable
        a = 1;
    else
        daspect([1 1 1])
        plot(cGuess,rGuess,'rx','Markersize',15,'LineWidth',2)
        drawnow
        disp(("Incorrect - you have " + num2str(numTurns-counter) + " left! Guess again!"))
    end
    counter = counter + 1;
end
% While loop is exited when correct answer is found. If exited because ran
% out of turns, don't display
if ~a == 1
    disp("Congratulations! You guessed correctly in " + num2str(counter-1) + " turn(s)!")
    plot(cGuess,rGuess,'gx','Markersize',15,'LineWidth',2)
else
    disp('You ran out of turns! Game Over!')
    plot(cGuess,rGuess,'bx','Markersize',15,'LineWidth',2)
end

