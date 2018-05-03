function [t,y] = Heun(dydt,tspan,y0,h,es,maxit)
% Harvinder Singh Virk, MECH-105, Last Edited - 30-APR-2018, Time: 11:03 AM.
%********************************************
%{ Heun's method is based on the Euler's method. The Euler's method is not accurate. This method works on two equations called predictor and corrector. The predictor predicts the value and corrector tries to correct it by estimating the value. The first value slope left is always calculated by plugging values into the equation. The finding new y by plugging it into the predictor equation and then finding the slope right using the same y value but increasing the value of t according to the stepsize. The the slope right and left are averaged and multiplied by 0.5. y initial is add to that value. This is our corrector equation.
%}
% *******************************************
% Inputs:
% dydt - Differential Equation.
% tspan - The range of values of t.
% y0 - The initial value of y or initial condition to start. 
% h - Step Size.
% es - Estimated error.
% maxit - Maximum number of iterations.
% *******************************************
% Outputs:
% t - t-variable.
% y - y-variable.
% *******************************************
% Checking for errors using if statement.
tic
if nargin < 4 || nargin > 6
    error('Atleast four arguements') % This error will pop up if user will put less than 4 arguements/inputs.
elseif nargin == 4 % If user didn't describe what is the estimated error and maximum iteration. These values are default for that case. 
    es = 0.001; % Error is 0.1% 
    maxit = 50; % Maximum iterations.
elseif nargin == 5 
    maxit = 50; 
elseif any(diff(tspan) <= 0) 
    error('tspan is not in asending order') % This error pops up if the given tspan is not in ascending order.
end
if h < 0
    h = abs(h); % Making the value of h greater than zero.
end
if tspan(1) > tspan(2) % Checking if user inputs the values wrong means if they enter [-2 -10] or [-10 -2] this will overcome that problem.
    dumvar = tspan(1); % Saving as a dummy variable.
    tspan(1) = tspan(2); % Swapping the first value of tspan and second value of tspan.
    tspan(2) = dumvar; % Storing second value of tspan.
end
t = tspan(1):h:tspan(2); % Generating values of t using the step size provided by the user.
% { This if statement is used to overcome the problem if the step-size is not spaced properly for the last interval. Example: if tspan = [0 2.1] and h = 0.5. This will make the even step size such as [0 0.5 1 1.5 2]. But now we have 2.1 as the next term. It will simply add 2.1 at the end of the array. %}   
if (t(length(t)) ~= tspan(2))
    t = [t tspan(end)];
end
h = diff(t); % Checking if the spacing between the t values is according to the step size(h).
y = ones(1,length(t))*y0; % Creating the y array.
for i = 1:length(t)-1  
    Slopeest = dydt(t(i),y(i)); % Finding the slope estimate.
    ynew = y(i) + (Slopeest)*h(i); % Finding the y value using the estimated slope. This formula also known as Predictor equation.
    for j = 1:maxit 
       yold = ynew; % Stating that ynew is our yold now. This value will be used to calculate new y.
       Snew = dydt(t(i+1),yold); % Calculating the slope using the same t value but using our yold value.
       ynew = y(i) + 0.5*h(i)*(Slopeest+Snew); % Using the predictor formula to find the new y value.
       ea = ((abs(ynew - yold))/(abs(ynew)))*100; % Checking for the approximated error (ea). 
        if ea <= es   % If the approximated error(ea) is less than estimated error(es). Then it will break the loop using break command.  
            break
        end
    end
    y(i+1) = ynew; % Saving y value after the iterations are completed.
end
plot(t,y) % Plotting the graph of t and y values after the function evaluated.
xlabel('t') % Naming the x-axis.
ylabel('y') % Naming the y-axis.
title('Heun''s Method: Finding the Slope') % Giving an appropriate title to the graph.
toc
end



        
        
        
