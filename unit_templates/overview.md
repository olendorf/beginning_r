---
layout: page   # This is required
title: Overview   # This is required

order: 0    # Determines the order of units. Doesn't need to be consecutive though
            # or even start with zero, the pages will be displayed in their sort
            # order.

duration: 15 # A hint to how long it will take to cover this topic in mintues.

tutorial: true  # Set to true if you want this page displayed as a web page
instructors_notes: true  # Set to true if you want this displayed in instructors notes

# Provide a brief description of what the unit is about. You can use markdown
# notation for this.
description: |
  Describe what Apprentice is, its basic organization and philosphy.
  
  Descriptions are displayed in a few places.
  
instructors_note: |
  This is pulled to the instructors note field in `page.instructors_note` field.
  
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

## An Opinionated Framework

Apprentice is a Jekyll template for creating workshops. The concept was to
make it easy to create a hands-on workshop, or even better, multiple workshops, 
with a consistent structure and feel. It is opinionated in that it makes certain
assumptions about what a good workshop should be.

While the focus is on in person, hands-on learning, there should also
be a strong online component that learners can come back to as needed.

The content should be organized and open to all to view. 

The content in a workshop shouldn't rely in the creators' or past
instructors to be viable. Enough information should be given to allow reuse.

The workshops should be *web friendly* in that they are easily indexed 
and display well on browsers with no additional software needed.

The framework should be as easy as possible for instructors and content
creators to use and create workshops with. In practice, creating a 
Power Point presentation may be easier for one workshop, but it would not
fulfill most of the other requirements.

## Structure

Apprentice is composed of these parts.

- A highly informative home page
- An online tutorial that mirrors the content of the workshop
- Instructors notes and timeline for in-person workshops
- Presentation Slides for additional information
- Clearly defined prerequisites
- Clearly defined learning goals and objectives





