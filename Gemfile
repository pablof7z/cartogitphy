source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :git => 'git://github.com/anjlab/bootstrap-rails.git'
end

group :worker do
  gem 'resque'
end

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

group :development do
  gem 'debugger'
  gem 'pry'
  gem 'guard-rspec'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rb-fsevent', '~> 0.9', require: false
end

group :test do
  gem 'rspec-rails'
  gem 'resque_spec'
end

gem 'haml'gem 'haml'