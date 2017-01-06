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
.midcenter {
    position: fixed;
    top: 50%;
    left: 50%;
}
.reveal .column {
    display:block;
}
</style>

Introduction to R
========================================================
author: Ganna Androsova
date: 2017-01-09
font-family: 'Arial'
transition: fade

What is R?
========================================================

R is a language and environment for **statistical** computing and **graphics**.

Advantages of R:
- FREE software
- easy to download/install/update
- easy to process big files and analyze huge amounts of data
- integrated data visualization tools
- programs can be integrated in the text (for instance, .pdf file will contain then results of calculations, figures, etc. - RMarkdown)

More details on https://www.r-project.org/about.html

What can I do with R?
========================================================
- Data input/import
- Data output/export
- Basic operations (arithmetical, etc)
- Data visualization
- Data analysis
- much more...

How to install R on my PC?
========================================================

- go to http://cran.r-project.org
- choose your system
- choose **base**
- download R
- run the downloaded file

How to start coding?
========================================================

Create a new script with:
<div style="width:70%"><img src="1.png"></img></div>

What is called "inputs"?
========================================================
Inputs are your data, something you will work with further in your program.

Inputs may be:
![](2.png)

Data types in R
========================================================
![](3.png)
Call command **class( )** to see what data you are working with.

Variables in R
========================================================
Let's say your cases are Bob, Fred, Barb, Sue, and Jeff. 

Age, height, weight, race, year in school, and SAT score are called **variables**. 

You would ordinarily put this information into a data frame as follows:

name   |  age | hgt | wgt | race |gender|SAT 
-------|------|-----|-----|------|------|----
Bob    |   21 |  70 | 180 | Cauc |  M   |1080
Fred   |   18 |  67 | 156 |Af.Am |  M   |1210
Barbara|   18 |  64 | 128 |Af.Am |  F   | 840
Sue    |   24 |  66 | 118 | Cauc |  F   |1340
Jeff   |   20 |  72 | 202 |Asian |  M   | 880

Variables in R
========================================================
Numbers, like age and weight, are called **numerical variables**. 

The names of categories that the subject falls into, for example race ad gender, are called **categorical variables**.

Categorical variables are often called **factors** in R.

name   |  age | hgt | wgt | race |gender|SAT 
-------|------|-----|-----|------|------|----
Bob    |   21 |  70 | 180 | Cauc |  M   |1080
Fred   |   18 |  67 | 156 |Af.Am |  M   |1210
Barbara|   18 |  64 | 128 |Af.Am |  F   | 840
Sue    |   24 |  66 | 118 | Cauc |  F   |1340
Jeff   |   20 |  72 | 202 |Asian |  M   | 880

Variables in R
========================================================
When we think of categorical variables or factors, we are thinking of variables that have relatively few possible values. These values are called **levels**. The levels of gender, for example, are F and M.

When a variable has a different value for everyone, like the subject's name or address for example, it's often called a **character variable**.

Assignment
========================================================
class: small-code
In R you create things, called "objects", by a process called **assignment**.

To assign data to an object name in R:

```r
x <- 7
```

Here is another way to do assignment:

```r
x = 7
```
This SHOULD NOT be read as "x equals 7", which will result in confusion later. Instead, the single equals sign means "takes the value" or "is assigned the value."

Workspace
========================================================
class: small-code
There are several ways to check content of variable:
- Select the variable and press Ctrl+Enter (cmd + Enter for Mac)
- run command

```r
print(x)
```

```
[1] 7
```
- In R Console type **x** to see it's value.
- Check "Environment" tab in RStudio

As you work in R and create new vectors it can be easy to lose track of what variables you have defined. To get a list of all of the variables that have been defined use the ls() command:

```r
ls()
```

```
[1] "x"
```

Workspace and Files
========================================================
class: small-code

To find what is your working directory:

```r
getwd()
```

```
[1] "/Users/ganna.androsova/Documents/PhD/Teaching/R_full_intro"
```

Check the files that it contains:

```r
list.files()
```

