% Ask the user to enter their birthdate
day = input('Enter your birth day: ');
month = input('Enter your birth month: ');
year = input('Enter your birth year: ');

% Define the dates for the start and end of each zodiac sign
zodiac_start_dates = [20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22];
zodiac_end_dates = [18, 20, 19, 20, 20, 22, 22, 22, 22, 21, 21, 19];

% Determine the number of days in February based on whether the year is a leap year
if mod(year, 4) == 0 && (mod(year, 100) ~= 0 || mod(year, 400) == 0)
    days_in_feb = 29;
else
    days_in_feb = 28;
end

% Determine the number of days in each month
days_in_months = [31, days_in_feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

% Determine the day number of the birthdate
if month == 1
    day_num = day;
else
    day_num = sum(days_in_months(1:(month-1))) + day;
end

% Determine the zodiac sign based on the day number
if day_num >= zodiac_start_dates(1) || day_num <= zodiac_end_dates(12)
    zodiac = "Capricorn";
else
    for i = 1:11
        if day_num >= zodiac_start_dates(i) && day_num <= zodiac_end_dates(i)
            zodiac = zodiac_signs(i);
            break;
        end
    end
end

% Display the zodiac sign
disp(['Your zodiac sign is: ' zodiac]);
