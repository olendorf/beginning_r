---
layout: page
title: Creating Units

order: 4
duration: 30
tutorial: true
instructors_notes: true

description: |
  In apprentice, nits are the primary building block of a workshop. The units
  can be what you want, but typically they would be something like steps in a 
  tutorial, descrete tasks in a workshop. We'll learn how to create, and 
  configure workshops to fit your needs.
  
instructors_note: |
  Provide any extra information an instructor might need here. This is 
  displayed in the **Instructors Notes** page, but is also viewable by 
  learners. 
  
  Leave blank or remove (comment out) if you like.

    
supporting_files:
  - file_name: some_file.txt
    link_text: Example file for this unit.
  - file_name: some_pic.png
  - file_name: variables.R
    link_text: Sample R script
---

## What are Units?

Units are the primary building block of the Apprentice framework. The units
can be what you want, but typically they would be something like steps in a 
tutorial, descrete tasks in a workshop. In Apprentice you can have them 
included in the online tutorial, the instructors notes, both or neither.
A unit consists of two parts, the **front matter** and the **content**.

## Understanding Front Matter


 The front matter provides the metadata and content that is consistent across 
units and is always bound on top and bottom by three hyphens and is [YAML 
format](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html).
The example below is from this unit.

```yml

    layout: page                # Required. Specifies page.html in _layouts
    title: Creating A Workshop  # Title of the unit. 
    
    order: 4                    # Order of the unit relative to others. Doesn't
                                # need to be consecutive or start with zero
                                # Units with -1, 0, 3, 7 will be sorted and
                                # pages displayed as 1, 2, 3, 4.
                              
    
    duration: 20                # How long the unit is expected to take. 
                          
    # If both of these are false, the unit is not used at all. 
    # Pagination and ordering of units is relative to the grouping.
    # So tutorial pages are ordered and paginated only with other 
    # tutorial pages. Same with instructor notes.
    tutorial: true              # If it is displayed on the online tutorial
    instructors_notes: true     # If it should be included in instructors notes
    
    # A description of the unit. Should be brief, to be used in lists of units.
    # Can be in markdown, the pipeline character "|" is required.
    description: |
      In apprentice, units are the primary building block of a workshop. The units
      can be what you want, but typically they would be something like steps in a 
      tutorial, descrete tasks in a workshop. We'll learn how to create, and 
      configure workshops to fit your needs.
      
      This **works** like markdown. 
      
    # Any comments to help an instructor, to be displayed in instructors notes.
    instructor_note: |
      Provide any extra information an instructor might need here. This is 
      displayed in the **Instructors Notes** page, but is also viewable by 
      learners.
      
    # You can include other files for learners to download. The files
    # should be in the `supporting_files` directory (or what is specified in
    # `_config.yml`). You can specify your own link text, or just use the 
    # file name.
    supporting_files:
      - file:
        file_name: some_file.txt
        link_text: Example text for this unit.
      - file:
        file_name: some_pic.png
```

## Creating Content

The **content** is everything after the front matter. It can be in markdown
or HTML. You can mix markdown and HTML too if pure markdown isn't giving
you what you want. We'll see that with figures in a future unit.

## Creating Units

The easiest way to create Unit is to copy an existing one, then editing it.
Copy this one and change the title, and order (if you leave them the same,
the framework can do strange things). Edit the content a little, then 
start up your server it isn't running and visit the website. You should see
the unit on the home page, and be able navigate directly to it via the table of
contents, and use the page navigation as well.

## Supporting Files

Because of the way Apprentice currently works, the links to the supporting 
files may not work locally. You can change the `_config.yml` to make them
point to your local instance, or wait until you deploy to your production 
instance to ensure they work. This will hopefully be improved on soon.





