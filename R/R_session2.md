<style>
.reveal code .r{
    width:120%
    font:0.8em}
.section .reveal .state-background {
    background: white;}
.section .reveal h1,
.section .reveal p {
    color: black;
    position: relative;
    top: 4%;}
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}
.small-code pre code {
  font-size: 1em;
}
</style>

Advanced introduction to R
========================================================
author: Ganna Androsova
date: 2015-01-06
font-family: 'Arial'

Working Directory
========================================================
- When we load/save datasets, load source files or save graphs we will need to specify the file path. To avoid typing the path every time we can specify a working directory.

- To set the working directory click File > Change dir... or type setwd(file path)

```r
getwd()
```

```
[1] "/Users/ganna.androsova/isb101/R"
```

If files are in different directory please indicate it with

```r
setwd("/Users/ganna.androsova/isb101/R")
```

Data import
========================================================
class:small-code
You can directly read your data table from a file located either on your computer: 


```r
taxon = read.table('taxon.txt')
```

or elsewhere in the web: 

```r
# url of taxon data
taxon_url = "http://www.bio.ic.ac.uk/research/mjcraw/therbook/data/taxon.txt"

# import data in R
taxon = read.table(taxon_url)

head(taxon)
```

```
    Petals Internode    Sepal    Bract  Petiole     Leaf    Fruit
1 5.621498  29.48060 2.462107 18.20341 11.27910 1.128033 7.876151
2 4.994617  28.36025 2.429321 17.65205 11.04084 1.197617 7.025416
3 4.767505  27.25432 2.570497 19.40838 10.49072 1.003808 7.817479
4 6.299446  25.92424 2.066051 18.37915 11.80182 1.614052 7.672492
5 6.489375  25.21131 2.901583 17.31305 10.12159 1.813333 7.758443
6 5.785868  25.52433 2.655643 17.07216 10.55816 1.955524 7.880880
```

Data import
========================================================
It’s important to remember of possibility to extend the power of the functions used - by playing with their arguments: 

**myDF = read.table(‘fileName.txt’, header = T, as.is = T)**

Data comes in different formats: txt, csv, xls, tab...
Not all data types are supported in R. 

To extend R capabilities install a required **package**.

                        TASK

We would like to work with excel file: import its content into R, analyse it, visualize results and write the file with results. 

Installation of R packages
========================================================

- List of the existing R packages is available at **Packages** tab at https://cran.r-project.org

To add packages type in console:
- install.packages("**PackageName**")

OR
- source("https://bioconductor.org/biocLite.R")
biocLite("**PackageName**")
- you may also download any package as a .zip and install it then by choosing in the R menu: **Packages** -> **Install package(s) from local .zip file** -> choosing the name of the file

Installation of R packages
========================================================
class:small-code
For working with excel file, we need package **"xlsReadWrite"**.


```r
source("https://bioconductor.org/biocLite.R")
biocLite("xlsx")
```
After you run these lines -> package is installed but not started.

```r
library(xlsx)
taxon = read.xlsx("taxon.xlsx", sheetIndex = 1)
head(taxon[, 1:6])
```

```
      Petals  Internode      Sepal      Bract    Petiole       Leaf
1 5621498349 2948059578 2462106579  182034091 1127909704 1128032999
2 4994616997 2836024706 2429320759 1765204912  110408378 1197616585
3 4767504884 2725431792 2570497375  194083846 1049072184 1003808444
4 6299445616  259242382 2066051345 1837915478 1180182252 1614051727
5 6489375001 2521130805 2901582763 1731304737 1012159001 1813333082
6   57858682 2552433147 2655642742 1707215724  105581605 1955524186
```

Control statements: conditions
========================================================
To check whether your data satisfy some particular condition, R has a structure:
**if (expression1) {  expression2 } else { expression3 }**

Here **expression1** must include logical operators and be evaluated to a single logical value (**TRUE** or **FALSE**).

If TRUE, then the **expression2** is executed.

If FALSE, then **expression3** is executed. The **expression3** may be either a single command, or a sequence of commands, or again a control statement, like if … else operator or a loop.

Control statements: conditions
========================================================
class:small-code
![](14.png)
***

```r
x = c(2,3,4,5)

if (all(x) == 0) { 
  x[length(x)+1] = 5
  print(x) 
} else { 
  x[length(x)+1] = 16 
  print(x) 
}
```

```
[1]  2  3  4  5 16
```

Repetitive execution: for loop
========================================================
If there’s a need in multiple execution of the same command or a sequence of commands, use statement:

