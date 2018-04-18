%% Harvinder Singh Virk,
% Homework-105,
% Question - 1, 
clc
clear
close all

syms x
f(x) = (25*(x^3)) - (6*(x^2)) + (7*x) - 88; % The given polynomial function fortaylor series.
z(x) = (25*(x^3)) - (6*(x^2)) + (7*x) - 88; % This function is used to evaluate the by using the  x = 3.
xgiven = 3; % the given value which will give us the number that we will use as the true value.
basepoint = 1; % The number used to approximate the value. The xgiven and basepoint will give the difference/stepsize.
h = (xgiven - basepoint); % Subtracting both the numbers to get the stepsize which is "h".
givenvalue = z(xgiven); % Plugging the value 3 in z(x) to get the true value which is 554.
approx = 0; % Starting the approximation with zero.
errorpercent = zeros(basepoint,xgiven); % Making a zeros vector to place the percentage error after the loop runs.

for c = 0:3 % Creating an array of numbers from 0 to 3 with stepsize 1.
    fprime(x) = diff(f,x,c); % Differentiating the function everytime the loop runs to find the zeroth order, first order, second and third order derivative.
    approx = approx + ((fprime(basepoint))/factorial(c))*(h^c); % Adding the previous remainder to the next order derivative.
    evaluation = (abs((z(3) - approx))/(z(3)))*100; % Using the percent error formula to calculate the percent difference between the true value and the estimated value.
    errorpercent(c + 1) = evaluation; % Calculating the error for first, second and third order.
end
errorpercent
%% Question-2
clc
clear
close all

syms x f1 derivative
f1(x)= (25*(x^3)) - (6*(x^2)) + (7*x) - 88; % The given function
x1 = 2; % the given value of x.
derivative(x) = (75*(x^2)) - (12*x) + 7; % the first derivative of the function.
truevalue = derivative(2); % plugging in the value of x as 2 for getting the truevalue.
h1 = 0.25; % the stepsize id given 0.25.
xbackward = x1 - h1; % Subtracting the stepsize from the given x value for backward difference.
xforward = x1 + h1; % Addign the stepsize from the given x value for forward difference.
centered = 2 * h1; % Multipying h by 2 for the centered approximation.

forward_difference =double((f1(xforward)-f1(x1))/(h1)) % Calculating the forward difference.
backward_difference = double((f1(x1) - f1(xbackward) )/(h1))% Calculating the backward difference.
centered_difference = double((f1(xforward) - f1(xbackward))/(2*h1))% Calculating the centered difference.

% Percentage error:
estimate1 = double(((truevalue) - forward_difference)/(f1(x1))*100)% Calculating the percentage difference of the forward difference.
estimate2 = double(((truevalue) - backward_difference)/(f1(x1))*100)% Calculating the percentage difference of the backward difference.
estimate3 = double(((truevalue) - centered_difference)/(f1(x1))*100)% Calculating the percentage difference of the centered difference.

