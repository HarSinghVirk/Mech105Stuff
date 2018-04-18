function [root,fx,ea,iter] = falsePositionpractice(func,Xl,Xu,es,maxiter)
% This function will give the roots of the funtion given
% - Inputs
%   func - function being evaluated
%   Xl - lower guess
%   Xu - upper guess
%   es - desired relative error (default = 0.0001%)
%   maxiter - number of iterations (default = 200)
%
% - Outputs
%   root - estimated root location
%   fx - function evaluated at the root location
%   ea - the approximate relative error (%)
%   iter - how many iterations were performed
%
% When running this function please use the format below for simplified
% answers
%   x=sym('x');
%   [root,fx,ea,iterations] = falsePositionpractice((function),Xl,Xu,es,maxiter)


syms x
func=symfun(func,x);
%% Correct # of variables
if nargin < 3
    error('problem with amount of variables')
end

if nargin == 3
    es=0.0001;
    maxiter=200;
end

if nargin == 4
    maxiter=200;
end

if nargin > 5
    error('problem with amount of variables')
end

%% Which interval

iter = 1; % starting iterations
ea = 1; % starting approximate error
while ea > es && iter < maxiter

root = Xu-(((func(Xu))*(Xl-Xu))/((func(Xl))-func(Xu))); % finds root

if func(Xu)*func(root) < 0 % determines new interval
    Xl = root;
elseif func(Xl)*func(root) < 0
    Xu = root1;
else
end 
    
root1 = root;
root = double(Xu-(((func(Xu))*(Xl-Xu))/((func(Xl))-func(Xu)))); % finds 2nd root
iter = iter+1; % calculate the amount of iterations
    
ea = double(((root-root1)/root)); % finds new approximate error
end
fx = func; % output function