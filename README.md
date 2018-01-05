ISB101 swirl
================

Getting and Cleaning Data
-------------------------

This repository contains a modified version of the swirl lesson available on [github](https://github.com/swirldev/swirl_courses).

### Tidying Data with tidyr

-   The original lesson in *Getting and Cleaning Data* found on [Github](https://github.com/swirldev/swirl_courses) was split into two parts to start with a lesson without any dplyr knowledge. The second part includes the remaining questions which are using dplyr and readr too.
-   Part 3 adapts [Hadley Wickham's](https://blog.rstudio.com/2016/02/02/tidyr-0-4-0/) example on how to use `complete()` and the helper `nesting()` (experiment dataset).

### Manipulating Data with dplyr

-   Adapts the original lesson in *Getting and Cleaning Data* found on [Github](https://github.com/swirldev/swirl_courses) to use `readr::read_csv()` instead of `read.csv()`.
-   Removed the row number column from `2014-07-08.csv` and replaced the `X` column by `date` in the questions.
-   Changed calls from `summarize()` to `summarise()`.
-   Introduced the same tweak as in the [*R Programming E* lesson](%60https://github.com/swirldev/R_Programming_E%60) to send an email at the end of the lesson.
