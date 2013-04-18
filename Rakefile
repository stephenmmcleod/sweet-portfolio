require File.expand_path('../config/application', __FILE__)
require 'rubygems'
require 'rake'

ComfyGallery::Application.load_tasks

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = 'sweet-portfolio'
    gem.homepage    = 'git@github.com:stephenmmcleod/sweet-portfolio.git'
    gem.license     = 'MIT'
    gem.summary     = ''
    gem.description = 'Sweet-Portfolio is an image gallery engine with nice frontend capabilities for Rails 3.1 apps (and ComfortableMexicanSofa)'
    gem.email       = 'work@stephenmmcleod.com'
    gem.authors     = ['Stephen McLeod', 'The Working Group Inc.']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end