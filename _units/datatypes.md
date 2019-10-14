---
layout: page   # This is required
title: Data Types and Structures   # This is required

order: 30    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 15 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  Learning any programming language requires learning the basic data types and data 
  structures it provides. This unit describes these and introduces a few ways to
  explore and interact with them. 
  
  - Become familiar with different variable types
  - Learn how to explore a variable using environment

instructors_note: |
  

  
# These should resolve to files in the supporting_files directory
# or if you specified a different one in _config.yml use that.
# The link_text can be anything you want.
# supporting_files:
#   - file:
#     file_name: first_example_file.txt
#     link_text: Example file  for this unit.
#   - file:
#     file_name: another_example_file.png
#     link_text: Example image for this unit.

---


Learning any programming language requires learning the basic data types and 
data structures it supports. R is no different. For the most part, you will find most 
languages use the same data types and similar data structures. 

## Data Types

R supports 6 basic data types.

- character
- numeric
- integer
- logical
- complex


R has a few functions to examine the objects (R calls everything an object).

- class() - provides the type of object 
- typeof() - describe what kind of object a data structure contains
- length() - how long the object is
- attributes() - additional metadata associated with the object


```r

> char <- "some random characters"
> num <- 1.2
> int <- 2L
> log <- TRUE
> comp <- 1 + 3i

# Try out some of the 
> class(char)
[1] "character"
> typeof(char)
[1] "character"
> length(char)
[1] 1
> class(complex)
[1] "complex"
> typeof(comp)
[1] "comp"
> length(complex)
[1] 1

```

There are some other special values in R. 

- NA - missing value
- Inf - infinity
- NaN - not a number


```r

> NA
[1] NA
> 1/0
[1] Inf
> 0/0
[1] NaN

```

These basic data types are also called *scalars*, which just means they are single values.
Next we'll learn different ways to combine them.


## Data Structures

