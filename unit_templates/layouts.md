---
layout: page
title: Layouts

order: 7
duration: 20
tutorial: true
instructors_notes: true

description: |
  You can change layouts, add pages or change the style of your  workshop
  relatively easy with just a little knowledge of CSS and HTML.
  
instructors_note: |

---

This unit may be a bit advanced. You may want to just read it over, to get 
some background information if you don't have plans to really change the look
and feel of your workshops. Jekyll and the Apprentice framework are fairly 
adaptable to your needs. If you have some knowledge of HTML and CSS, or are 
willing to learn, there are few limits as to what you can do.

## Adding Pages

If you add a file to the top level directly, Jekyll will automatically 
make it available to you. For instance if you wanted to add a bibliography,
you can just create a `bibliography.md` file in the top level of your workshop
project. For this tutorial, we have provided a file called `bibliography.md.back`
for you to use, just change the name to `bibliography.md`. After a few moments go
to `your_base_url/bibliography` in a web browser you should see the page.

To add a link, lets modify the `_layouts/home.html` file. This is the layout
we use for `index.md`.  Alter the code to as shown.

{% raw %}
```html
<h3>Additional Pages</h3>
<ul>
  <!-- find this code in _layouts/home.html` -->
  {% if instructors_notes.size > 0 %}
    <li><a href="{{ site.baseurl }}/instructors_notes.html">Instructor's Notes</a></li>
  {% endif %}
  {% if slides.size > 0 %}
    <li><a href="{{ site.baseurl }}/slides.html">Slides</a></li>
  {% endif %}
  
  <!-- Add this code here -->
  <!-- need to see if the file exists -->
  <!-- so we loop through and check each file -->
  <!-- solution from https://stackoverflow.com/questions/16528783/check-for-existence-of-file-using-jekyll -->
  {% for file in site.static_files %}
    {% if file.path == "bibliography.md" %} 
      <!-- here is where we add our link to the new page -->            
      <li><a href="{{site.baseurl}}/bibliography">Bibliography</a></li>
    {% endif %}
  {% endfor %}
  <!-- stop here -->
</ul>
```
{% endraw %}

The HTML probably looks at least a little familiar but what is with all the
curly braces and percents? This is a language called *Liquid*, you can learn a 
lot about it in the [Jekyll documentation](https://jekyllrb.com/docs/home/) 
and the [Liquid documentation](https://help.shopify.com/en/themes/liquid). Liquid
is a pretty simple language, and therfore somewhat limited, but that also makes
it easier to use. 

Very briefly, these characters tell Jekyll that what is inside is Liquid and 
not HTML. The **_curly/precents_** {% raw %}`{% %}` 
denote process steps in *Liquid*, if/then statement, assignments and loops for 
instance. The **_curly/curlies_**, `{{ }}` {% endraw %} output the result for display. 

## Custom Layouts

Layouts are essentially a mix of HTML and Liquid that handle
repetitive aspects of your website, and also help give it a consistent look 
and feel. Layouts,also can call other layouts. This page for instance has the 
*page* layout specified in the front matter.

```yml
    ---
    layout: page
    title: Layouts and Themes
    
    order: 7
    ...
```

This directs Jeklyll to look in `_layouts/page.html` to know how to display 
the content on this page. If you open this page up in a web browser, you'll see
that it has front matter too, and specifies a *default* as a layout, which 
can be found at `_layouts/default.html`. Jekll sees this and applies the 
*default* layout, then the *page* layout. 

If you want to change something on your page, you typically will change it in 
a layout as we did above. If we edit `_layouts/page.html` like below...

```html
    ---
    layout: default
    ---
    <article class="post">
    
    <!-- Add this line -->
    <P> Look at me, I'm a cowboy! Howdy, howdy howd!!</P>
    
    <h1>{{ site.title }}</h1>
```


Everthing that uses the *page* layout will have this line on it. In a nutshell,
that is how you can change the layouts to your needs.




