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

  test 'stylesheets are served' do
    get '/assets/weather-icons.css'
    assert_weather_icons(response)
    get '/assets/weather-icons-wind.css'
    assert_weather_icons(response)
  end

  test 'stylesheets contain asset pipeline references to fonts' do
    get '/assets/weather-icons.css'
    v = WeatherIconsFor::Rails::WI_VERSION
    assert_match(
      "/assets/weathericons-regular-webfont.eot?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.eot?#iefix&v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.woff2?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.woff?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.ttf?v=#{v}",  response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.svg?v=#{v}#weather_iconsregular",
      response.body)

    get '/assets/weather-icons-wind.css'
    v = WeatherIconsFor::Rails::WI_VERSION
    assert_match(
      "/assets/weathericons-regular-webfont.eot?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.eot?#iefix&v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.woff2?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.woff?v=#{v}", response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.ttf?v=#{v}",  response.body)
    assert_match(
      "/assets/weathericons-regular-webfont.svg?v=#{v}#weather_iconsregular",
      response.body)
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path('../dummy/tmp', __FILE__)
  end

  def assert_weather_icons(response)
    assert_response :success
    assert_match(/font-family:\s*'weathericons';/, response.body)
  end
end
