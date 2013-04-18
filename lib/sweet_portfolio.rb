# Loading engine only if this is not a standalone installation
unless defined? SweetPortfolio::Application
  require File.expand_path('sweet_portfolio/engine', File.dirname(__FILE__))
end

require File.expand_path('sweet_portfolio/configuration', File.dirname(__FILE__))
require File.expand_path('sweet_portfolio/form_builder', File.dirname(__FILE__))
require File.expand_path('paperclip_processors/cropper', File.dirname(__FILE__))

module SweetPortfolio
  class << self
    
    def configure
      yield configuration
    end
    
    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration
    
  end
end