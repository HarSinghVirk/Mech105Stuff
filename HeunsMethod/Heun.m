function [t,y] = Heun(dydt,tspan,y0,h,es,maxit)
% Harvinder Singh Virk, MECH-105, Last Edited - 26-APR-2018, Time: 11:30 PM.
%********************************************
% { }
% *******************************************
% Inputs:
% dydt - Differential Equation.
% tspan - The range of valyes of t.
% y0 - The inital value of y or intial condition to start. 
% h = Step Size.
% es - Estimated error.
% maxit - Maximum number of iterations.
% *******************************************
% Outputs:
% t - t-variable.
% y - y-variable.
% *******************************************
% Checking for errors using if statement.
tic
if nargin < 4
    error('Atleast four arguements') % This error will pop up if user will put less than 4 arguements/inputs.
elseif nargin == 4 % If user didn't describe what is the estimated error and maximum iteration. These values are default for that case. 
    es = 0.001; % Error is 0.1% 
    maxit = 50;
elseif any(diff(tspan) <= 0) 
    error('tspan is not in asending order') % This error pops up if the given tspan is not in ascending order.
end
t = [tspan(1):h:tspan(2)]; % Generating values of t using the step size provided by the user.
% { This if statement is used to overcome the problem if the stepsize is not spaced properly for the last interval. 
% Example: if tspan = [0 2.1] and h = 0.5. This will make the even step
% size such as [0 0.5 1 1.5 2]. But now we have 2.1 as the next term. It will simply add 2.1 at the end of the array.   
if t(end) ~= tspan(2)
    t = [t tspan(end)];
end
h = diff(t); % Checking if the spacing between the t values is according to the step size(h).
y = ones(1,length(t))*y0; % Creating the y array.
for i = 1:length(t)-1  
    Slopeest = dydt(t(i),y(i)); % Finding the slope estimate.
    ynew = y(i) + (Slopeest)*h(i); % Finding the y value using the estimated slope. This formula also known as Predictor equation.
    for j = 1:maxit 
       yold = ynew; % Stating that ynew is our yold now.
       Snew = dydt(t(i+1),yold); % Calculating the slope using the same t value but using our yold value.
       ynew = y(i) + 0.5*h(i)*(Slopeest+Snew); % Using the predictor formula to find the new y value.
       ea = ((abs(ynew - yold))/(abs(ynew)))*100; % Checking for the approximated error (ea). 
        if ea <= es   % If the approximated error(ea) is less than estimated error(es). Then it will break the loop using break command.  
            break
        end
    end
    y(i+1) = ynew; % Saving our y value after the iterations are completed.
end
plot(t,y) % Plotting the graph of t and y values after the function evaluated.
xlabel('t') % Naming the x-axis.
ylabel('y') % Naming the y-axis.
title('Heun''s Method: Finding the Slope') % Giving an appropriate title to the graph.
toc
end



        
        
        