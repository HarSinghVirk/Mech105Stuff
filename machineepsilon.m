function epsilon = machineepsilon
%***********************
% Homework-7
% Harvinder Singh Virk
% Mech-105
% Question-1
%***********************
% Machine epsilon ? can be thought of as the smallest number that when added to one gives a number greater than 1.
%
% Inputs:
% epsilon = 1.
% Using while loop to evaluate the function.
%
% Output:
% The function epsilon will generate result(2.2204e-16) once machineepsilon is  typed
% in the command window. 
epsilon1 = 1; % Setting epsilon equal to 1.
while (1) % Starting the while loop that while it's 1.
if (1 + epsilon1) <= 1 % The summation of 1 + epsilon is less than equal 1 than evalutae the function.
    break % This will terminate the execution of while loop. Statements in the loop after the break statement do not execute.
end
    
    epsilon1 = (epsilon1)/2; % If the number after summation was greater than one than it is divided by 2.
end
epsilon = 2*epsilon1; % The epsilon is calculated by using the following formula when all the above listed conditions are met.