Data structures are ways of combining scalars and even other data structures together 
to make them easier to work with. There are a few basic ones we'll cover here. You are 
likely to encounter more, since many packages have created their own data structure as well.
The data structures most commonly encountered include (but aren't limited to)

- vectors
- lists
- matrixes
- data frames

We will be just covering the basics here, which may seem like a lot! 

### Vectors

Vectors are one-dimensional arrays composed of a single data type. There are a number of ways to create a vector.

```r

> vector()  # default type is logical
logical(0)
> vector("character", 4)  # empty character vector
[1] "" "" "" ""
> numeric(10)
 [1] 0 0 0 0 0 0 0 0 0 0
> x <- c(1, 2, 5)   # creating a vector directly.
> x
[1] 1 2 5
> v <- c(1:10)
> v
 [1]  1  2  3  4  5  6  7  8  9 10
> s <- seq(1, 10, 0.1)
> s
 [1]  1.0  1.1  1.2  1.3  1.4  1.5  1.6  1.7  1.8  1.9  2.0  2.1  2.2  2.3  2.4  2.5  2.6
[18]  2.7  2.8  2.9  3.0  3.1  3.2  3.3  3.4  3.5  3.6  3.7  3.8  3.9  4.0  4.1  4.2  4.3
[35]  4.4  4.5  4.6  4.7  4.8  4.9  5.0  5.1  5.2  5.3  5.4  5.5  5.6  5.7  5.8  5.9  6.0
[52]  6.1  6.2  6.3  6.4  6.5  6.6  6.7  6.8  6.9  7.0  7.1  7.2  7.3  7.4  7.5  7.6  7.7
[69]  7.8  7.9  8.0  8.1  8.2  8.3  8.4  8.5  8.6  8.7  8.8  8.9  9.0  9.1  9.2  9.3  9.4
[86]  9.5  9.6  9.7  9.8  9.9 10.0

```

You can use the functions shown above to explore vectors.

```r

1] "numeric"
> typeof(x)
[1] "double"
> length(x)
[1] 3

```

You will often need to add items to a vector. 

```r

> c(x, 20)
[1]  1  2  5 20
> x         # The change to x isn't saved
[1] 1 2 5
> x <- c(x, 20)  # This puts the new vector into x 
> x
[1]  1  2  5 20
> x <- c(x, c(NA, 31))  # Combining two fectors and using missing value.
> x
[1]  1  2  5 20 NA 31
> x <- c(x, "42")   # If you mix types, R can do some odd things.
> x
[1] "1"  "2"  "5"  "20" NA   "31" "42"

```
And you can get parts of a vector.

```r

> x[1]   # One item
[1] "1"
> x[1:3]  # Slice 
[1] "1" "2" "5"
> x[c(1,3,5)]  # Specific items
[1] "1" "5" NA 

```

NOTE: In R the indexes start at 1, not 0 as in many other languages.


### Lists

Lists are like vectors except the items can be of different types. 

```r

> l <- list(1, TRUE, "sheep", 3 + 4i)
> l
[[1]]
[1] 1

[[2]]
[1] TRUE

[[3]]
[1] "sheep"

[[4]]
[1] 3+4i

```

You can access elements of a list using double bracket notation.

```r
 
> l[[3]]
[1] "sheep"

```

You can name list elements too. This can make your R code far more readable and
understandable.

```r

> named_list <- list(name="Random Ciizen", age=32, vect=c(1, 3, 4))
> named_list
$name
[1] "Random Ciizen"

$age
[1] 32

$vect
[1] 1 3 4

> named_list[["name"]]  # one way to access by name
[1] "Random Ciizen"

> named_list$vect   # more readable way to access by name
[1] 1 3 4

> names(named_list)
[1] "name" "age"  "vect"

```

### Matrices

Matrices are essentially two dimensional vectors. Like vectors, they must be composed
of the same data type. You can me them as follows.

```r

> m1 <- matrix(1:20, nrow=5, ncol=4)
     [,1] [,2] [,3] [,4]
[1,]    1    6   11   16
[2,]    2    7   12   17
[3,]    3    8   13   18
[4,]    4    9   14   19
[5,]    5   10   15   20

> m2 <- matrix(1:20, nrow=5, ncol=4, byrow = TRUE)
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
[4,]   13   14   15   16
[5,]   17   18   19   20

# You can do useful things like this too. 
# The vector must be a mulitple of the total number of cells.
> m3 <- matrix(1:5, nrow=5, ncol=4)
     [,1] [,2] [,3] [,4]
[1,]    1    1    1    1
[2,]    2    2    2    2
[3,]    3    3    3    3
[4,]    4    4    4    4
[5,]    5    5    5    5


# You can add row and columns names as well.
> cells <- c(1,2,3,5)
> rnames <- c("Row 1", "Row 2")
> cnames <- c("Col 1", "Col 2")
> m4 <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames))
      Col 1 Col 2
Row 1     1     2
Row 2     3     5

```

You can access cells, rows are columns in a matrix using subscripts.

```r

# Getting a single value
> m1[1,2]
[1] 6

# Getting a row
> m1[1,]
[1]  1  6 11 16

# Getting a column
> m1[,2]
[1]  6  7  8  9 10

# Getting mulitple rows
> m1[2:3,]
     [,1] [,2] [,3] [,4]
[1,]    2    7   12   17
[2,]    3    8   13   18

# Getting multiple columns
> m1[,3:4]
     [,1] [,2]
[1,]   11   16
[2,]   12   17
[3,]   13   18
[4,]   14   19
[5,]   15   20

```

### Data Frames

Perhaps the most frequently used data structure in R is the Data Frame. It is essentially 
a list of vectors, so that each column must be composed of the same data type, but each
row can be composed of a mix of data types. The primary constraint on data frames is that
each column be the same length. It may look like a matrix but
it is much more general because each column can be of a different data type.

Data frames are typicaly how data from Excel or CSV files are imported which we will 
learn later. There are several other ways to make a data frame as well, but the method shown 
below is very common.

```r

> names <- c("Jill", "Joe", "Fido")
> age <- c(4, 7, 8)
> adopted <- c(TRUE, FALSE, TRUE)
> df <- data.frame(names, age, adopted)
> df

  names age adopted
1  Jill   4    TRUE
2   Joe   7   FALSE
3  Fido   8    TRUE

```

You can access parts of a data frame much like matrix using subscripts.

```r

> df[1,2]
[1] 4

> df[1,]
  names age adopted
1  Jill   4    TRUE

> df[,2:3]
  age adopted
1   4    TRUE
2   7   FALSE
3   8    TRUE

```

You can also access columns using the `$` notation.

```r

> df$age
[1] 4 7 8

```

You can also select rows based on a certain criterion.

```r
 
> df[which(df$age > 5),]
  names age adopted
2   Joe   7   FALSE
3  Fido   8    TRUE

```




