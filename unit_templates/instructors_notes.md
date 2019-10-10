---
layout: page
title: Instructors' Notes

order: 5
duration: 15
tutorial: true
instructors_notes: true

description: |
  Instructors' notes provide a way to plan and organize the content of 
  the a hands-on workshop, including setting up and a timeline. It also allows 
  for easier sharing of workshops, recording much of the knowledge that can 
  often be lost. 
  
instructors_note: |

---

Instructors's notes serve several purposes. The help an instructor plan 
and organize the course by pulling together the information from the 
units and creating a timeline. It also allows notes about any setup required.
In addition, this information is crucial for allowing others to use the 
workshop more easily. Most of the information is recorded in the 
Units front matter. This helps keep all the informaton current.

There are three parts to the Instructors' Notes,  a description and overview,
setup instructions, and a timeline.

## Overview

This section provides an opportunity to give general description of the workshop.
The overview is taken from the content of `instructors_notes.md` in the top
level of the directy (not `_units.md`, which is the tutorial about instructors' 
notes. Simply write it in markdown, html or both.

## Requirements and Setup

Requirements and Setup are simply anything that is necessary or useful for
a successful hands-on workshop. They are listed in the front matter of 
`instructors_notes.md` using this structure.

```yml
    # Each new setup item starts with a dash. Make sure the items under it
    # are indented correctly or the yaml won't parse.
    setup:
      - title: Name of the task
        description: |
          Provide a brief description of the task.
      - title: Name of another task
        description: |
          Provide a brief description of this task.
      - title: Oh. You need a little dummy text for your mockup? How quaint.
        description: |
          Chicharrones quinoa brooklyn, **_subway tile_** pug la croix activated charcoal 
          organic meditation craft beer raclette celiac. Flannel austin craft beer 
          listicle gastropub lomo squid pug. 8-bit kickstarter palo santo marfa 
    
          vegan godard waistcoat selfies chartreuse letterpress. Actually hell 
          of 3 wolf moon live-edge, everyday carry pop-up biodiesel tbh. 
          Mustache irony hot chicken, hoodie roof party pickled hella sartorial 
          biodiesel messenger bag shaman live-edge selfies.
```

## Timeline

The timeline allows instructors to plan the workshop, ensuring that topics are
covered and provides time estimates to make sure the required information gets
covered. The information is also used to estimate the worksho duration. It
can also be helpful for learners who might be working on the online portion,
or just wanting to follow along.

The timeline content is pulled from front matter the `_units/<unit_name>.md` 
files using the following keys.

```yml

    order: 5                 # Order it will be displayed in 
    duration: 20             # How long the unit is expected to take
    instructors_notes: true  # Set to false if this unit should not 
                             # be included in the instructors' notes.
    
    # The description of the unit
    description: |
      A description of the unit. This is displayed for each unit in the
      instructors' notes as well as other places.
    
    # Additional instructors.
    instructors_note: |
      These are combined with the the description in the instructors' notes.

```

Because the information for is kept with the units, as you move around units
or change the information for a unit, the instructors' notes are updated 
automatically.

If you prefer not to have instructors notes included in your workshop, just
delete or rename `instructors_notes.md` in the top level of your workshop
directory.

