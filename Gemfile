source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', :require => 'rack/cors'

gem 'image_processing', "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem "active_model_serializers", "~> 0.10.12"

gem 'bcrypt', '~> 3.1.7'

gem "jwt", "~> 2.5"

gem "faker", "~> 2.23"

gem 'simple_enum', '~> 2.3.0' , require: 'simple_enum/mongoid'

gem 'cloudinary'
gem "jsonapi-serializer", "~> 2.2"

#deployment gems

 gem 'sprockets', '~>3.0'

 gem "sprockets-rails"