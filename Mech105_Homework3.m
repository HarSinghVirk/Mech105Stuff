%% Harvinder Singh Virk
% Mech-105
% Homework-3
%% Question 1
clear
clc
close all

h = input('Please enter the h in meters?'); % Asking to enter the height in meters.


if h > (14+19) || h < 0 % Setting the limit for height between 0m and 33m. 
   error('Height exceeded the limit') % If height exceeds this funtion will show error in command window.
   
elseif h <= 19 % Calculating volume if height is between 0m and 19m.
    VolumeCyl = pi*(12.5^2)*h; % Formula to solve volume of the cylinder.
    disp(['VolumeCyl(m^3):' num2str(VolumeCyl)]) % Displaying volume after calculating at the chosen height with units(m^3). 
    
else 
    rh = 12.5 + 10.5*(h-19)/14; % Dividing the top right and left side of the frustum into triangle and calculating the hypotenuse which is the slope/length of the slant height.
    Vol = pi*12.5^2*19 + pi*(h-19)*(12.5^2 + rh^2 + 12.5*rh)/3; % Adding the volume of the cylinder at 19m and the volume of frustum with different height.
    disp(['Volume of cylinder and frustum (m^3):' num2str(Vol)]) % Displaying the total volume with selected height and units.
    
end
   

