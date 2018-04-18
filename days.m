function nd = days(mo, da, leap)
%--------------------------
% Harvinder Singh Virk
% MECH-105
% Homework-4
%---------------------------
% This function determines the number of elapsed days in a year.
%
% Inputs:
% da = the day (1-31).
% mo = the month (1-12).
% leap = Enter 1 for leap year and 0 for non-leap year.
%
% Outputs:
% nd = number of elapsed days in a year.

% moarray = [1 2 3 4 5 6 7 8 9 10 11 12];
tic
dayarray = [31 28 31 30 31 30 31 31 30 31 30 31];

nd = 0; % Specifying that the number of days starting from zero.
if mo <=12 && mo >=1 % The range of the month between 1 to 12.
    if da <= 31 && da >= 1 % Number of days between 1 to 31.
        if mo == 2 % The month is second month of the year
            if (da <= (dayarray(mo)+leap)) % It will count the previous months days and add those to the entered date of second month.
                calcdays = 1; % It will calculate the number of days.
            else
                calcdays = 0; % It will give an error if it's not a leap year.
            end
        else
            if(da <= dayarray(mo)) % If the number of days aligns with the month. It will calculate it. Otherwise it won't calculate.
                calcdays = 1; % calculate if number of days align with the month.
            else
                calcdays = 0;% If they don't then print an error.
            end
        end
    else
        calcdays = 0; % if days are not in the range print an error.
    end
else
    calcdays = 0; % if month is not in the range print an error.
end

if (calcdays)
    for a = 1:mo-1 % Assigning value for months.
        switch a %  Block the tests each case until one of them is true.
            case {1, 3, 5, 7, 8, 10, 12} % Case contains all the months with 31 days in them.
                nofday = 31; % 31 days in a month
            case {4, 6, 9, 11} % the months in which there are 30 days.
                nofday = 30;
            case {2}
                nofday = leap + 28; % Feburary is the month with 28 days and it is also the leap month. So if somebody want to calculate the number of days in leap year they just need to write 1 for leap otherwise zero if they don't want too.
        end
        nd = nd + nofday;% the function will calculate value of nd and add that to the value of nofday added to the function accordingly.
    end
        nd = nd+da; % adding number of days of current month to the function.
else
    error('Something you entered is wrong. Double check and try again.')
    
end
toc