#https://r4ds.had.co.nz/transform.html
#link to book^

install.packages("nycflights13") #download package
install.packages("tidyverse") #download package

#download package
#5.1.1 PREREQUISITES
library(nycflights13) #make package available
library(tidyverse) #make package available
#######################################################################
#5.1.2 NYCFLIGHTS13
nycflights13::flights #to explore the dataframe/tibble

?flights #view description

view(flights) #to see the whole dataset in viewer
#######################################################################
#5.1.3 DPLYR BASICS
#fiter, arrange, select, mutate, summarise. 
#Can use all with group_by

#5.2 FILTER WITH ROWS
filter(flights, month == 1, day == 1)#for a subset of observations

jan1 <- filter(flights, month == 1, day == 1) #TO save result

(dec25 <- filter(flights, month == 12, day == 25))
#to save and print results at the same time)
######################################################################
#5.2.1 COMPARISONS
filter(flights, month = 1) #need to use == instead of =

filter(flights, month == 1) #correct way
sqrt(2) ^ 2 == 2 #floating number problem

1/49 * 49 == 1 #floating number problem

near(sqrt(2) ^ 2, 2) #use near to fix floating number problem

near (1/49 * 49, 1)
######################################################################
#5.2.2 LOGICAL OPERATORS
filter(flights, month == 11 | month == 12) #finds flights in nov OR dec

nov_dec <- filter(flights, month %in% c(11, 12)) # x %in% y  shortcut
#refer to De Morgan's law (set theory)
nov_dec #to see results

#the following 2 filters will give you the same result

filter(flights, !(arr_delay > 120 | dep_delay > 120))

filter(flights, arr_delay <=120, dep_delay <= 120)
#######################################################################
#5.2.3 MISSING VALUES
NA > 5

10 == NA

NA + 10

NA / 2

NA == NA

x <- NA #x is Mary's age. 

y <- NA #y is John's age.

x == y #are they the same age

is.na(x) #to find missing values #missing values not included in fu=ilter()

df <- tibble(x = c(1, NA, 3)) #must explicitly include missing values

filter(df, x > 1)

filter(df, is.na(x) | x > 1)
#######################################################################

#5.3 ARRANGE ROWS WITH arrange()
arrange(flights, year, month, day) #order df by year month day

arrange(flights, desc(dep_delay)) #order by dep_delay descending values

df <- tibble(x = c(5, 2, NA)) #missing values always sorted at the end
arrange(df, x)
arrange(df, desc(x))
########################################################################

#5.4 SELECT COLUMNS WITH select()
select(flights, year, month, day) #subset of selected variables
select(flights, year:day) #selects columns between year and day
select(flights, -(year:day)) #selects all columns except from year to day

rename(flights, tail_num = tailnum) #to rename variable tailnum -> tail_num

select(flights, time_hour, air_time, everything())#moves variables to start of dataframe


