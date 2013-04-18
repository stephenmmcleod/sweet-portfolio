# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = "sweet-portfolio"
  s.version = "0.2.0"
  s.authors       = ["Stephen McLeod"]
  s.email         = ["stephen@stephenmmcleod.com"]
  s.homepage      = "http://github.com/comfy/comfortable-mexican-sofa"
  s.summary       = ""
  s.description   = "ComfyGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)"
  
  s.files         = `git ls-files`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.licenses = ["MIT"]
  
  s.add_dependency 'rails',          '>= 3.1.0'
  s.add_dependency 'formatted_form', '>= 2.1.0'
  s.add_dependency 'active_link_to', '>= 1.0.0'
  s.add_dependency 'paperclip',      '>= 3.4.0'
  s.add_dependency 'redcarpet',      '>= 2.2.0'
  s.add_dependency 'jquery-rails',   '>= 2.2.0'
  s.add_dependency 'haml-rails',     '>= 0.3.0'
  s.add_dependency 'sass-rails',     '>= 3.1.0'
  s.add_dependency 'coffee-rails',   '>= 3.1.0'
end