function [I] = Simpson(x,y)
%
% Harvinder Singh Virk, MECH-105, Last Edited - 8-APR-2018, Time: 09:50 PM.
% *********************************************************************************
% { Simpson's 1/3 rule is an extension of Trapezoidal rule where the
% integrand is approximated by a second order polynomial. The trapezoidal rule was based on approximating the integrand by a first order polynomial, and then integrating the polynomial over interval of integration.}
% Numerically evaluates the integral of the vector of function values y
% with respect to x.
% *********************************************************************************
% Input:
% x - Values of x-dimension.
% y - The function which is being evaluated.
% ----------------------------------------------------------------------------------
% Output:
% I - Integral of the function over the x and y limit.
% ----------------------------------------------------------------------------------
tic
% Lenghts shouldn't be equal for x and y.
if length(x) ~= length(y) 
    error('Lengths are not equal')   
end
% Checking for the equal spacing for an array using diff function.It calculates differences between adjacent elements of X along 
.... the first array dimension whose size does not equal 1.
 
diffev  = diff(x);
 if min(diffev)- max(diffev)>= 10^(-15)
     error('The values should be evenly spaced in order to make Simpsons 1/3 rule work')
 elseif min(diffev) <= 0
     error('The values are not in order/sequence. The difference between them is negative.')
 end
 % Creating the Largest array dimension in X.
 k = length(x); % creating the array 
 % checking for the even and odd number
 odd = round(k/2);
 % Initializing the value.
 I = 0; 
 if  (k/2) == odd 
     disp('Trapezoid rule is used to evaluate the last interval') % Displaying the warning that trapezoid rule is used to calculate last interval.
% Integrating using Simposn's 1/3 rule. The numbers are odd then adding the trapezoid rule for the last interval.   
     for numb = 1:2:(k-3) 
         onethirdrule = (x(numb+2)-x(numb))*(y(numb)+4*y(numb+1)+y(numb+2))/6; % Simpson's 1/3 rule for integration.
         I = onethirdrule + I; % Adding previous answer eveytime the loop will run.
     end
     I = I+(x(k)-x(k-1))*(y(k)+y(k-1))/2; % Adding the trapezoid rule for the last interval.
 else
% Intergrating even numbers using Simpson's 1/3 rule.
     for numb = 1:2:(k-2)
        onethirdrule = (x(numb+2)-x(numb))*(y(numb)+4*y(numb+1)+y(numb+2))/6; % Simpson's 1/3 rule for integration.
        I = onethirdrule + I; % Adding previous answer eveytime the loop will run.
     end
 end
 toc
end