**for (xxx in expression1) { expression2 }**

Here **xxx** is a loop variable; **expression1** is the sequence of instances, which **xxx** should run on and **expression2** is the (group of) command(s) to be executed.

**expression2** is repeatedly evaluated as xxx ranges through the values in the vector result of expression1.

Repetitive execution: for loop
========================================================
class:small-code
![](15.png)
***

```r
x = cbind(c(1, 2, 3, 4), c(5, 7, 8, 9))

for (ii in 1:nrow(x)){
  x[ii,] = 5
  print(x)
}
```

```
     [,1] [,2]
[1,]    5    5
[2,]    2    7
[3,]    3    8
[4,]    4    9
     [,1] [,2]
[1,]    5    5
[2,]    5    5
[3,]    3    8
[4,]    4    9
     [,1] [,2]
[1,]    5    5
[2,]    5    5
[3,]    5    5
[4,]    4    9
     [,1] [,2]
[1,]    5    5
[2,]    5    5
[3,]    5    5
[4,]    5    5
```

Other loops: repeat and while
========================================================
There exist other statements for repeated expressions: **repeat** expression and **while** (condition) expression.

The **break** statement can be used to terminate any loop, possibly abnormally. This is the only way to terminate **repeat** loops, usually by using **if…else…** statement to check if the desired condition is satisfied.

The **next** statement can be used to discontinue one particular cycle and skip to the “next” (this is more likely to be used in **for** and **while** loops)

Other loops: while and repeat
========================================================
class:small-code

```r
ii = 1 
while (ii <= nrow(x)) { 
  x[ii,] = 1
  ii = ii+1 
  print(x) 
}
```

```
     [,1] [,2]
[1,]    1    1
[2,]    5    5
[3,]    5    5
[4,]    5    5
     [,1] [,2]
[1,]    1    1
[2,]    1    1
[3,]    5    5
[4,]    5    5
     [,1] [,2]
[1,]    1    1
[2,]    1    1
[3,]    1    1
[4,]    5    5
     [,1] [,2]
[1,]    1    1
[2,]    1    1
[3,]    1    1
[4,]    1    1
```
***

```r
j = 1 
repeat { 
  x[, j] = 3
  print(x) 
  j = j+1 
  if (j>ncol(x)){
    break
  }
}
```

```
     [,1] [,2]
[1,]    3    1
[2,]    3    1
[3,]    3    1
[4,]    3    1
     [,1] [,2]
[1,]    3    3
[2,]    3    3
[3,]    3    3
[4,]    3    3
```

Working with file
========================================================
class:small-code

```r
#taxon
mean.values = c(1:ncol(taxon))
for(i in c(1:ncol(taxon))){
  mean.values[i] = log(mean(taxon[,i]))
}
plot(mean.values)
lines(mean.values)
axis(1, at=c(1:ncol(taxon)), labels=colnames(taxon))
```

<img src="R_session2-figure/unnamed-chunk-11-1.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" style="display: block; margin: auto;" />

Writing the results
========================================================
class:small-code
![](16.png)

```r
write.table(mean.values, file = "Log-transformed mean taxon.txt", quote = FALSE, sep = "\t")
```

Frequency distribution
========================================================
In statistics, a **frequency distribution** is a table that displays the frequency of various outcomes in a sample. Each entry in the table contains the frequency or count of the occurrences of values within a particular group or interval, and in this way, the table summarizes the distribution of values in the sample.

Let’s take an example of “**discoveries**” data set (type ?discoveries in your R console).

These are the **raw data** on the number of important inventions or discoveries made yearly from 1860 to 1959.

Frequency distribution
========================================================
class:small-code
Extract data on years 1869 to 1878:

```r
discoveries.per.year = discoveries[10:19]
discoveries.per.year
```

```
 [1] 1 2 1 2 1 3 3 3 5 2
```
During the mentioned 10 years there were 26 important discoveries; that having 5 discoveries per year happened only once and that one, two or three discoveries per year are much more frequent (3 times each).

Frequency distribution
========================================================
class:small-code
In R you can create the frequency distribution table using just one command: **table( )**.

This creates so-called **contingency table** which is the analog of the frequency distribution table:

```r
table(discoveries.per.year)
```

```
discoveries.per.year
1 2 3 5 
3 3 3 1 
```

Data visualization
========================================================
A plot is a visualization (graphical representation) of data, in which the data are coded by **symbols**, such as **dots**, **bars** in a bar chart, **lines** in a line chart, or **slices** in a pie chart.
![](5.png)

