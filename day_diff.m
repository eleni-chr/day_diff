function dd = day_diff(month1,day1,month2,day2)

% The function takes four scalar positive integer inputs. These represent
% the birthdays of two children who were born in 2015. The function returns
% a positive integer scalar that is equal to the difference between the
% ages of the two children in days. If any of the input is invalid, it
% returns -1. An example call to the function would be
% dd=day_diff(1,30,2,1) which would make dd equal 2.

if month1>month2 | (month1==month2 && day1>day2)
    monthtemp=month1;
    month1=month2;
    month2=monthtemp;
    daytemp=day1;
    day1=day2;
    day2=daytemp;
end
months30 = [2 4 6 9 11];
days = [31 28 31 30 31 30 31 31 30 31 30 31];
if rem(month1,1)~=0 | ~isscalar(month1) | month1<1 | month1>12 ...
        | rem(month2,1)~=0 | ~isscalar(month2) | month2<1 | month2>12 ...
        | rem(day1,1)~=0 | ~isscalar(day1) | day1<1 ...
        | rem(day2,1)~=0 | ~isscalar(day2) | day2<1 ...
        | (month1==2 && day1>28) | (month2==2 && day2>28) ...
        | (ismember(month1,months30) && day1>30) | (ismember(month2,months30) && day2>30) ...
        | day1>31 | day2>31
    dd=-1;
else
    if month1==month2
        dd = day2 - day1;
    end
    if month1~=month2
        days1 = days(month1);
        days2 = days(month2);
        d1 = days1-day1;
        d2 = day2;
        months = month2-month1;
        dd = d1 + d2;
        if 2>month1 && 2<month2
            dd = dd + days(2);
        end
        if 3>month1 && 3<month2
            dd = dd + days(3);
        end
        if 4>month1 && 4<month2
            dd = dd + days(4);
        end
        if 5>month1 && 5<month2
            dd = dd + days(5);
        end
        if 6>month1 && 6<month2
            dd = dd + days(6);
        end
        if 7>month1 && 7<month2
            dd = dd + days(7);
        end
        if 8>month1 && 8<month2
            dd = dd + days(8);
        end
        if 9>month1 && 9<month2
            dd = dd + days(9);
        end
        if 10>month1 && 10<month2
            dd = dd + days(10);
        end
        if 11>month1 && 11<month2
            dd = dd + days(11);
        end
    end
end
end