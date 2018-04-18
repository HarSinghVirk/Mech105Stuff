%% Question 9
clear
clc

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

C = 0.0005 % given capacitance.
q = q0*exp(-R*t/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L)).^(2)).*(t))
subplot(2,1,2) % creating the subplot with 10 times greater capacitance.
plot(t,q) % plotting the graph with new capacitance.