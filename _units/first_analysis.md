---
layout: page   # This is required
title: First Analysis (T Test)  # This is required

order: 50    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 15 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  - Learn about sample data sets
  - Perform a simple analysis
  - Become familiar with significance values

instructors_note: |
  THis part is not so much hands on, but you may want to give people time to click around.
  

  
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

Before we do an analysis, we need data! Fortunately R provides a large number of 
sample data sets. Also most packages either use of the these or supply their own to 
help users learn the package. You can list all the data sets you have available using
the `data()` function. You will see all the data sets listed on the top left pane. We
will start with one called **mtcars**.

Before doing any analysis it is a good idea to explore your data. This can help catch 
any problems or potential difficulties, and also help guide your analysis. There are
some helpful functions to use as well.

```r

View(mtcars)  # Displays the data frame in the top left pane

> typeof(mtcars)
[1] "list"

> class(mtcars)
[1] "data.frame"

> names(mtcars)
 [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"
 
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

> tail(mtcars)
                mpg cyl  disp  hp drat    wt qsec vs am gear carb
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2

# Displays the structure of the object
> str(mtcars)
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
 
> help(mtcars)  # Displays the documentation for the mtcars data set.

```

We might be curious if there is a difference in mileage between transmission types. 
First lets look at some descriptive statistics.

```r

> summary(mtcars$mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  10.40   15.43   19.20   20.09   22.80   33.90 
  
```

If we use a different package called `psych` we can get some additional information. 
Packages are bundles of functions that can be imported and used. We'll cover them 
more in another unit, but they are one of the best things about R!

```r 

> library(psych)
> describe(mtcars$mpg)
   vars  n  mean   sd median trimmed  mad  min  max range skew kurtosis   se
X1    1 32 20.09 6.03   19.2    19.7 5.41 10.4 33.9  23.5 0.61    -0.37 1.07


# This function does the same thing but by group.
> describeBy(mtcars$mpg, group = mtcars$am)

 Descriptive statistics by group 
group: 0
   vars  n  mean   sd median trimmed  mad  min  max range skew kurtosis   se
X1    1 19 17.15 3.83   17.3   17.12 3.11 10.4 24.4    14 0.01     -0.8 0.88
------------------------------------------------------------------ 
group: 1
   vars  n  mean   sd median trimmed  mad min  max range skew kurtosis   se
X1    1 13 24.39 6.17   22.8   24.38 6.67  15 33.9  18.9 0.05    -1.46 1.71


```

It does look like automatic transmission cars get lower gas mileage. Is this a meaningful
difference? For instance, if you take two coins and toss them 100 times, we expect them 
both to be about 50% heads, and 50% tails. If one lands 40/60 the other 52/48 is there a 
difference in how they flip? We know there is some randomness, so we need a way to 
handle that. For this we use statitistical tests, in this case one called a **T test**. 
Statistical tests like this help us to decide if we should believe the groups to be different 
or the same.

```r

> t.test(mtcars$mpg~mtcars$am)

	Welch Two Sample t-test

data:  mtcars$mpg by mtcars$am
t = -3.7671, df = 18.332, p-value = 0.001374
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -11.280194  -3.209684
sample estimates:
mean in group 0 mean in group 1 
       17.14737        24.39231 
       
```

The output may seem confusing at first so lets do some explanation.
The first line just tells us the name of the test, followed by the data we used.
Then we see `t = -3.7671, df = 18.332, p-value = 0.001374`. The **t** value is 
a way of measuring the size of the difference betweeen the two groups that is 
independent of the scale. **df** stands for *degrees of freedom*, its a way of describing
the sample size. 

**t** and **df** are used to compute the **p-value** which is actually
the most important value. The **p-value** is an estimate of the likelihood that you would
get a difference between the groups as larger or larger by chance. That may seem 
confusing, but if we think about our coins again, we know we are unlikely to get 50 heads
and 50 tails if we toss it 100 times. The further we are away from that, however, the 
more likely we are to believe the coin is loaded. In the case of our cars,
we have a sample of cars, some with standard transmission, some with automatic. We 
wouldn't expect them to be exactly the same even if the type of transmission had no 
effect because cars vary in so many different ways. However, at some point we might, the
difference in mileage would be large enough for us to believe transmission does have
an effect on gas mileage. In this case the **p-value** is 0.001374 which means we 
would expect a difference this large by chance only 0.1374% of the time. That seems 
pretty unlikely, and by convention any **p-value** of 0.05 or less we consider to be
signficant. So yes, statistically cars with standard transmissions get better gas 
mileage than cars with automatic transmissions.

It is tempting to just say we have found the answer and leave it at that. Always
buy a standard transmission if you want to save money on gas. There is no 
substitute for good thinking though. There may be other reasons why we saw this difference.
Is it possible automatic transmissions are found more often in larger cars, while 
standard transmissions are found in smaller sports cars? 

## Try it out.

See if you can test the hypothesis that smaller cars have standard transmissions.

  - Do descriptive statistics first, then a t-test.

