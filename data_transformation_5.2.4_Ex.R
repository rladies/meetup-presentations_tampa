#1 FIND ALL FLIGHTS THAT:
#   1. Had an arrival delay of two or more hours
#   2. Flew to Houston (IAH or HOU)
#   3. Were operated by United, American, or Delta
#   4. Departed in summer (July, August, and September)
#   5. Arrived more than two hours late, but didn't leave late
#   6. Were delayed by at least an hour, but made up over 30 minutes in flight
#   7. Departed betweenmidnight and 6am (inclusive)

#2.Another useful dplyr filtering helper is between(). What does it do? 
#  can you use it to simplify the code needed to answer the previous # 
#  challenges?

#3.How many flights have a missing dep_time? 
#  What other variables are missing? What might these rows represent?

#4.Why is NA ^ 0 not missing? why is NA | TRUE not missing? 
#  Why is FALSE & NA not missing? Can you figure out the general rule?