```
 [1] "1.png"              "2.png"              "3.png"             
 [4] "4.png"              "5.png"              "6.png"             
 [7] "7.jpg"              "8.jpg"              "9.png"             
[10] "R_full_intro.Rpres" "R_full_intro.html" 
```

Numeric variables
========================================================
class: small-code
Numeric data in R in either "double" or "integer". In practice, numeric computations always produce "double" results thus "numeric" name is used as a synonym. 

Integers are a little more than 2 billion, while the other numerics are much bigger.
They can be bigger because they are stored as double precision floating point numbers, which have two pieces: the exponent (like 308 below), and the "significant" (like 1.797693 below).

```r
.Machine$integer.max
```

```
[1] 2147483647
```

```r
.Machine$double.xmax
```

```
[1] 1.797693e+308
```

Numeric variables
========================================================
class: small-code
R will automatically convert between the numeric classes when needed.

Most math is done using double precision, so that is often the default storage.

```r
is.numeric(1)
```

```
[1] TRUE
```

```r
is.integer(1)
```

```
[1] FALSE
```

Numeric variables
========================================================
class: small-code
Sometimes you may want to specifically store a vector as integers if you know that they will never be converted to doubles (used as ID values or indexing) since integers require less storage space. 

```r
is.numeric(1L)
```

```
[1] TRUE
```

```r
is.integer(1L) #Putting capital 'L' after an integer forces it to be stored as an integer.
```

```
[1] TRUE
```

Create variable in R
========================================================
class: small-code
- create a new variable based on **a**

```r
a <- 2
c <- (a^5 - a)
c
```

```
[1] 30
```

Practice time!
========================================================
class: small-code

Type in R console:

```r
library(swirl)
swirl()
#Lesson 1, 2, 3
```

Choose the "R Programming E" course.
Complete lessons **1, 2**  and **3**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.

Naming of variables
========================================================
Among R naming conventions, the period.separated lowercase is the most preffered one.

E.g. new.plot, my.list, new.function, transition.matrix...

Give **MEANINGFUL** names:
- **matrix.multiplication** is better than **mult**

Andy Lester declared **The World's Worst Variable Name** to be:

                          data

Of course it's data! That's what variables contain! That's all they ever can contain. It's like you're packing up your belongings to move to a new house, and on the side of the box you write, in big black marker, "things".

Naming of variables
========================================================

Guess: what is the **second** worst variable name?


Naming of variables
========================================================

                          data2

```r
total <- price * qty
total2 <- total - discount
total2 <- total2 + total * taxrate
total3 <- purchase_order_value + available_credit

if ( total2 < total3 ) {
    print "You can't afford this order.";
}
```

If you're faced with naming something total2, change the existing name to something more specific.

Create a vector in R
========================================================
class: small-code
- create a vector with several elements by command **c(object,object,...)**, which combines objects into a vector

```r
a <- c(1,2,3)
a
```

```
[1] 1 2 3
```

```r
a <- c(1:3)
a
```

```
[1] 1 2 3
```

```r
a + 5
```

```
[1] 6 7 8
```

```r
a * 4
```

```
[1]  4  8 12
```

Basic R operations
========================================================
class: small-code

```r
a - 10
```

```
[1] -9 -8 -7
```

```r
sqrt(a)
```

```
[1] 1.000000 1.414214 1.732051
```

```r
exp(a)
```

```
[1]  2.718282  7.389056 20.085537
```

```r
log(a)
```

```
[1] 0.0000000 0.6931472 1.0986123
```

Basic R operations
========================================================
class: small-code
We can save the results in another vector called **b** and use parentheses for more complicated expressions:

```r
b <- (a + sqrt(a))/(exp(2)+1)
print(b)
```

```
[1] 0.2384058 0.4069842 0.5640743
```

```r
a / b
```

```
[1] 4.194528 4.914195 5.318448
```

Basic R operations
========================================================
class: small-code

While performing operations on vectors, all of the vectors in an expression must be the same length. If the lengths of the vectors differ then you may get an error message, or worse, a warning message and unpredictable results:

