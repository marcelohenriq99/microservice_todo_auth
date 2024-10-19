source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "7.2.1.1"
# Use postgresql as the database for Active Record
gem "pg", "1.5.8"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "6.4.3"
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors"
# Use devis and jwt for authentication services
gem "devise"
gem "devise-jwt"

group :development, :test do
  # Rspec for testing
  gem "rspec", "3.13.0"
  # Pry for debug
  gem "pry", "0.14.2"
  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end
