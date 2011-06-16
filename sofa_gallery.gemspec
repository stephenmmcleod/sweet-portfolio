# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sofa_gallery}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oleg Khabarov", "Stephen McLeod", "The Working Group Inc."]
  s.date = %q{2011-06-16}
  s.description = %q{}
  s.email = %q{stephen@theworkinggroup.ca}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/assets/images/sofa_gallery/jcrop.gif",
    "app/assets/javascripts/sofa_gallery/application.js",
    "app/assets/javascripts/sofa_gallery/jquery.jcrop.js",
    "app/assets/javascripts/sofa_gallery/jquery.js",
    "app/assets/javascripts/sofa_gallery/jquery_ui.js",
    "app/assets/javascripts/sofa_gallery/rails.js",
    "app/assets/stylesheets/sofa_gallery/application.css",
    "app/assets/stylesheets/sofa_gallery/jquery.jcrop.css",
    "app/assets/stylesheets/sofa_gallery/reset.css",
    "app/controllers/application_controller.rb",
    "app/controllers/gallery_admin/base_controller.rb",
    "app/controllers/gallery_admin/galleries_controller.rb",
    "app/controllers/gallery_admin/photos_controller.rb",
    "app/helpers/sofa_gallery_helper.rb",
    "app/models/sofa/gallery.rb",
    "app/models/sofa/photo.rb",
    "app/views/gallery_admin/_navigation.html.erb",
    "app/views/gallery_admin/galleries/_form.html.erb",
    "app/views/gallery_admin/galleries/edit.html.erb",
    "app/views/gallery_admin/galleries/index.html.erb",
    "app/views/gallery_admin/galleries/new.html.erb",
    "app/views/gallery_admin/photos/_form.html.erb",
    "app/views/gallery_admin/photos/crop.html.erb",
    "app/views/gallery_admin/photos/edit.html.erb",
    "app/views/gallery_admin/photos/index.html.erb",
    "app/views/gallery_admin/photos/new.html.erb",
    "app/views/layouts/gallery_admin/application.html.erb",
    "config.ru",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/initializers/paperclip.rb",
    "config/initializers/sofa_gallery.rb",
    "config/routes.rb",
    "db/migrate/01_create_sofa_gallery.rb",
    "lib/generators/README",
    "lib/generators/sofa_gallery_generator.rb",
    "lib/paperclip_processors/cropper.rb",
    "lib/sofa_gallery.rb",
    "lib/sofa_gallery/configuration.rb",
    "lib/sofa_gallery/engine.rb",
    "lib/sofa_gallery/form_builder.rb",
    "script/rails",
    "sofa_gallery.gemspec",
    "test/fixtures/files/default.jpg",
    "test/fixtures/files/default.txt",
    "test/fixtures/sofa/galleries.yml",
    "test/fixtures/sofa/photos.yml",
    "test/functional/galleries_controller_test.rb",
    "test/functional/photos_controller_test.rb",
    "test/test_helper.rb",
    "test/unit/configuration_test.rb",
    "test/unit/gallery_test.rb",
    "test/unit/photo_test.rb"
  ]
  s.homepage = %q{http://github.com/twg/sofa-gallery}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{SofaGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0.rc4"])
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0.rc4"])
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0.rc4"])
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

