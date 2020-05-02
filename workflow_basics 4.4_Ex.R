#4.4 EXERCISES

#1. Why does this code not work?
my_variable <- 10
my_variable
#it appears to work??

#2. Tweak the R commands

library(tidyverse)
install.packages("tidyverse") #Downloads package 
library(tidyverse)

ggplot(dota = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)

filter(diamond, carat > 3)

#3. Press Alt + Shift + K. what happens?