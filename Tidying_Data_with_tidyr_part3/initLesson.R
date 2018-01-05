
# Example from Hadley Wickham. https://blog.rstudio.com/2016/02/02/tidyr-0-4-0/
set.seed(1801)

experiment <- data_frame(
  person = rep(c("Alex", "Robert", "Sam"), c(3, 2, 1)),
  treatment  = rep(c("a", "b", "a"), c(3, 2, 1)),
  replicate = c(1, 2, 3, 1, 2, 1),
  measurment_1 = runif(6),
  measurment_2 = runif(6)
)