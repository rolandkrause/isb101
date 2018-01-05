# number of letter grades (A - E)
.ng <- 5
# max number of students/group
.gmax <- 8

### column headers are values, not variable names

set.seed(1234)
students <- data.frame(
  grade = LETTERS[1:.ng],
  male = sample(0:.gmax, .ng, replace = TRUE),
  female = sample(0:.gmax, .ng, replace = TRUE)
)

### multiple variables are stored in one column

set.seed(1211)
students2 <- data.frame(
  grade = LETTERS[1:.ng],
  male_1 = sample(0:.gmax, .ng, replace = TRUE),
  female_1 = sample(0:.gmax, .ng, replace = TRUE),
  male_2 = sample(0:.gmax, .ng, replace = TRUE),
  female_2 = sample(0:.gmax, .ng, replace = TRUE)
)

### variables are stored in both rows and columns

# set.seed(67)
# students3 <- data.frame(
#   grade = rep(LETTERS[1:.ng], each = 2),
#   pm = rep(c("+", "-"), .ng),
#   male = sample(0:.gmax, .ng * 2, replace = TRUE),
#   female = sample(0:.gmax, .ng * 2, replace = TRUE)
# )

# set.seed(23442)
# students3 <- data.frame(
#   name = rep(c("Sally", "Jeff", "Roger", "Karen", "Brian"), each = 2),
#   class = rep(c(1, 2), 5),
#   instr = sample(LETTERS[1:.ng], 10, replace = TRUE),
#   assist = sample(LETTERS[1:.ng], 10, replace = TRUE)
# )

# set.seed(23442)
# students3 <- data.frame(
#   name = rep(c("Sally", "Jeff", "Roger", "Karen", "Brian"), each = 2),
#   class = rep(c(1, 2), 5),
#   instr = sample(LETTERS[1:.ng], 10, replace = TRUE),
#   assist = sample(LETTERS[1:.ng], 10, replace = TRUE)
# )

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.lesson_path <- file.path(.get_course_path(),
                          'isb101',
                          'Tidying_Data_with_tidyr_part1')

.path2s3 <- file.path(.lesson_path, 'students3.csv')
students3 <- read.csv(.path2s3, na.strings = "", stringsAsFactors = FALSE)


