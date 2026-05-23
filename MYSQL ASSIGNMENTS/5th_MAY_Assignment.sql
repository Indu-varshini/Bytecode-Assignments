/*
Format	Description
%a	Abbreviated weekday name (Sun to Sat)
%b	Abbreviated month name (Jan to Dec)
%c	Numeric month name (0 to 12)
%D	Day of the month as a numeric value, followed by suffix (1st, 2nd, 3rd, ...)
%d	Day of the month as a numeric value (01 to 31)
%e	Day of the month as a numeric value (0 to 31)
%f	Microseconds (000000 to 999999)
%H	Hour (00 to 23)
%h	Hour (00 to 12)
%I	Hour (00 to 12)
%i	Minutes (00 to 59)
%j	Day of the year (001 to 366)
%k	Hour (0 to 23)
%l	Hour (1 to 12)
%M	Month name in full (January to December)
%m	Month name as a numeric value (00 to 12)
%p	AM or PM
%r	Time in 12 hour AM or PM format (hh:mm:ss AM/PM)
%S	Seconds (00 to 59)
%s	Seconds (00 to 59)
%T	Time in 24 hour format (hh:mm:ss)
%U	Week where Sunday is the first day of the week (00 to 53)
%u	Week where Monday is the first day of the week (00 to 53)
%V	Week where Sunday is the first day of the week (01 to 53). Used with %X
%v	Week where Monday is the first day of the week (01 to 53). Used with %x
%W	Weekday name in full (Sunday to Saturday)
%w	Day of the week where Sunday=0 and Saturday=6
%X	Year for the week where Sunday is the first day of the week. Used with %V
%x	Year for the week where Monday is the first day of the week. Used with %v
%Y	Year as a numeric, 4-digit value
%y	Year as a numeric, 2-digit value
*/

SELECT order_date,
                date_format(order_date,"%a") as short_dayname,
				date_format(order_date,"%b") as short_monthname,
                date_format(order_date,"%c") as numeric_month,
                date_format(order_date,"%D") as day_month_numeric,
                date_format(order_date,"%d") as day_month_numeric,
                date_format(order_date,"%e") as day_month_numeric,
                date_format(order_date,"%f") as microseconds,
                date_format(order_date,"%H") as 24_hours,
                date_format(order_date,"%h") as 12_hours,
                date_format(order_date,"%I") as minutes,
                date_format(order_date,"%i") as minutes,
                date_format(order_date,"%j") as day_of_year,
                date_format(order_date,"%k") as hours,
                date_format(order_date,"%l") as hours,
                date_format(order_date,"%M") as full_monthname,
                date_format(order_date,"%m") as numeric_monthname,
                date_format(order_date,"%p") as AM_or_PM,
                date_format(order_date,"%r") as time_12hrs_format_AM_or_PM,
                date_format(order_date,"%S") as seconds,
                date_format(order_date,"%s") as seconds,
                date_format(order_date,"%T") as Time_24hrs,
                date_format(order_date,"%U") as Week_sunday_1st,
                date_format(order_date,"%u") as Week_monday_1st,
                date_format(order_date,"%V") as Week_sunday_1st_with_V,
                date_format(order_date,"%v") as Week_monday_1st_with_v,
                date_format(order_date,"%W") as full_weekday_name,
                date_format(order_date,"%w") as day_of_week_sunday_0,
                date_format(order_date,"%X") as year_of_week_sunday_1st,
                date_format(order_date,"%x") as year_of_week_monday_1st,
                date_format(order_date,"%Y") as year_numeric_4digit,
                date_format(order_date,"%y") as year_numeric_2digit
from date_data_orders;