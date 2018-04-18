%%
clc
clear
if min(diff(x))>=0
    error('no negative number should be in the x-array')
end


x = [1 2 3 2 4];

d = diff(x)



