function [I] = Simpson_Virk(x,y)
%
% Harvinder Singh Virk, MECH-105, Last Edited - 4-APR-2018, Time: 5:44 PM.
% 
%
%
%
tic

if length(x) ~= length(y)
    error('Lengths are not equal')   
end
 diffev  = diff(x);
 if max(diffev)- min(diffev)~= 0
     error('The values should be evenly spaced in order to make Simpsons 1/3 rule work')
 end
 k = length(x); % creating the array 
 % checking for the even and odd number
 odd = round(k/2);
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







