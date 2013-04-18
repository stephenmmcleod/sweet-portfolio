require File.expand_path('../test_helper', File.dirname(__FILE__))

class ConfigurationTest < ActiveSupport::TestCase
  
  def test_configuration_presense
    assert config = SweetPortfolio.configuration
    assert_equal 'ApplicationController',     config.admin_controller
    assert_equal 'SweetPortfolio::FormBuilder',  config.form_builder
  end
  
  def test_initialization_overrides
    SweetPortfolio.configuration.admin_route_prefix = 'admin'
    assert_equal 'admin', SweetPortfolio.configuration.admin_route_prefix
  end
  
end