```r
a <- c(1, 2, 3, 4, 5, 6)
#or
a <- 1:6

b <- c(10,11,12) 
a + b
```

```
[1] 11 13 15 14 16 18
```
R has tendency to recycle data.

Operations with vectors
========================================================
![](4.png)

Operations with vectors
========================================================
class: small-code

```r
help(sort)
```

**help** will return a full description of the query command: what it does, what it needs as input, what will be produced in output

```r
sort(a, decreasing = FALSE)
```

```
[1] 1 2 3 4 5 6
```

```r
sort(a, decreasing = TRUE)
```

```
[1] 6 5 4 3 2 1
```

Logical
========================================================
class: small-code
Logical binary, two possible values represented by **TRUE** and **FALSE**.


```r
a <- c(3, 7, 1, 2, 4)
a > 2
```

```
[1]  TRUE  TRUE FALSE FALSE  TRUE
```

```r
a == 2
```

```
[1] FALSE FALSE FALSE  TRUE FALSE
```

```r
!(a <= 3)
```

```
[1] FALSE  TRUE FALSE FALSE  TRUE
```

Find which element is...
========================================================
class: small-code

```r
a
```

```
[1] 3 7 1 2 4
```

```r
which(a > 2)
```

```
[1] 1 2 5
```

```r
a[which(a > 2)]
```

```
[1] 3 7 4
```

Functions to Provide Information about Vectors
========================================================
![](5.png)

Logical Operators
========================================================
![](6.png)

Practice time!
========================================================
class: small-code

Type in R console:

```r
swirl()
#Lesson 4, 8
```

Choose the "R Programming E" course.
Complete lessons **4**  and **8**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.

Missing Data
========================================================
class: small-code


```r
v <- c(1:3, NA, NA, 5:8, NA)
v
```

```
 [1]  1  2  3 NA NA  5  6  7  8 NA
```

```r
is.na(v)
```

```
 [1] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
```

```r
which(is.na(v))
```

```
[1]  4  5 10
```

```r
v[!is.na(v)]
```

```
[1] 1 2 3 5 6 7 8
```

Subsetting Vectors 
========================================================
class: small-code

R has a few built in vectors. One of these is **LETTERS**.


```r
LETTERS
```

```
 [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q"
[18] "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
```

How do extract the first element from this (the letter A). Here is how to do it:

```r
LETTERS[1]
```

```
[1] "A"
```
Use the square brakets to subset vectors.

How to get folliwing outputs?
========================================================
class: small-code

```r
## [1] "B" "C" "D" "E"
```

```r
## [1] "B" "C" "D" "E" "G"
```

```r
## [1] "A" "B" "C" "D" "E" "Y"
```

How to get folliwing outputs?
========================================================
class: small-code

```r
LETTERS[2:5]
```

```
[1] "B" "C" "D" "E"
```

```r
LETTERS[c(2:5, 7)]
```

```
[1] "B" "C" "D" "E" "G"
```

```r
LETTERS[c(1:5, length(LETTERS) - 1)]
```

```
[1] "A" "B" "C" "D" "E" "Y"
```

Named vectors
========================================================
class: small-code

We can assign names to vector members.

For example, the following variable v is a character string vector with two members.

```r
v = c("Mary", "Sue")
names(v) = c("First", "Last")
v
```

```
 First   Last 
"Mary"  "Sue" 
```
Another way:

```r
v = c(First = "Mary", Last = "Sue")
v
```

```
 First   Last 
"Mary"  "Sue" 
```

Named vectors
========================================================
class: small-code

Then we can retrieve the first member by its name.

```r
v["First"] 
```

```
 First 
"Mary" 
```
Or reverse the order with a character string index vector.

```r
v[c("Last", "First")] 
```

```
  Last  First 
 "Sue" "Mary" 
```

Practice time!
========================================================
class: small-code

Type in R console:

```r
swirl()
#Lesson 5, 6
```

Choose the "R Programming E" course.
Complete lessons **5**  and **6**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.

From vectors to matrices
========================================================
class: small-code

```r
a <- c(1,2)
b <- c(3,4)
```

