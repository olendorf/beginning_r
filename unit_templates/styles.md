---
layout: page
title: Styling

order: 8
duration: 15
tutorial: true
instructors_notes: true

description: |
  With just a little knowledge of CSS and HTML you can change the look
  of your pages.
  
instructors_note: |

---

If you know some CSS, or are willing to learn, you can change the style
of your web pages. You can change colors, fonts, font sizes, and the 
position of elements. The easiest way to change that is to modify the.
`_sass/_custom.scss` file.

For example you can add the code below

```css
    .post-header {
      .site-title {
        color: #ffaaaa;
      }
    }
```

This will change the faint grey site title to feint grey. A full course in 
CSS is beyond our scope but here is what is happening.

If you look in the HTML source for this page (or use built in tools to inspect 
) you can find where the header is. It looks like below.

```html
    ...
    <header class="post-header">
      <div class="site-title">
        <h1 class="site-title"> Apprentice </h1>
      </div>
      <div class="unit-title">
        <h1 class="post-title">Styling</h1></div>
      <hr/>
    </header>
    ...
```

The CSS uses selectors, `.post-header .site-title` to select that element using
the classes in the HTML. Any element that matches those selectors will have
that style applied to it.

While learning CSS and CSS selectors can be tricky and take some learning,
its all you are really doing is matching selectors with styles.



