---
layout: page
title: Configuration

order: 2
duration: 10
tutorial: true
instructors_notes: true
description: |
  Change the configuration settings for your workshop.
instructors_note: |
  Emphasize that the server needs to be restarted with any change in 
  `_config.yml`.

---

This is some extra markdown.
This is still the same line and paragraph.

The only way to make a new paragraph is to make two line returns.

*This is Italics*

**Bold**

__Alternative bold__

_Italics_

**_bold and italic _**

<div>
  <h1> HTML code</h1>
</div>

```ruby
 ThisObject.function param
```

Jekyll websites always use a `_config.yml` file to keep site wide settings such 
as **title** or **description**. The values set here are available from
from within your markdown or html using ` {{ site.setting_name }}`. You
will see and use this often as you work. You can also add your own
settings as needed.

The `_config.yml` is commented with more detailed instructions. To get started
we'll just change the most important ones. Make the changes below.

```yml

    title: <your workshop name>
    
    description: <describe your workshop>
    
    # Multiple authors go on the same line, just format how you like.
    # Same with companyies
    author:
      name: <your name(s)
      # url:  http://example.com/
      company:
          name: < your orgnization(s)
          # url:  http://example.com/
    
    # Any value is ok, Beginner|Intermediate|Advanced are recommended, required 
    level: Beginner
    
    # This needs to be set to your repository name, or it won't work on GitHub.
    # If you are deploying elsewhere it may not be necessary.
    # It is overridden if you are working locally when you start the server
    baseurl: "/repo_name"
```

If you are working locally restart your server to see the changes, which
should be evident on your workshop homepage. If you are working directly 
on GitHub pages, there server restarts automatically and may take a few minutes.

Some of the other settings will be dealt with in future units.
    