- You may bind two vectors columnwise or rowwise: 

```r
cbind(a, b)
```

```
     a b
[1,] 1 3
[2,] 2 4
```

```r
c <- rbind(a, b)
```
- But vectors must be of the same length!

From vectors to matrices
========================================================
class: small-code
To create a x-by-y matrix of 0s :

```r
matrix(0, nrow = 2, ncol = 3)
```

```
     [,1] [,2] [,3]
[1,]    0    0    0
[2,]    0    0    0
```
To create any matrix:

```r
matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
```

```
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
```

What is matrix?
========================================================
class: small-code

- A matrix is a two-dimensional data structure. 
- All the elements of a matrix must be of the **same type** (numeric, logical, character, complex).
- It is useful for such data type as gene expression, proteomics data, etc.

![](7.jpg)

Row and column naming
========================================================
class: small-code

Give a vector with names, the length of which corresponds to dimentions of matrix:


```r
c <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)
names <- c("first_row", "second_row", "third_row")
length(names)
```

```
[1] 3
```

```r
rownames(c) <- names
colnames(c) <- c("A", "B", "C")
print(c)
```

```
           A B C
first_row  1 4 7
second_row 2 5 8
third_row  3 6 9
```

Addressing elements
========================================================
class: small-code
To access an element in matrix, specify row index (or row name) and then column index (or name) as **[row_index, col_index]**

```r
c
```

```
           A B C
first_row  1 4 7
second_row 2 5 8
third_row  3 6 9
```

```r
c[1, 2]
```

```
[1] 4
```

```r
c[2, "B"]
```

```
[1] 5
```

Addressing elements in matrix
========================================================
class: small-code

Within the brackets you may specify various arguments, including not only numbers, but also conditions to which the desired elements must satisfy:

```r
c
```

```
           A B C
first_row  1 4 7
second_row 2 5 8
third_row  3 6 9
```

```r
c[1,]
```

```
A B C 
1 4 7 
```

```r
c[c>3]
```

```
[1] 4 5 6 7 8 9
```

Operations with matrix
========================================================
class: small-code
Other operations like **transpose**, **matrix multiplication** can be performed:

```r
d <- t(c)
d
```

```
  first_row second_row third_row
A         1          2         3
B         4          5         6
C         7          8         9
```

```r
c %*% d
```

```
           first_row second_row third_row
first_row         66         78        90
second_row        78         93       108
third_row         90        108       126
```

Operations with matrix
========================================================
class: small-code

Be careful with the * operator: it does not perform matrix multiplication, but rather an entry-wise multiplication:

```r
c
```

```
           A B C
first_row  1 4 7
second_row 2 5 8
third_row  3 6 9
```

```r
d
```

```
  first_row second_row third_row
A         1          2         3
B         4          5         6
C         7          8         9
```

```r
c * d
```

```
            A  B  C
first_row   1  8 21
second_row  8 25 48
third_row  21 48 81
```

Data frames
========================================================
class: small-code

A data frame is used for storing data tables. It is a list of vectors of equal length. For example, the following variable df is a data frame containing three vectors n, s, b.

```r
numbers <- c(2, 3, 5)
letters <- c("aa", "bb", "cc")
logicals <- c(TRUE, FALSE, TRUE)
df <- data.frame(numbers, letters, logicals)
df
```

```
  numbers letters logicals
1       2      aa     TRUE
2       3      bb    FALSE
3       5      cc     TRUE
```

What is the difference between matrices and data frames?
========================================================
- Rows and columns of a matrix must have the same class (numeric, character, etc).  
- In a dataframe, you can have mixture of every class.
- You can convert from one to the other using **as.data.frame()** or **as.matrix()**.

WARNING: if you convert a dataframe with different classes of columns, then your matrix will just be all character.

Matrix vs. data frame?
========================================================
class: small-code
R has a built-in data frame called mtcars. Let's take first 5 rows and 5 columns:

```r
mtcars[1:5,1:5]
```

