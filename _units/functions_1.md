---
layout: page   # This is required
title: Functions  # This is required

order: 40    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 15 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  - Learn what a function is
  - Be able to use functions
  - Getting help with functions and R
  - Writing a function

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


A function is just a command that typically takes in input, does something to the 
input and sends the result as an output. Not all functions require inputs. R does 
require a function to have an output though.

We have already been using functions! Every time you see something like `some_function()`
that is a function. The input goes in the parentheses `some_function(4)` would do
something with the number for return the result.

For a simple example lets use the function to generate random numbers from a 
uniform distribution. A uniform distribution just means any number in the specified 
range is equally likely. Rolling a die, for instance, is a random uniform distribution 
from 1 to 6. In R the function is `runif()`. One difference between a die and 
`runif()` is that `runif()` generates random floating numbers. `runif()` requires one
parameter for input, how many numbers to generate.

```r 

> runif(1)[1]
[1] 0.1975651

# Generates 10 random numbers and returns a vector.
> runif(10)
 [1] 0.6910957 0.1875335 0.5158921 0.4604096 0.6535119 0.8049887 0.7999748 0.8750682
 [9] 0.1394821 0.4831887
 
 
```

Many functions also have optional parameters that allow you to change how the function behaves.
We can change `runif()` to return numbers between 0 and 10.

```r

> runif(10, min = 0, max = 10)
 [1] 7.219652 7.746382 6.813922 5.046449 8.404445 3.504893 6.244533 1.103338 7.530735
[10] 5.119951

```


We can use the result of one function as the input for another function. Here 
we calculate the mean of the results from `runif()` using the function `mean()`.

```r

> mean(runif(10))
[1] 0.3963005

> mean(runif(10, min = 0, max = 10))
[1] 4.584673

```


To find out more about a function you can use the `help()` function. The documentation
will be displayed in the lower right pane of R Studio. Typically you will get a **Description**,
**Usage**, a list of **Arguments** with explanations, more **Details**, relevant **References** and
**Examples**.

```r

> help("runif")

> help("help")  # If you want to get kinda meta about it.

```

You can also create your own functions. This is very useful if you are repeating code. 
Functions can also help make your code more readable. Creating a function is pretty
much like creating any other object. Below  are four ways to create a function to convert 
miles into kilometers.


```r

miles_to_km <- function(miles) { 
  km <- miles * 1.60934
  return(km)    
}


# Return is optional. R returns the last statement in a function.
miles_to_km2 <- function(miles) { 
  km <- miles * 1.60934
  km     
}

# This shortens the function. Usually shorter is better
miles_to_km3 <- function(miles) { 
  return(miles * 1.60934)
}

# A little more refractoring
miles_to_km4 <- function(miles) { 
  miles * 1.60934
}


# A more general converter
converter <- function(num, conversion  = 1.60934) {
  num * conversion
}


```

## Try It Out

1. Investigate the `floor()` function. See what it does and how to use it.
2. Write a function that models a six sided die using `runif()`. (HINT: Die tosses are integers! HINT: R typically applies a function to each element of a vector.)
3. Write a function to return the average roll from N number of tosses.
4. Check your function by using the `mean()` function. What is the expected average roll of a six sided die.
4. Advanced: Edit your function to model S sided dice. Make six sides the default.
      


