%% Harvinder Singh Virk
% Mech-105
% Homework-3
%% Question 1
clear
clc

R = 46/2;
r = 25/2;
h = 0;

input('What is the h?');

if h > (14+19) || h < 0
    
    disp('error')

elseif h <= 19
    VolumeCyl = pi*(r^2)*h;
    
    
    
else 
    TotalVolume(cylinder,frustum)= VolumeCyl + Volume1(frustum)
    VolumeCyl + (pi/3)*h*(R^2 + r^2 + R*r);
end
   
    