```
                   mpg cyl disp  hp drat
Mazda RX4         21.0   6  160 110 3.90
Mazda RX4 Wag     21.0   6  160 110 3.90
Datsun 710        22.8   4  108  93 3.85
Hornet 4 Drive    21.4   6  258 110 3.08
Hornet Sportabout 18.7   8  360 175 3.15
```

Matrix vs. data frame?
========================================================
class: small-code
Now convert it into matrix:

```r
as.matrix(mtcars[1:5,1:5])
```

```
                   mpg cyl disp  hp drat
Mazda RX4         21.0   6  160 110 3.90
Mazda RX4 Wag     21.0   6  160 110 3.90
Datsun 710        22.8   4  108  93 3.85
Hornet 4 Drive    21.4   6  258 110 3.08
Hornet Sportabout 18.7   8  360 175 3.15
```
-> nothing changed

Matrix vs. data frame?
========================================================
class: small-code
Change it's first element:

```r
mtcars[1,1] <- "text"
```
Now convert it into matrix:

```r
as.matrix(mtcars[1:5,1:5])
```

```
                  mpg    cyl disp  hp    drat  
Mazda RX4         "text" "6" "160" "110" "3.90"
Mazda RX4 Wag     "21"   "6" "160" "110" "3.90"
Datsun 710        "22.8" "4" "108" " 93" "3.85"
Hornet 4 Drive    "21.4" "6" "258" "110" "3.08"
Hornet Sportabout "18.7" "8" "360" "175" "3.15"
```
-> all matrix is composed of characters (text)

-> numbers are not recognized as numbers (for algebraic operations) but as text

Data frames
========================================================
class: small-code

We can use the row and column names instead of the numeric coordinates.

```r
mtcars["Mazda RX4", "cyl"]
```

```
[1] 6
```
The number of data rows in the data frame is given by:

```r
nrow(mtcars)
```

```
[1] 32
```

```r
ncol(mtcars) #for number of columns
```

```
[1] 11
```

Data frames
========================================================
class: small-code
Access the specific column by **$column_name** (this only works for data frames)

```r
mtcars$cyl
```

```
 [1] 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 8 4 4 4 4 8 8 8 8 4 4 4 8 6 8 4
```

```r
mean(mtcars$cyl)
```

```
[1] 6.1875
```

```r
median(mtcars$cyl)
```

```
[1] 6
```

Working with data frames
========================================================
class: small-code


```r
quantile(mtcars$cyl)
```

```
  0%  25%  50%  75% 100% 
   4    4    6    8    8 
```

```r
min(mtcars$cyl)
```

```
[1] 4
```

```r
sd(mtcars$cyl)
```

```
[1] 1.785922
```

```r
summary(mtcars[,1:4]) #prints min, max, mean, median, and quantiles
```

```
     mpg                 cyl             disp             hp       
 Length:32          Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
 Class :character   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
 Mode  :character   Median :6.000   Median :196.3   Median :123.0  
                    Mean   :6.188   Mean   :230.7   Mean   :146.7  
                    3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
                    Max.   :8.000   Max.   :472.0   Max.   :335.0  
```

Working with data frames
========================================================
class: small-code

Change the column names of data frame with function **names( )**

```r
names(mtcars)[1] <- "new_name"
```
To see first n elements of your data frame use **head(data_frame, n)**

```r
head(mtcars) #Gives first 6 rows if n is not specified
```

