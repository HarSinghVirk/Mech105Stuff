%% Harvinder Singh Virk
% Mech-105
% Homework 4

function nd = days(mo, da, leap)
nd = 0;
for m = 1 : mo-1
switch m
case {1, 3, 5, 7, 8, 10, 12}
nday = 31;
case {4, 6, 9, 11}
nday = 30;
case 2
nday = leap + 28;
end
nd = nd + nday;
end
nd = nd+da;
end


