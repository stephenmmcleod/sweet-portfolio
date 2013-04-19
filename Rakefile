require File.expand_path('../config/application', __FILE__)
require 'rubygems'
require 'rake'

SweetPortfolio::Application.load_tasks

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = 'sweet_portfolio'
    gem.homepage    = 'https://github.com/stephenmmcleod/sweet-portfolio'
    gem.license     = 'MIT'
    gem.summary     = ''
    gem.description = 'Sweet Portfolio is an image gallery engine with nice frontend capabilities for Rails 3.1 apps (and ComfortableMexicanSofa)'
    gem.email       = 'work@stephenmmcleod.com'
    gem.authors     = ['Stephen McLeod', 'The Working Group Inc.']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end