R has strong graphic capabilities!

How to create a graph in R?
========================================================
class:small-code
The basic function for plotting in R is **plot( )**. It opens a graph window and plots a graph there. Its results can be varied by changing the parameters (arguments) of the **plot( )** function:

```r
years = c(1:10)
discoveries_df = data.frame(years, discoveries.per.year)
plot(discoveries_df)
```

<img src="R_session2-figure/unnamed-chunk-15-1.png" title="plot of chunk unnamed-chunk-15" alt="plot of chunk unnamed-chunk-15" style="display: block; margin: auto;" />

How to create a graph in R?
========================================================
class:small-code


```r
par(mfrow=c(1,2))
plot(discoveries_df)
hist(discoveries.per.year, breaks = 10)
```

<img src="R_session2-figure/unnamed-chunk-16-1.png" title="plot of chunk unnamed-chunk-16" alt="plot of chunk unnamed-chunk-16" style="display: block; margin: auto;" />

How to create a graph in R?
========================================================
Let's improve the figure! (Check ?plot and ?hist)

Use the **pch=** option to specify symbols to use when plotting points. For symbols 21 through 25, specify border color (**col=**) and fill color (**bg=**).

![](6.png)

How to create a graph in R?
========================================================
class:small-code

```r
par(mfrow=c(1,2))
plot(discoveries_df, col = "blue", pch = 19, main = "Discoveries per year", xlab = "Years", ylab = "Number of discoveries")
hist(discoveries.per.year, breaks = 10, col = "green", main = "Frequency distribution of discoveries", xlab = "Discoveries per year")
```

<img src="R_session2-figure/unnamed-chunk-17-1.png" title="plot of chunk unnamed-chunk-17" alt="plot of chunk unnamed-chunk-17" style="display: block; margin: auto;" />

Plotting in R
========================================================
![](7.png)

Dot plots
========================================================
class:small-code
- **Dot plots** are created with function **dotchart(x, labels=)**, where x is a numeric vector and labels is a vector of labels for each point.
- You can add a **groups=** option to designate a factor specifying how the elements of x are grouped.
- Option **gcolor=** controls the color of the groups label.


```r
par(mfrow=c(1,2))
# Simple Dotplot
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,main="Gas Milage for Car Models",xlab="Miles Per Gallon")

# Dotplot: Grouped Sorted and Colored
x <- mtcars[order(mtcars$mpg),] # sort by mpg
x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"  
dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,main="Gas Milage for Car Models\ngrouped by cylinder",xlab="Miles Per Gallon", gcolor="black", color=x$color)
```

<img src="R_session2-figure/unnamed-chunk-18-1.png" title="plot of chunk unnamed-chunk-18" alt="plot of chunk unnamed-chunk-18" style="display: block; margin: auto;" />

Dot plots
========================================================
class:small-code

```r
par(mfrow=c(1,2))
# Simple Dotplot
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,main="Gas Milage for Car Models",xlab="Miles Per Gallon")

# Dotplot: Grouped Sorted and Colored 
dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,main="Gas Milage for Car Models\ngrouped by cylinder",xlab="Miles Per Gallon", gcolor="black", color=x$color)
```

<img src="R_session2-figure/unnamed-chunk-19-1.png" title="plot of chunk unnamed-chunk-19" alt="plot of chunk unnamed-chunk-19" style="display: block; margin: auto;" />

Bar charts
========================================================
Create bar plots with the **barplot(x)**, where x is a vector or matrix. If **x is a vector**, the values determine the heights of the bars in the plot.

Use the option **horiz = T** to create a horizontal bar plot.

If **x is a matrix** and the option **beside = FALSE** used, then each bar of the plot corresponds to a column of x, with the values in the column giving the heights of stacked “sub-bars”.

If** x is a matrix** and **beside = TRUE**, then the values in each column are juxtaposed rather than stacked.

Include option **names.arg = (character vector)** to label the bars.

Bar charts
========================================================
class:small-code

```r
par(mfrow=c(2,2))
# Simple Bar Plot 
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", xlab="Number of Gears")

# Simple Horizontal Bar Plot with Added Labels 
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,names.arg=c("3 Gears", "4 Gears", "5 Gears"))

# Stacked Bar Plot with Colors and Legend
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",xlab="Number of Gears", col=c("darkblue","red"),legend = rownames(counts))

# Grouped Bar Plot
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",xlab="Number of Gears", col=c("darkblue","red"),legend = rownames(counts), beside=TRUE)
```

