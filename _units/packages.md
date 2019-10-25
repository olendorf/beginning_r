---
layout: page   # This is required
title: R Packages  # This is required

order: 80    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 5 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  - Understand what packages are
  - Installing and loading packages
  - Know what CRAN is
  - Learn about installing from GitHub
  
instructors_note: |
  This would be good to skip or just touch on briefly if time is short.
  
  

  
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


R packages are collections of functions bundled together, typically with sample data sets
too. Most have been written by the R community. The diverse and ever expanding array of 
packages being created are one of the most important reasons to learn R. Most packages 
for R are hosted in the *CRAN Repository* (Comprhensive R Archive Network). At the 
time of writing there were 15111 available packages. No one knows them all, and 
it is not unusual to have several packages doing the same or similar things. This 
can make using packages a little daunting at first.

## Finding And Choosing Packages

Some packages are just so widely used, you will quickly learn about them in the course of your 
work. **ggplot2** and **dplyr** are good examples of this. We'll explore **ggplot2** in 
the next unit. Probably the most common way to discover packages is to come across them 
searching for a solution to a problem. For an example, lets say you want to make a
ternary plot. These are triangle shaped plots that are useful when plotting something 
that can be three states, say red, yellow or green cone cells in your retina (Figure 1 is an example). 
It doesn't matter too much if you know what it is. We are more interested in the process of 
discovering packages.

<figure class="centered">
  <img src="/assets/img/units/ternary_example.png" alt="An Example of a ternary plot" style="width:60%">
  <figcaption>Figure 1 - A ternary plot.</figcaption>
</figure>

If you search for "ternary plot r" in a search engine, you will likely come up with 
this [stack overflow page](https://stackoverflow.com/questions/10439123/making-a-ternary-plot). 
Stack overflow is usually a good source of answers. The first answer isn't that useful,
but the answer with the most up-votes looks useful. It suggests a package **ggtern**.  
There are a whole family of packages that work with the **ggplot2** package noted 
above so this sounds good.

If you search, or follow the link to the [**ggtern** home page](http://www.ggtern.com/)
you see that it is very well documented. Also notice there is a link to a [**Bit Bucket**
repository](https://bitbucket.org/nicholasehamilton/ggtern/src/master/), that shows that it
is still maintained. Based on this, one can feel pretty good about giving this package a try. 

> NOTE: Sometimes things still don't work out, don't be afraid to move on either.

Now that we have decided to use **ggtern** we need to install and load it. We won't 
install **ggtern** as it turns out to have a lot of dependencies (other packages it needs)
and takes a long time to install. Instead we'll install **ggplot2** since we'll be using that
in the future.

```r 

* installs the ggplot2 package
> install.packages("ggplot2")
Installing package into ‘/Users/rkolendo/Library/R/3.5/library’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.5/ggplot2_3.2.1.tgz'
Content type 'application/x-gzip' length 3961383 bytes (3.8 MB)
==================================================
downloaded 3.8 MB


The downloaded binary packages are in
	/var/folders/ry/rlw75hqj5_1_0_6g4dj9j8yd3v2ghw/T//RtmpdOfxtl/downloaded_packages
	
# Loads ggplot2 for use
> library(ggplot2)

```


## Try It Out

You can also use the GUI in R Studio. See if you can install the package **ggthemes** that
way. Why would you use the console when you can use the GUI?





