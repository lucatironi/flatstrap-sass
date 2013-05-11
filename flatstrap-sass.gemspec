Gem::Specification.new do |s|
  s.name = "flatstrap-sass"
  s.version = '2.3.1.0'
  s.authors = ["Luca Tironi"]
  s.email = 'luca.tironi@gmail.com'
  s.summary = "Little Spark's Flatstrap (Bootstrap without rounded corners), converted to Sass and ready to drop into Rails or Compass"
  s.description = "Sass-powered version of Little Spark's Flatstrap, based on the work by Thomas McDonald on https://github.com/thomas-mcdonald/bootstrap-sass"
  s.homepage = "http://github.com/lucatironi/flatstrap-sass"
  s.license = "Apache 2.0"

  s.add_development_dependency 'compass'
  s.add_development_dependency 'sass-rails',         '~> 3.2'
  s.add_runtime_dependency     'sass',               '~> 3.2'
  s.add_runtime_dependency     'font-awesome-rails', '~> 3.0.2.0'

  s.files = Dir["vendor/**/*.{scss,js,png,otf,eot,ttf,woff}"] + Dir["lib/**/*"] + Dir["templates/**/*"] + ["README.md", "LICENSE"]
end