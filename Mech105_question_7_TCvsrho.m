%%Question 7

TF = 32:3.6:93.2;%temperature ranging between 32 to 93.2 with a step size of 3.6
TC = 5/9*(TF-32);% converting the teperature from Fahrenheit to Celcius
rho = 5.5289e-8*TC.^3-8.5016e-6*TC.^2+6.5622e-5*TC+0.99987 % Finding the value for density by plugging values into this formula
plot(TC,rho) % Plotting the temperature in celcius vs density of water
xlabel('Temeparture in Celcius') % Labelling the x-axis
ylabel('Density of water') % Labelling the y-axis
title('Density of fresh water as function of temperature in celcius') % Title of the graph.