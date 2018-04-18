%% Homework-10
% Harvinder Singh Virk, Mech-105, Date:22-FEB-2018,Last Edited: 7:49 PM.
format longe % Long Scientific notation. This will take less time to evaluate the code.
tic
p = 3; % The given atmospheric pressure.
k = 0.05;% Reaction's equilibrium constant.
f = @(x) (x./(1-x)).*sqrt((2*p)./(2+x))-k; % 
x = linspace(0,0.5); % Creating a row vector with 100 points between 0 and 0.5.
x0 = 0.05; % The first inital guess.
fzero(f,x0) % Tries to find point x where y=f(x) is zero. That's the root of the function.
root = fzero(f,x0); % Renaming fzero as root.
hold on % Hold to the current plot axes so that new plot won't change the axes.
plot(x,f(x)) % Plotting the function to show where the root exist.
refline(0,0) % Adding reference line at zero.
plot(root,f(root),'d') % Plotting the fzero and function of fzero.
xlabel('Mole Fraction') % Labeling the x-axis as Mole Fraction.
ylabel('Reaction equilbrium constant') % Labeling the y-axis as Reaction Equilibrium constant.
title('Splitting water into Hydrogen and Oxygen at certain temperature') % Giving an appropriate title.
toc


