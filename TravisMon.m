%Travis Montoya
%%
%VARIABLES
%pt=3atm
%K=0.05 (this value is the reaction's equilibrium constant)
pt=3;
K=0.05;
%%
%The goal of this equation is to find the mole fraction by of the water
%molecules that makes the molecule dissociate at 3 atmospheres of pressure
%with an equilibrium constant of 0.05.
f=@(x)(x/(1-x))*sqrt((2*pt)/(2+x))-K
%%
%This is the graphical representation and will be a helpful tool is
%estimating where the root could be without doing any computation.
fplot(f)
%%
%I used the false position function I established in a previous script to
%find the roots on the interval I determined by looking at the graph.
[root,ea,es,iter]=falsePosition(@(x) f(x),0,0.1)
%%
%This clearly showes the user of the code what they are finding in the end.
fprintf('The mole fraction of water that will dissociate is %3f/n',root)