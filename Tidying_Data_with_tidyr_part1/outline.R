# gather	Gather columns into key-value pairs.
# separate	Separate one column into multiple columns.
# spread	Spread a key-value pair across multiple columns.
# spread_	Standard-evaluation version of 'spread'.

library(readr)
library(tidyr)

# column headers are values, not variable names

?gather
gather(students, sex, count, -grade)

# multiple variables are stored in one column


# variables are stored in both rows and columns

students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE)

# res2 <- students3 %>%
#   gather(class, grade, class1:class5, na.rm = TRUE) %>%
#   mutate(class = parse_numeric(class)) %>%
#   select(name, class, test, grade) %>%
#   arrange(name, class)

# res2 %>% spread(test, grade)

students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade)
