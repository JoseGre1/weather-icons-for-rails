require 'test_helper'

class WeatherIconForRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test 'engine is loaded' do
    assert_equal ::Rails::Engine, WeatherIconsFor::Rails::Engine.superclass
  end

  test 'fonts are served' do
    get '/assets/weathericons-regular-webfont.eot'
    assert_response :success
    get '/assets/weathericons-regular-webfont.woff2'
    assert_response :success
    get '/assets/weathericons-regular-webfont.woff'
    assert_response :success
    get '/assets/weathericons-regular-webfont.ttf'
    assert_response :success
    get '/assets/weathericons-regular-webfont.svg'
    assert_response :success
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path('../dummy/tmp', __FILE__)
  end
end
