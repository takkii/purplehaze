# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 3.3.6'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails'

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft'

# javascript next step.
gem 'jsbundling-rails'

# css next step.
gem 'cssbundling-rails'
gem 'font-awesome-sass'

# Use postgresql as the database for Active Record
gem 'pg'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma'

# Hotwire"s SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire"s modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# login form
gem 'devise', '>= 5.0.4'
gem 'devise-i18n'
gem 'devise-bootstrap-views'
gem 'paranoia'

# pagenate
gem 'dotenv-rails'
gem 'kaminari'
gem 'kaminari-i18n'
gem 'nokogiri'

# markdown
gem 'redcarpet'
gem 'rouge'

# uploads images
gem 'carrierwave'
gem 'rmagick'

# csv
gem 'csv'
gem 'roo'

# html tag delete
gem 'sanitize'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# The default gems starting from Ruby 3.5.0.
gem 'ostruct'

group :development, :test do
  #   rubocop
  #   gem 'rubocop', require: false
  #   gem 'rubocop-performance', require: false
  #   gem 'rubocop-rails', require: false

  gem 'tzinfo-data' if Gem.win_platform?
  gem 'wdm' if Gem.win_platform?
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # core tools in purplehaze.
  gem 'sheltered-girl'
  gem 'grouse'
  # Don't delete My Gemfile in Library.
  gem 'listen'
  # gem 'license_finder'
  gem 'logger', '1.6.4'
  gem 'reline', '0.6.0'
  gem 'io-console', '0.8.1'
  gem 'irb', '1.14.3'
  gem 'rdoc', '6.14.0'
end

group :test do
  #   Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  # gem 'webdrivers'
  # gem 'debug'
  gem 'rspec'
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 8.0.0'
  gem 'spring-commands-rspec'
end
