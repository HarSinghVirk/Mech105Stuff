%% Homework 5
%% Harvinder Singh Virk
% Homework 5
% Question 1 

function [D] = specialMatrix(n,m)
% Funtion returns the n x m matrix that follows the following criteria
% - value of each element in the first row is the number of the column. 
% - value of each element in the first column is the number of the row.% - rest of the elements each has a value equal to the sum of the element above it and element to the left.
% - The function must return a sensible error if the user does not input exactly two arguments.
% - The function should be well commented.
%
% Inputs:
% n = number of rows.
% m = number of columns.
%
%Outputs:
% [D] the function that gives the result for n x m matrix.

D = [];

tic % timer on to count how long it takes to calculate.
if nargin ~= 2 % If the values enter for the specialMatrix is less than 2 it will display the following error. 
    error('Function requires excatly two arguements');
end

for k = 1:n % making a nth row vector.
    for h = 1:m %creating a mth column vector
        if k == 1 % if the value of k is equal to 1 it will display value of h.
            D(k,h) = h;
        elseif h == 1 % if the value of h is equal to 1 it will display value of k.
            D(k,h) = k;
        else 
            D(k,h) = D(k,h-1)+ D(k-1,h); % This function is the summation of the matrix element above and the matrix element to the left of the current element. This is then stored in the specialMatrix array.
        end
    end
end
toc % Timer off
end

            