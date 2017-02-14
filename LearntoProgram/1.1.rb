#Write a program that tells you: A) How many hours in a year B) minutes in a decade C) age in seconds D) authors age 

minute = 60 #seconds 
hour = 60 #minutes
day = 24 #hours
year = 365 #days  
leap_year_day_in_s = 60 * 60 * 24 
decade = 10 #years

hours_yr = year * day 

minutes_dec = decade * year * day * hour 

my_age = 23 * year * day * hour * minute

author_age = 1_111_000_000 / minute / hour / day / year 
