library(dplyr)

# number of letter grades (A - E)
.ng <- 5
# max number of students/group
.gmax <- 8

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.lesson_path <- file.path(.get_course_path(),
                          'isb101',
                          'Tidying_Data_with_tidyr_part2')

.path2s3 <- file.path(.lesson_path, 'students3.csv')
students3 <- read.csv(.path2s3, na.strings = "", stringsAsFactors = FALSE)

### multiple types of observational units are stored in the same table

# set.seed(23442)
# students4 <- data.frame(
#   id = rep(sample(101:999, 5), each = 2),
#   name = rep(c("Sally", "Jeff", "Roger", "Karen", "Brian"), each = 2),
#   sex = rep(c("F", "M", "M", "F", "M"), each = 2),
#   class = rep(c(1, 2), 5),
#   grade = sample(LETTERS[1:.ng], 10, replace = TRUE)
# )

.path2s4 <- file.path(.lesson_path, 'students4.csv')
students4 <- read.csv(.path2s4, stringsAsFactors = FALSE)

### a single observational unit is stored in multiple tables

passed <- students4 %>%
  select(name, class, final) %>%
  filter(final == "A" | final == "B")
failed <- students4 %>%
  select(name, class, final) %>%
  filter(final == "C" | final == "D" | final == "E")

### real data examples

.path2sat <- file.path(.lesson_path, 'sat13.csv')
sat <- tbl_df(read.csv(.path2sat, stringsAsFactors = FALSE))

