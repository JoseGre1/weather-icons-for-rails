require File.expand_path('../lib/weather-icons-for-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['lekealem']
  gem.email         = ['lekealemasong@yahoo.de']
  gem.description   = 'I like weather-icons and I like rails.'
  gem.summary       = 'an asset gemification of the weather-icons icon font library'
  gem.homepage      = 'https://github.com/lasong/weather-icons-for-rails'
  gem.licenses      = ['MIT', 'SIL Open Font License']

  gem.files         = Dir['{app,lib}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  gem.test_files    = Dir['test/**/*']
  gem.name          = 'weather-icons-for-rails'
  gem.require_paths = ['lib']
  gem.version       = WeatherIconsFor::Rails::VERSION

  gem.add_dependency 'railties', '>= 4.1', '< 5.0'

  gem.add_development_dependency 'activesupport', '>= 4.1'
  gem.add_development_dependency 'sass-rails', '>= 0'

  gem.required_ruby_version = '>= 1.9.3'
end
