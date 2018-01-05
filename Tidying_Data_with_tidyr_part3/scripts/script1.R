# Append and a function call and adjust an argument to the following:
#
# 1. Use gather() to switch from the wide format to the wide format
# and put all measurements into a single value column
#
# 2. Adjust the call to complete() to replace NA values by 0
#

experiment %>%
  gather( , , ) %>%
  complete(nesting(person, treatment), measurment, replicate, )

