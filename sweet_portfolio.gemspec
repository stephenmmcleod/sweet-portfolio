# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sweet_portfolio"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen McLeod", "The Working Group Inc."]
  s.date = "2013-04-19"
  s.description = "Sweet Portfolio is an image gallery engine with nice frontend capabilities for Rails 3.1 apps (and ComfortableMexicanSofa)"
  s.email = "work@stephenmmcleod.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".powrc",
    ".ruby-version",
    ".travis.yml",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/assets/images/sweet_portfolio/blank.gif",
    "app/assets/images/sweet_portfolio/border.png",
    "app/assets/images/sweet_portfolio/controls.png",
    "app/assets/images/sweet_portfolio/fancybox_loading.gif",
    "app/assets/images/sweet_portfolio/fancybox_overlay.png",
    "app/assets/images/sweet_portfolio/fancybox_sprite.png",
    "app/assets/images/sweet_portfolio/jcrop.gif",
    "app/assets/images/sweet_portfolio/loading.gif",
    "app/assets/images/sweet_portfolio/loading_background.png",
    "app/assets/images/sweet_portfolio/overlay.png",
    "app/assets/javascripts/sweet_portfolio/jquery.colorbox.js",
    "app/assets/javascripts/sweet_portfolio/jquery.fancybox-media.js",
    "app/assets/javascripts/sweet_portfolio/jquery.fancybox-thumbs.js",
    "app/assets/javascripts/sweet_portfolio/jquery.fancybox.pack.js",
    "app/assets/javascripts/sweet_portfolio/jquery.jcrop.js",
    "app/assets/stylesheets/sweet_portfolio/colorbox.css",
    "app/assets/stylesheets/sweet_portfolio/jquery.fancybox-thumbs.css",
    "app/assets/stylesheets/sweet_portfolio/jquery.fancybox.css",
    "app/assets/stylesheets/sweet_portfolio/jquery.jcrop.css",
    "app/controllers/admin/gallery/base_controller.rb",
    "app/controllers/admin/gallery/galleries_controller.rb",
    "app/controllers/admin/gallery/photos_controller.rb",
    "app/controllers/application_controller.rb",
    "app/helpers/gallery/application_helper.rb",
    "app/models/gallery/gallery.rb",
    "app/models/gallery/photo.rb",
    "app/views/admin/gallery/_navigation.html.erb",
    "app/views/admin/gallery/galleries/_form.html.haml",
    "app/views/admin/gallery/galleries/edit.html.haml",
    "app/views/admin/gallery/galleries/index.html.haml",
    "app/views/admin/gallery/galleries/new.html.haml",
    "app/views/admin/gallery/photos/_form.html.haml",
    "app/views/admin/gallery/photos/crop.html.haml",
    "app/views/admin/gallery/photos/edit.html.haml",
    "app/views/admin/gallery/photos/index.html.haml",
    "app/views/admin/gallery/photos/new.html.haml",
    "app/views/layouts/gallery/application.html.haml",
    "config.ru",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/initializers/paperclip.rb",
    "config/initializers/sweet_portfolio.rb",
    "config/routes.rb",
    "db/migrate/01_create_sweet_portfolio.rb",
    "lib/generators/sweet_portfolio/README",
    "lib/generators/sweet_portfolio/sweet_portfolio.rb",
    "lib/paperclip_processors/cropper.rb",
    "lib/sweet_portfolio.rb",
    "lib/sweet_portfolio/configuration.rb",
    "lib/sweet_portfolio/engine.rb",
    "lib/sweet_portfolio/form_builder.rb",
    "lib/sweet_portfolio/routing.rb",
    "lib/tasks/sweet_portfolio.rake",
    "script/rails",
    "sweet_portfolio.gemspec",
    "test/fixtures/files/default.jpg",
    "test/fixtures/files/default.txt",
    "test/fixtures/files/default2.jpg",
    "test/fixtures/gallery/galleries.yml",
    "test/fixtures/gallery/photos.yml",
    "test/functional/admin/gallery/galleries_controller_test.rb",
    "test/functional/admin/gallery/photos_controller_test.rb",
    "test/test_helper.rb",
    "test/unit/configuration_test.rb",
    "test/unit/gallery_test.rb",
    "test/unit/photo_test.rb"
  ]
  s.homepage = "https://github.com/stephenmmcleod/sweet-portfolio"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = ""

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<paperclip>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_runtime_dependency(%q<haml>, ["~> 4.0.1"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<paperclip>, [">= 2.3.0"])
      s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_dependency(%q<haml>, ["~> 4.0.1"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<paperclip>, [">= 2.3.0"])
    s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
    s.add_dependency(%q<haml>, ["~> 4.0.1"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