```
                  new_name cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4             text   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag           21   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710            22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive        21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout     18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant               18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

Practice time!
========================================================
class: small-code

Type in R console:

```r
swirl()
#Lesson 7
```

Choose the "R Programming E" course.
Complete lesson **7**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.

Factors
========================================================
class: small-code
A **factor**-type vector contains a set of numeric codes with character-valued levels. Example, a family of two girls (1) and four boys (0):

```r
kids <- factor(c(1,0,1,0,0,0), levels = c(0, 1), labels = c("boy", "girl"))
kids
```

```
[1] girl boy  girl boy  boy  boy 
Levels: boy girl
```

```r
class(kids)
```

```
[1] "factor"
```

```r
mode(kids)
```

```
[1] "numeric"
```

Factors
========================================================
class: small-code
- great for statistical analysis and exploring the data

However:
- when reading, cleaning, troubleshooting, merging and generally manipulating the data, factors are a total pain
- factors stick around even if you remove some data such that no examples of a particular level still exist

Factors
========================================================
class: small-code

```r
x <- as.factor(sample(head(colors()),100,replace=TRUE))
levels(x)
```

```
[1] "aliceblue"     "antiquewhite"  "antiquewhite1" "antiquewhite2"
[5] "antiquewhite3" "white"        
```

```r
x <- x[x!="aliceblue"]
levels(x) # still the same levels
```

```
[1] "aliceblue"     "antiquewhite"  "antiquewhite1" "antiquewhite2"
[5] "antiquewhite3" "white"        
```

```r
table(x) # even though one level has 0 entries!
```

```
x
    aliceblue  antiquewhite antiquewhite1 antiquewhite2 antiquewhite3 
            0            15            25            22            14 
        white 
           10 
```

Lists
========================================================
class: small-code

An ordered collection of objects (components). A list allows you to gather a variety of (possibly unrelated) objects under one name.

```r
# example of a list with 4 components - a string, a numeric vector, a matrix, and a scaler 
mylist <- list(name="Fred", mynumbers=a, mymatrix=c, age=5.3)

# example of a list containing two lists 
two_lists <- list(mylist, list("first_elelment", "second_element"))
```
Identify elements of a list using the [[]] convention

```r
mylist[[1]] # 1st component of the list
```

```
[1] "Fred"
```

```r
mylist[["mynumbers"]] # component named mynumbers in list
```

```
[1] 1 2
```

Lists
========================================================
class: small-code
If you have nested lists: indicate with [[]] number of list followed by [] number of element of that list

```r
two_lists[[1]][3]
```

```
$mymatrix
           A B C
first_row  1 4 7
second_row 2 5 8
third_row  3 6 9
```

```r
two_lists[[2]][1]
```

```
[[1]]
[1] "first_elelment"
```

Functions
========================================================
class:small-code

```r
myfun <- function(x){ 
  return(x*x)
}

myfun(2)
```

```
[1] 4
```
If no return() is given, the object last created is returned.

Functions
========================================================
class:small-code

```r
myfun <- function(x, a){ 
  r <- a*sin(x) 
  return(r)
} 

#Short version
myfun <- function(x, a){ a*sin(x) }

result <- myfun(pi/2,2)
result
```

```
[1] 2
```

Functions
========================================================
class:small-code
Multiple return values have to be returned as a single list.

```r
# a is optional parameter with default=1
myfun4 <- function(x, a=1){
  result1 <- a*sin(x)
  result2 <- a*cos(x)
  return(list(result1,result2)) # one list as result
} 
myfun4(pi/2)
```

```
[[1]]
[1] 1

[[2]]
[1] 6.123234e-17
```
R doesn't handle return(result1,result2)

Global and local scope
========================================================
![](8.jpg)

Global and local scope
========================================================
class:small-code

```r
global.var <- 10

new.fun <- function(x){
  print(paste("Global variable", global.var))
  
  local.variable <- x-3
  print(paste("Local variable", local.variable))
  
  return(local.variable)
}

new.var <- new.fun(global.var)
```

```
[1] "Global variable 10"
[1] "Local variable 7"
```

If you print local variable, it is not kept outside of the sunction environment -> error in print(local.variable) : object 'local.variable' not found


```r
print(local.variable)
```

Practice time!
========================================================
class: small-code

Type in R console:

```r
swirl()
#Lesson 9
```

Choose the "R Programming E" course.
Complete lesson **9**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.

Control statements: conditions
========================================================
To check whether your data satisfy some particular condition, R has a structure:
**if (expression1) {  expression2 } else { expression3 }**

Here **expression1** must include logical operators and be evaluated to a single logical value (**TRUE** or **FALSE**).

'If TRUE, then the **expression2** is executed.

If FALSE, then **expression3** is executed. The **expression3** may be either a single command, or a sequence of commands, or again a control statement, like if ' else operator or a loop.

Control statements: conditions
========================================================
class:small-code
![](9.png)


```r
x <- c(2,3,4,5)

