# Apprentice

A lightweight framework for creating workshops using jekyll and markdown (mostly).
Apprentice is intended to facilitate the creation and executation of workshops assuming
that a good workshop...

- Has a strong hands on component
- Has online material to refer to both before and after the workshop
- Integrated slide presentation
- Is well organized

The Apprentice framework is composed of 4 primary components.

1. A home page with prequisites and objectives and a table of contents
2. An online tutorial 
3. A slide deck for presentations
4. Instructors notes


## Useage


### Quick Start

If you are familiar with Jekyll, you can probably get going using the steps below. There is also a more comprehensive [tutorial and demo](https://olendorf.github.io/apprentice/) if you like.

1. Fork the repository or Create from Template.
2. Edit `_config.yml` as described in the comments
3. Edit `_data/objectives.yml` and `_data/prereqs.yml` to outline course
   objectives and prequisites.
4. Create, remove and edit files in `_units/` to create course units. `_units/overview.md`
   is documented with guidance.
5. Create, remove and edit files in `_slides/` to create presentation slides as needed.
6. Got to your GitHub pages site, all should be working.

### Running Apprentice Locally

Rather than doing your changes on GitHub, waiting for the changes to take effect, etc., It is much more efficient to 
work locally and use a local server to run your copy of apprenctice locally as well. The easiest way to do that is to 
use the `_config_dev.yml` to make any configuraiton changes you wish. Minimally the path to the supporting files will typically 
need to be changed. You may also have to install ruby if you are on a windows machine. To run apprentice (or any Jekyll based web site)
use the following commands in your terminal from your project's root directory.

    > bundle install    # installs the ruby gems you need to run the site
    
    # Depending on your machine you need to do one of the following
    
    > bundle exec jekyll serve
    
    # OR
    
    # This loads the both config files. If your environmental variables for $IP address and $PORT are not set
    # You can use `0.0.0.0` and `4000` respectively
    > jekyll serve --host $IP --port $PORT --baseurl '' --config _config.yml,_config_dev.yml
    
> PRO TIP: On Mac and Linus you can put this as an alias in your .bash_profile or .bashrc file.
> alias jstart="jekyll serve --host $IP --port $PORT --baseurl '' --config _config.yml,_config_dev.yml"


## Licensing

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
    <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" />
</a>
<br />
This work is licensed under a 
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
Creative Commons Attribution 4.0 International License</a>.

All content in this repository are licensed under the Creative Commons 4.0 - 
Attribution License or where applicable, as with software code, an Apache 2.0
Software License.


## Contributing

Contributions are welcome. You can contribute to this workshop by 

1. Submitting issues
2. Forking the repository, editing it and submitting your proposed changes as a pull request.

## Contributors

Rob Olendorf