Bar charts
========================================================
class:small-code
<img src="R_session2-figure/unnamed-chunk-21-1.png" title="plot of chunk unnamed-chunk-21" alt="plot of chunk unnamed-chunk-21" style="display: block; margin: auto;" />

Line charts
========================================================
Line charts are created with the function **lines(x, y, type=)**,
where **x** and **y** are numeric vectors of (x,y) points to connect. 

**type=** indicates types of symbols to be used in the plot.

The **lines()** function adds information to an existing graph.

It **can not produce a graph** on its own. Usually **it follows a plot(x, y)** command that produces a graph.

Line charts
========================================================
class:small-code

```r
x <- c(1:5) #create some data
y <- x 

par(pch=22, col="blue") # plotting symbol and color 
par(mfrow=c(2,4)) # all plots on one page 
opts = c("p","l","o","b","c","s","S","h") 

for(i in 1:length(opts)){ 
  heading = paste("type=",opts[i]) 
  plot(x, y, main=heading) 
  lines(x, y, type=opts[i]) 
}
```

Line charts
========================================================
class:small-code
<img src="R_session2-figure/unnamed-chunk-23-1.png" title="plot of chunk unnamed-chunk-23" alt="plot of chunk unnamed-chunk-23" style="display: block; margin: auto;" />

Boxplots
========================================================
Boxplots can be created for individual variables or for variables by group with **boxplot(x, data=)**, where **x** is a formula and **data=** is data frame with your data. An example of a formula is **y~group** where a separate box plot for numeric variable y is generated for each value of group. 

**varwidth = T** makes box plot widths proportional to the
square root of the samples sizes; 

**horizontal = T** reverses the axis orientation.

Boxplots
========================================================
class:small-code

```r
# Boxplot of MPG by Car Cylinders 
boxplot(wt~cyl, data=mtcars, main=toupper("Vehicle Weight"), font.main=3, cex.main=1.2, xlab="Number of Cylinders", ylab="Weight", font.lab=3, col="green")
```

<img src="R_session2-figure/unnamed-chunk-24-1.png" title="plot of chunk unnamed-chunk-24" alt="plot of chunk unnamed-chunk-24" style="display: block; margin: auto;" />

Population vs. sample
========================================================
![](9.png)

Measures of central tendency
========================================================
![](10.png)

Quantile, quartile, percentile
========================================================
In R, a very useful function for calculating statistics for your data is **sapply( )**. Possible functions used in **sapply()** include: **mean**, **sd**, **var**, **min**, **max**, **range**, **fivenum** and **quantile**. 

If the members of the total set are **sorted by increasing order**, the set can be divided progressively, beginning at the smallest and ending at the largest, into subsets of equal or nearly equal counts of members, called **quantiles**. 

If the division is into **four** bands or groups, the quantile is a **quartile**, if into **ten** it is a **decile**, if into **100** it is a **percentile**.

The demarcation between the second and third quartile and the 50th and 51st percentiles, is the **median**.

Quantile, quartile, percentile
========================================================
Box plot is a nice way to represent **five-number statistics** of your data set. 

Q1 = The lower quartile = The 0.25 quantile = The 25% percentile

Q2 = The median = The 0.50 quantile = The 50% percentile

Q3 = The upper quartile = The 0.75 quantile = The 75% percentile

![](11.png)

Quantile, quartile, percentile
========================================================
class:small-code

```r
boxplot(x, range = 0, col = "red", main = "Basic boxplot")
text(1.3, quantile(x), c("Minimum","Q1","Median","Q3","Maximum"), col="blue")
```

<img src="R_session2-figure/unnamed-chunk-25-1.png" title="plot of chunk unnamed-chunk-25" alt="plot of chunk unnamed-chunk-25" style="display: block; margin: auto;" />

Measures of variability
========================================================
![](12.png)

Variance vs. standard deviation 
========================================================
![](13.png)

By using the SD we have a "standard" way of knowing what is normal, and what is extra large or extra small.  Here, rottweillers are tall dogs,  and dachsunds are a bit short ... but don't tell them! 

Individual task
========================================================
Use R dataset **PlantGrowth**. Write a new R script that will answer the following questions.
- What are the population and the samples for this dataset?
- Find mean, median and mode
- Find quartiles
- Find statistical characteristics: variance, SD, IQR
- Build a box plot and explain the 5-number statistics
- Make a frequency distribution table and build a histogram with added lines for each of the above statistical characteristics

**Please send the R code for this task to ganna.androsova@uni.lu**