if (all(x) == 0) { 
  x[length(x)+1] <- 5
  print(x) 
} else { 
  x[length(x)+1] <- 16 
  print(x) 
}
```

```
[1]  2  3  4  5 16
```

Repetitive execution: for loop
========================================================
If there's a need in multiple execution of the same command or a sequence of commands, use statement:

**for (xxx in expression1) { expression2 }**

'Here **xxx** is a loop variable; **expression1** is the sequence of instances, which **xxx** should run on and **expression2** is the (group of) command(s) to be executed.

**'expression2** is repeatedly evaluated as xxx ranges through the values in the vector result of expression1.

For loop (example 1)
========================================================
class:small-code

```r
mymat <- matrix(nrow=30, ncol=30) # create a 30 x 30 matrix

for(i in 1:dim(mymat)[1]){   # for each row
  for(j in 1:dim(mymat)[2]){ # for each column
    mymat[i,j] <- i*j         # assign a product of two indexes
  }
}  
mymat[1:10, 1:10]
```

```
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1    2    3    4    5    6    7    8    9    10
 [2,]    2    4    6    8   10   12   14   16   18    20
 [3,]    3    6    9   12   15   18   21   24   27    30
 [4,]    4    8   12   16   20   24   28   32   36    40
 [5,]    5   10   15   20   25   30   35   40   45    50
 [6,]    6   12   18   24   30   36   42   48   54    60
 [7,]    7   14   21   28   35   42   49   56   63    70
 [8,]    8   16   24   32   40   48   56   64   72    80
 [9,]    9   18   27   36   45   54   63   72   81    90
[10,]   10   20   30   40   50   60   70   80   90   100
```

For loop (example 2)
========================================================
class:small-code

The Fibonacci numbers have many mathematical relationships and have been discovered repeatedly in nature. They are constructed as the sum of the previous two values, initialized with the values 1 and 1.

```r
#Let's calculate 10 Fibonacci numbers
fibvals <- rep(0, 10) #Create vector which will contain 10 values
fibvals[1] <- 1 #Assign 1 to first and second variable
fibvals[2] <- 1
for (i in 3:10) {
   fibvals[i] <- fibvals[i-1]+fibvals[i-2]
} 
fibvals
```

```
 [1]  1  1  2  3  5  8 13 21 34 55
```

Other loops: repeat and while
========================================================
There exist other statements for repeated expressions: **repeat** expression and **while** (condition) expression.

'The **break** statement can be used to terminate any loop, possibly abnormally. This is the only way to terminate **repeat** loops, usually by using **if'else'** statement to check if the desired condition is satisfied.

'The **next** statement can be used to discontinue one particular cycle and skip to the 'next' (this is more likely to be used in **for** and **while** loops)

While loop
========================================================
class:small-code
**while()** loop will execute a block of commands until the condition is no longer satisfied.

```r
x <- 1 
while (x < 4) { 
  x <- x + 1
  print(x) 
}
```

```
[1] 2
[1] 3
[1] 4
```

**next** can skip one step of the loop; **break** will end the loop abruptly.

```r
x <- 1 
while (x < 4) { 
  x <- x + 1
  if (x == 3){
    next
  }
  print(x) 
}
```

```
[1] 2
[1] 4
```

Repeat loop
========================================================
class:small-code
**repeat** is similar to while and for loop, it will execute a block of commands repeatly till break.

```r
x <- 0 
repeat { 
  x <- x + 1
  print(x)
  if (x > 5) {
    break
  }
}
```

```
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
```
If no **break** is given, loop runs forever!

The apply() commands
========================================================
these commands allow functions to be run on matrices.

**apply()** function used on matrix
 
**tapply()** table grouped by factors

**lapply()** on lists and vectors; returns a list

**sapply()** like lapply(); returns vector/matrix

**mapply()** multivariate sapply()

apply()
========================================================
class:small-code
**apply(data, margin, function)**

```r
a <- matrix(1:10,nrow=2)
apply(a,1,mean) # 1 = by rows
```

```
[1] 5 6
```

```r
apply(a,2,mean) # 2 = by columns
```

```
[1] 1.5 3.5 5.5 7.5 9.5
```

```r
# the function can also be anonymous
apply(a, 2, function(x){x[[sample.int(length(x),1)]]})
```

```
[1]  2  4  6  8 10
```

lapply() and sapply()
========================================================
class:small-code
**lapply(list, function)**

**sapply(list or vector, function)**

```r
a <- matrix(2:11,nrow=2)
b <- matrix(1:10,nrow=2)
c <- list(a,b)

