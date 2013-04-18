
Sweet Portfolio is an image gallery engine for Rails 3.1 apps. Also it integrates with ComfortableMexicanSofa CMS Engine

## Installation

Add gem definition to your Gemfile:
    
    gem 'sweet_portfolio'
    
Then from the Rails project's root run:
    
    bundle install
    rails generate sweet_portfolio
    rake db:migrate

## Usage

You can immediately access admin area by going to /admin/galleries.

If you are using Sweet Portfolio on it's own take a look in the initializer: [/config/initializers/sweet\_portfolio.rb]( https://github.com/stephenmmcleod/sweet-portfolio/blob/master/config/initializers/sweet_portfolio.rb)
You probably want to set the admin controller to be something that handles user authentication within your app. Same goes for the admin\_route\_prefix.

If you are using SweetPortfolio in conjunction with ComfortableMexicanSofa everything will be configured automatically.

Also you may use provided [ColorBox](http://jacklmoore.com/colorbox/) javascript to display galleries. Just declare these for asset pipeline
    
    // in app/assets/javascripts/application.js
    //= require sweet_portfolio/jquery.colorbox
    
    // in app/assets/stylesheets/application.css
    //= require sweet_portfolio/colorbox

---

CMS Gallery is released under the [MIT license](https://github.com/stephenmmcleod/sweet-portfolio/raw/master/LICENSE) 

Copyright 2013 Stephen McLeod