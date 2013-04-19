# Loading engine only if this is not a standalone installation
unless defined? SweetPortfolio::Application
  require File.expand_path('sweet_portfolio/engine', File.dirname(__FILE__))
end

[ 'sweet_portfolio/configuration',
  'sweet_portfolio/form_builder',
  'paperclip_processors/cropper',
  'sweet_portfolio/routing',
].each do |path|
  require File.expand_path(path, File.dirname(__FILE__))
end


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