lapply(c,mean)
```

```
[[1]]
[1] 6.5

[[2]]
[1] 5.5
```

```r
sapply(c,mean)
```

```
[1] 6.5 5.5
```

mapply()
========================================================
class:small-code
Like sapply() but applies over the first elements of each argument

**mapply(FUNCTION, list, list, list...)**

```r
mapply(rep, pi, 3:1)
```

```
[[1]]
[1] 3.141593 3.141593 3.141593

[[2]]
[1] 3.141593 3.141593

[[3]]
[1] 3.141593
```

```r
# equivalent to: 
rep(pi, 3) 
```

```
[1] 3.141593 3.141593 3.141593
```

```r
rep(pi, 2) 
```

```
[1] 3.141593 3.141593
```

```r
rep(pi, 1)
```

```
[1] 3.141593
```

Vectorization
========================================================
A "vectorized" function **f()** takes a vector [x1, x2, ... , xn] as input and returns the vector [f(x1), f(x2), f(x3), ... , f(xn)].

**Why is vectorization important?**
Vectorized functions usually involve a behind-the-scenes loop in a low-level language (C or Fortran), which runs way faster than a pure R loop.

Vectorization
========================================================
class:small-code
Here's an example using the vectorized log() function that illustrates the speedup you can get:

```r
# Create a vector of 1 million random numbers between 1 and 10
nums <- sample(1:10, size=1000000, replace=TRUE) 

# Loop to call log on each vector element separately:
system.time(
  for (x in seq_along(nums)){
    nums[i] <- log(nums[i])
  }
)
```

```
   user  system elapsed 
  1.154   0.013   1.191 
```

```r
system.time(log(nums))
```

```
   user  system elapsed 
  0.010   0.002   0.012 
```
So in conclusion: vectorization is important because it allows you to operate on vectors quickly (unlike looping).

Vectorised functions
========================================================
class:small-code
R has **ifelse( )** function that works with vectors:

```r
x <- c(6:-4)
sqrt(x)  # gives warning
```

```
Warning in sqrt(x): NaNs produced
```

```
 [1] 2.449490 2.236068 2.000000 1.732051 1.414214 1.000000 0.000000
 [8]      NaN      NaN      NaN      NaN
```

```r
sqrt(ifelse(x >= 0, x, NA))  # no warning
```

```
 [1] 2.449490 2.236068 2.000000 1.732051 1.414214 1.000000 0.000000
 [8]       NA       NA       NA       NA
```

```r
## Note: the following also gives the warning !
ifelse(x >= 0, sqrt(x), NA)
```

```
Warning in sqrt(x): NaNs produced
```

```
 [1] 2.449490 2.236068 2.000000 1.732051 1.414214 1.000000 0.000000
 [8]       NA       NA       NA       NA
```

Vectorised functions
========================================================
Default vectorized matrix functions: 
- **rowSums(), colSums(), rowMeans(), colMeans()**

Vectorized matrix functions in package genefilter:
- **rowSds(), colSds(), rowVars(), colVars(), rowttests(), rowFtests()**

Vectorized matrix functions in package matrixStats:
- **colMedians(), rowMedians()**

Practice time!
========================================================
class: small-code

Type in R console:

```r
swirl()
#Lesson 10
```

Choose the "R Programming E" course.
Complete lesson **10**. In the end of the lesson send the email to ganna.androsova@uni.lu

The email subject should be generated automaticly by swirl, in the email body place your last command used in the lesson.
