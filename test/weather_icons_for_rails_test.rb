require 'test_helper'

class WeatherIconForRailsTest < ActionDispatch::IntegrationTest
  test 'engine is loaded' do
    assert_equal ::Rails::Engine, WeatherIconsFor::Rails::Engine.superclass
  end
end
