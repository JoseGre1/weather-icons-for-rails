# weather-icons-for-rails     [![Codeship](https://codeship.com/projects/3ffad060-5c59-0133-3ac8-22b0ee77d2e6/status?branch=master)](https://codeship.com/projects/110938)

weather-icons-for-rails provides the
[Weather Icons](http://erikflowers.github.io/weather-icons/) web fonts and
stylesheets as a Rails engine for use with the asset pipeline.

## Installation

Add this to your Gemfile:

```ruby
gem 'weather-icons-for-rails'
```

and run `bundle install`.

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require weather-icons
 */
```
In order to use the wind icons and API mappings, you must include `*= require weather-icons-wind`.

Then restart your webserver if it was previously running.

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`application.css.scss` file:

```scss
@import "weather-icons";
```

Include `@import "weather-icons-wind"` to use the wind icons and API mappings.

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

```sass
@import weather-icons
```

Include `@import weather-icons-wind` to use the wind icons and API mappings.

## License

* The Weather Icons font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* Weather Icons CSS files are
  licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
* The remainder of the weather-icons-for-rails project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
