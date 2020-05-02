#https://r4ds.had.co.nz/workflow-basics.html

#4.1 CODING BASICS

#R as a calculator
1 / 200 * 30
(59 + 73 + 2) / 3
sin(pi / 2)

#Create new objects
x <- 3 * 4 #shortcut alt + - for <-  
x # inspect object in console

#All R statements where you create objects, assignment statements, have the same form:
#object_name <- value
#######################################

#4.2 WHAT'S IN A NAME?
#Make another assignent
this_is_a_really_long_name <- 2.5

#create another assignment
this #use TAB shortcut
this #use CMD/CTL + up arrow to change value to 3.5

#make yet another assignment
r_rocks <- 2 ^ 3
r_rock #inspect it
R_rocks #try to inspect again
r_rocks #success
######################################
#4.3 CALLING FUNCTIONS
seq() #makes regular sequences of numbers

seq(1, 10)

x <- "hello world" #shows that closing #quotations marks are automatic

x <- 'hello #no closing quotation error-> +

#create an assignment
y <- seq(1, 10, length.out = 5)
y
#add () to above assignment to save a #step
#create an assignment
(y <- seq(1, 10, length.out = 5))
#look at environment to see results
#######################################
