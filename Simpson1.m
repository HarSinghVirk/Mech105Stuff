function [I] = Simpson1(x,y)
%
% Harvinder Singh Virk, MECH-105, Last Edited - 4-APR-2018, Time: 5:44 PM.
%
%
tic
if length(x) ~= length(y)
    error('Lengths are not equal')   
end
diffev  = diff(x);
 if min(diffev)- max(diffev)>= 10^(-15)
     error('The values should be evenly spaced in order to make Simpsons 1/3 rule work')
 end
 s = length(x);
 d = (x(s-1)-x(1));
 y1 = y(1);
 y4 = y(s-1);
 oddind = 2:2:(s-1);
 y2 = 4*sum(y(oddind));
 evenind = 3:2:(s-2);
 y3 = 2*sum(y(evenind));
 Ur = d*(y1+y2+y3+y4)/(3*(s-2));
 R = (y(s)+y(s-1))/(2*(x(s)-(x(s-1))));
 I = Ur + R;
 toc
end

 
 