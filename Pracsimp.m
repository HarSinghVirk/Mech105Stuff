function [I] = Pracsimp(x,y)
%
% Harvinder Singh Virk, MECH-105, Last Edited - 6-APR-2018, Time: 2:05 PM.
% 
%
%
%
tic
% Lenghts shouldn't be equal for x and y.
if length(x) ~= length(y) 
    error('Lengths are not equal')  
elseif isnan ~= x
    error('Elemts in array are NaN')
end
% Checking for the equal spacing for an array using diff function.It calculates differences between adjacent elements of X along 
.... the first array dimension whose size does not equal 1.
 
diffev  = diff(x);
 if min(diffev)- max(diffev)>= 10^(-15)
     error('The values should be evenly spaced in order to make Simpsons 1/3 rule work')
 else
     sort(diff(x))
 end
 
 k = length(x); % creating the array 
 % checking for the even and odd number
 odd = round(k/2);
 % Initializing the value.
 I = 0; 
 if  (k/2) == odd
     disp('trapezoid rule is used to evaluate the last interval')
     for numb = 1:2:(k-3) 
         onethirdrule = (x(numb+2)-x(numb))*(y(numb)+4*y(numb+1)+y(numb+2))/6;
         I = onethirdrule + I;
     end
     I = I+(x(k)-x(k-1))*(y(k)+y(k-1))/2;
 else
     for numb = 1:2:(k-2)
        onethirdrule = (x(numb+2)-x(numb))*(y(numb)+4*y(numb+1)+y(numb+2))/6;
        I = onethirdrule + I;
     end
 end
 toc
end










