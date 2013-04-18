require 'sweet_portfolio'
require 'rails'
require 'paperclip'

module SweetPortfolio
  class Engine < Rails::Engine
    initializer 'sweet_portfolio.helper' do |app|
      if defined?(ComfortableMexicanSofa)
        # applying configuraion
        SweetPortfolio.configure do |conf|
          conf.admin_route_prefix = ComfortableMexicanSofa::Routing.admin
          conf.upload_options     = ComfortableMexicanSofa.config.upload_file_options
          conf.admin_controller   = 'CmsAdmin::BaseController'
          conf.form_builder       = 'ComfortableMexicanSofa::FormBuilder'
        end
        # applying nav elements
        ComfortableMexicanSofa::ViewHooks.add(:navigation, '/admin/gallery/navigation')
      end
    end
  end
end