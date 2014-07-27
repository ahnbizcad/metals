source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '4.1.1'

gem 'haml-rails'
gem 'html2haml'

gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'

gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

gem 'uglifier', '>= 1.3.0'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sprockets-rails', :require => 'sprockets/railtie'

gem 'pg', '0.17.1'
gem 'heroku_secrets', git: 'https://github.com/alexpeattie/heroku_secrets.git'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false  
end


# Authentication.
gem 'devise'#, '3.2.3'


group :development do
  # Better errors on browser
  gem 'better_errors'
  # Config better errors
  #gem 'sprockets_better_errors'
  # See nested duck typed caller function names.
  gem "binding_of_caller"
  # Debugging power!
  gem 'pry-rails'
  # Adds step, next, finish and continue commands and breakpoints to Pry using byebug.
  gem 'pry-byebug'
  # Format output
  gem 'awesome_print'
  # Suppress assets in server output console
  gem 'quiet_assets'

  # Display related schema info in models
  gem 'annotate', ">=2.6.0"

  # For html2haml mass conversion
  # erubis is already included in action pack
  gem 'ruby_parser', '~> 3.1.1'
end

group :test do
  # English specs
  #gem 'cucumber-rails', :require => false
  # Databse cleaner to use with cucumber-rails
  #gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor', '0.0.2'
  #gem 'aws-sdk', "~> 1.0"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
