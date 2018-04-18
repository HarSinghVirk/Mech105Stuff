%% Harvinder Singh Virk
% Mech-105
% Homework-2

%% Problem 1
clear
clc

%Part 1:
q0 = 10; % Given value of intial charge.
R = 60; % given resistnace of the circuit.
L = 9; % given inductance of the circuit.
C = 0.00005; % given capacitance.
t = linspace(0,0.8,100)  % time range between 0 to 0.5. There 100 is the number of points.
q = q0*exp(-R*t/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L)).^(2)).*(t)) % Given Forumla to calculate the charge on the capcitor.
subplot(2,1,1) % creating the subplot with normal capacitance.
plot(t,q) % plotting the graph of time vs the charge on the capcitor.
xlabel('time') % labelling the x-axis.
ylabel('charge on the capacitor')% labelling the y-axis.
title('charge of the capacitor over the period of time') % Giving title to the graph.

%Part 2:
C = 0.0005; % given capacitance.
q = q0*exp(-R*t/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L)).^(2)).*(t))
subplot(2,1,2) % creating the subplot with 10 times greater capacitance.
plot(t,q) % plotting the graph with new capacitance.
xlabel('time')
ylabel('charge on the capacitor')
title('When capacitance is increased 10 times')

%Part 3:
%{
 The frequency will lower down when capacitance is increased. The frequency is determined by the square root term in the equation. As the value of square root term decreased the frequency decreased.    
%}

%% Problem 2
clear
clc

t1 = [10 20 30 40 50 60]; % Data sample from the problem.
c = [3.4 2.6 1.6 1.3 1.0 0.5]; % sample data given in the problem.
t = linspace(0,70,8); % Generate 8 points between 0 and 70.
C = 4.84*exp(-0.034*t)
figure 
plot(t1,c,'rdiamond',t,C,'g--') % plotting both the graphs. Using red color and diamond shape for sample and green color and dashed lines for the calculated data.
title('Photodegradation of aqueous bromine over time')
xlabel('time (min)') % labelling x-axis as time.
ylabel('concentration (ppm)') % labelling y-axis as the concentration (ppm) given in data table.
legend('sample','calculated data') % creating the legend to recognize different plots.

