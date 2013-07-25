# Flatstrap for Sass

`flatstrap-sass` is an Sass-powered version of [Little Spark's Flatstrap](http://littlesparkvt.com/flatstrap/), ready to drop right into your Sass powered applications.
It is based on the work by Thomas McDonald on [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass).

Enjoy.

## Usage

### Rails

In your Gemfile:

```ruby
gem 'sass-rails', '~> 3.2'
gem 'flatstrap-sass', '~> 2.3.1.0'
```

flatstrap-sass use the [Font Awesome Rails](https://github.com/bokmann/font-awesome-rails) gem to provide the [glyphicons](http://glyphicons.com/) support. Add the gem if you want to use the icons in your projects:

```ruby
gem 'font-awesome-rails'
```

`bundle install` and restart your server to make the files available.

#### CSS

In your application.css.scss file:

```scss
@import "flatstrap";
```

If you are using the font-awesome-rails, add also the require or import command to your application.css.scss (more info at the [font-awesome-rails doc](https://github.com/bokmann/font-awesome-rails#usage)):

```css
/*
 *= require font-awesome
 */
```
or

```scss
@import "font-awesome";
```

#### Javascripts

You can include the Bootstrap javascripts through two methods. In this case, Sprocket's `//= require` directives are useful, since there is no better alternative.

We have a helper that includes all available javascripts:

```js
// Loads all Bootstrap javascripts
//= require bootstrap
```

You can also load individual modules, provided you sort out any related dependencies.

```js
//= require bootstrap-scrollspy
//= require bootstrap-modal
//= require bootstrap-dropdown
```

Simples.

### Credits

All the credits goes to [Thomas McDonald](https://twitter.com/#!/thomasmcdonald_) and his fantastic job with [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass). For further documentation, consult its page.