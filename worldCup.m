%% worldCup.m
% This program reads data from a text file to analyze the average number of
% goals scored in November games vs December games using if statements
% nested inside a for loop while also using counters to determine the total
% number of goals in each month and the total number of games in each
% month. Then, it uses a conditional to determine which month had the
% higher average number of goals scored. Then, it will analyze the average
% number of goals scored during the Group stage vs knockout stage followed
% by a way for the user to select a number and see which team one and by
% how many points

% Author: Andrew Congdon
% February 14, 2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Analyzing average number of goals scored for months

% Load file and find number of rows/columns
data = load('WorldCup2022Scores.txt');
[nRows,nCols] = size(data);
% Set counter for November goals
goalsNovember = 0;
% Set counter for December goals
goalsDecember = 0;
% Set counter for November games
numNov = 0;
% Set counter for December games
numDec = 0;

% Set up for loop
for iRow = 1:nRows
    if data(iRow,1) == 11
        numNov = numNov + 1;
        goalsNovember = goalsNovember + data(iRow,3) + data(iRow,4);
    elseif data(iRow,1) == 12
        numDec = numDec + 1;
        goalsDecember = goalsDecember + data(iRow,3) + data(iRow,4);
    end
end

% Display average number of goals for each month
aveNovgoals = goalsNovember/numNov;
disp('November Average Goals Scored: ')
disp(aveNovgoals);
aveDecgoals = goalsDecember/numDec;
disp('December Average Goals Scored: ')
disp(aveDecgoals)

% Use conditional to determine which month had higher average number goals
if aveNovgoals > aveDecgoals
    disp('Nov. games had higher goal scoring on average than Dec. games')
elseif aveDecgoals > aveNovgoals 
    disp('Dec. games had higher goal scoring on average than Nov. games')
else
    disp('Both months had the same average number of goals')
end

disp('  ') % Space for clarity
%% Analyze average number of goals scored during the group stage

% Set counter
numGroup = 0;
numKnock = 0;
numGoalgroup = 0;
numGoalknock = 0;
% for loop for group stage
for iG = 1:47
    for iC = 3:4
        numGoalgroup = numGoalgroup + data(iG,iC);
    end
    numGroup = numGroup + 1;
end
% for loop for knockout stage
for iX = 48:63
    for iY = 3:4
        numGoalknock = numGoalknock + data(iX,iY);
    end
    numKnock = numKnock + 1;
end
% Calculate average and display the values
aveGroup = numGoalgroup/numGroup;
aveKnock = numGoalknock/numKnock;
disp('Group Stage Average Goals Scored: ')
disp(aveGroup)
disp('Knockout Stage Average Goals Scored: ')
disp(aveKnock)
% Determine which is bigger and display
if aveGroup > aveKnock
    disp('Group Stage had higher average goal scoring than Knockout Stage')
elseif aveKnock > aveGroup
    disp('Knockout Stage had higher average goal scoring than Group Stage')
else
    disp('Both stages had the same average goal scoring')
end
disp('  ') % Space for clarity
%% Allow User to enter game number
% Ask for input
game_num = input('Enter a game number between 1-63: ');
% Locate and assign the scores for each team to variables
team1_Score = data(game_num,3);
team2_Score = data(game_num,4);
% Use conditional to display different results
if team1_Score > team2_Score
    disp('Team 1 won by: ')
    disp(team1_Score-team2_Score)
elseif team2_Score > team1_Score
    disp('Team 2 won by: ')
    disp(team2_Score-team1_Score)
else
    disp('It was a tie in regulation! Goals scored: ')
    disp(team1_Score)
end
        
