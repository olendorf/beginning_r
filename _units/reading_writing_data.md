---
layout: page   # This is required
title: Importing and Exporting Data  # This is required

order: 70    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 5 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  - Import CSV 
  - Import Excel
  - Discuss other possibilities.
  
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

You will frequently need to both import and export data as you work. Fortunately 
R makes this quite easy. We will do this a bit backward just so we can keep 
using the handy sample data sets R provides. Typically you would do this with your own
data.

We'll use the `write.csv()` function. As always its a good idea to read the documentation
first `help("write.csv").` 

```r

write.csv(state.x77, file="my_state_x77.csv")


```

If you look in the **Files** tab in your lower right pane you should see this file 
created now. 

Now lets read it in using the complimentary function `read.csv()`.


```r

my_x77 <- read.csv("my_state_x77.csv")


```

## Try It Out

CSV (Comma Separated Value) files are often preferred. Compared to Excel or other 
spreadsheet documents, they can be read by anything, and they never become unreadable 
like older Excel documents become. However, you will often get Excel data. Research
methods to import this data to.

