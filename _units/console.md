---
layout: page   # This is required
title: The Console and R Studio   # This is required

order: 20    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 10 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  Working with a command line based program can be challenging for some. This unit
  will get you more comfortable using the R console and introduce some ideas for 
  building productive workflows and reproducible scripts.
  
  - Learn how to enter commands into the console.
  - Build scripts using the **History**
  - Explore variables using **Environment**

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


As noted before R is a command line tool. Typically we refer to it as the **_console_**. While this can be daunting for new users,
this is actually one of the benefits of working with R. While GUIs (Graphical User
Interfaces) may be easier to learn initially, it is difficult to repeat analysis with 
them, and it is also nearly impossible to share how you did them with others. This unit
will introduce you to working on the command line and also show a fairly simple 
workflow to help you easily record your analysis for future use.

## Basic Console

The console is the primary way you will interact with R and fundamentally it is very 
simple. You type something into it the console after the ">" and R does something. The
simplest, and least useful thing to do, is to just type in a value.

```r

> 4
[1] 4

```

You can also do math this way.

```r

> (4 + 4)/3
[1] 2.666667

```

This is all fine for very simple things, but to really make it useful we 
should assign the value to a variable.

```r
 
> x = (4 + 4)/3   # Notice there is no response.

```

If you look on the upper right panel in the **Environment** tab, you will see the value 
has been stored under the variable **x**. We can now use this for future analyses.

```r

> x = (4 + 4)/3
> y = 27
> y^x   # The carat "^" means to the power of. 2^2 = 4
[1] 6561

```

## Building a Script 

Open up a new script by clicking the green "+" icon at the top right of your window. 
When building up a complex analysis, it often takes trial and error to get what you want.
A typical workflow is to use the console to perfect your workflow then copy the 
commands over to your script. One way to do this is to use the **History** 
in the top right panel. Go there and you will see your commands listed. Select the line(s)
you want then click **To Source** and the command will be moved to your script. Do this
and make your script look like this.

```r

y = 27
x = (4 + 4)/3
print(y^x)   # The print function sends the result to your console.

```

Now on the **Environment** tab click the broom. This clears the your environment. Now 
put the cursor on your script to the first line and click the **Run** button. Notice
the *y* value is put back into memory. Click **Run** two more times and notice the results.

Clear your environment again (click the broom) and now click **Source** on your script.
This runs the entire script. Both are useful. **Run** is especially handy for stepping
through your script to debug them.


This method of building up scripts via the command line is very common. The technique of
clearing your environment is also very important. It is actually pretty easy to create 
a script that *works* because you have a variable in your environment that the script 
needs. By clearing the environment you can detect these problems and correct them.
