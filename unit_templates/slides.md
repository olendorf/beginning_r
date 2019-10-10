---
layout: page
title: Presentation Slides

order: 6
duration: 15
tutorial: true
instructors_notes: true

description: |
  Often a workshop will require some presentation slides. This describes
  how to create a slide deck.
  
instructors_note: |

---

The Apprentice framework also allows you to create HTML slide presentations
using the [Reveal.js framework](). **NOTE:** Because GitHub pages restricts
what plug-ins can be used, some of the Reveal functions don't work there, 
namely **fragments** and **background transitions**. Also, if you have
used Reveal before, you must put each slide in a new file.

We won't get into the pros and cons of HTML presentations over something like
PowerPoint. They can both make great presentations and awful presentations. The main 
reason for HTML slides is that they are on the web, so they get indexed by 
search engines, don't require proprietary software, and are often mobile 
friendly. HTML presentations do have a learning curve, but in Apprentice
its no different than creating a unit.

Like units, slides live in the `_slides` directory, and each slide gets its 
own file structued like below.

```markdown

    ---
    order: 2
    ---
    
    ## My Slide
    
    This is the content
    
    <h3><em>Some HTML</em></h3>

```

This should look familiar. The order defines the order of the slide in the 
slide deck and works the same as units. Likewise, the content can be Markdown,
HTML or both. 

### Themes

Reveal JS comes with a number of themes. You can see which ones are available
by looking `reveal/css/theme` directory or 
[here](https://github.com/hakimel/reveal.js/#theming). You can change the theme 
in `_config.yml`.

```yml
   ...
   reveal_theme: solarized.css  # Or say sky.css for instance
   ...
```

### Slide Design

If you want to have more control of your slide layout, you may have to 
use a little HTML as the Reveal.js framework, Jekyll and Markdown don't seem to
always work as expected. There are some examples in the sample slide deck.
Just copy and modify to your needs.

If the slide themes provided don't really work for you, or you need to do some
adjustments to your slide, you can edit the CSS in `reveal/css/apprentice.css`.
Depending on where and how you are working on  your slides, you may need to 
restart the Jekyll server to see the changes.

If you want to contribute your own designs, feel free to do so as well.


