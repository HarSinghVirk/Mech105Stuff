%% Question 10
clear
clc

z = linspace(-5,5,100) % the value of z between -5 to 5 and 100 is the number of points.
f = 1/sqrt(2*pi)*exp(-z.^(2)/2) % the formula to calculate the frequency.
plot(z,f) % plotting the z and the frequency.
xlabel('z') % labelling the abscissa.
ylabel('frequency') %labelling the ordinate.
title('probability density') % Giving the title to the graph.