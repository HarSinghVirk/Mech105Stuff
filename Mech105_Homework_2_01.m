%% Harvinder Singh Virk
% Homework-7
% Date: 4-FEB-2018
% Question-2
clear
clc
close all

% Intializong the variabales.
error = 1; % Setting the value of epsilon to 0, So, matlab won't think that it's zero.
while (0 + error) > 0 && error ~= 0 % The conditions are implemented because we don't want a number beyond this range and run the loop to infinity.
    errorold = error; % Storing the old error before multiplying with 0.5.
   
    error = error * 0.5; % Multiplying the stored error with 0.5 to get the new value.
end
maxerror = errorold % displaying the maximum error after running the while loop again and again.