clc
clear
%--------------------------------------------------------------------------
pt = 3; % Initialized given value
K = 0.05; % Initialized given value
%--------------------------------------------------------------------------
f = @(x) (x./(1-x)).*sqrt((2*pt)./(2+x))-K; % Function
%--------------------------------------------------------------------------
fplot(f,[-5 5]) % First recognizing that this function does not
title('Well played Dr. B')
refline(0,0)
ylim([-5 5])
fzero(f,0) % Any function can be used so this is a fucntion
falsePosition(f,0.1,0.3) % Wanted to double check just in case.
%--------------------------------------------------------------------------
% Warning: Function behaves unexpectedly on array inputs. To improve
%  performance,
% properly vectorize your function to return an output with the same
%  size and
% shape as the input arguments.
% ans =
%  0.0282
% Undefined function 'falsePosition' for input arguments of type
%  'function_handle'.
% Error in MATLAB_Ungraded_HW10 (line 15)
% falsePosition(f,0.1,0.3) % Wanted to double check just in case.