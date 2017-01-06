source("http://bioconductor.org/biocLite.R")
packs <- c("TeachingDemos", "multtest", "biomaRt", 
           "reshape2", "ggplot2", "plyr", "xlsx", "vioplot")
biocLite(packs)

# examples of ggplot2

p <- ggplot(iris, aes(Sepal.Length, Sepal.Width) )
p + geom_point()
qplot(Sepal.Length, Sepal.Width, data = iris)

p + geom_point(aes(color = Species))

p + facet_grid(. ~ Species)
qplot(Sepal.Length, Sepal.Width, data = iris, color = Species, facets = . ~ Species)

# DNA

DNA <- rep(c("A","C","G","T"), 10)
table(DNA)
prop.table(table(DNA))


load(url("http://www-huber.embl.de/users/klaus/bodyfat.rda"))
attach(bodyfat)
## compute descriptive statistics for "age"
summary(age)
sd(age)
mean(age)
IQR(age)

## Boxplot  of age
boxplot(age, main = 'Age')

## Stripchart of age
stripchart(age, main = 'age', vertical = TRUE)

## Histogram of age
hist(age, breaks = 10, freq = NULL )

