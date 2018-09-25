source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
#Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff
gem 'rails-i18n'
#Flexible authentication solution for Rails with Warden.
gem 'devise'
#Minimal authorization through OO design and pure Ruby classes
gem "pundit"
#Easy file attachment management for ActiveRecord
gem "paperclip", "~> 6.0.0"
#The safe Markdown parser, reloaded.
gem 'redcarpet'
#FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord.
gem 'friendly_id'
#A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
#Translations for the kaminari gem
gem 'kaminari-i18n'
#A Ruby Gem that wraps the functionality of jQuery Raty library, and provides optional IMDB style rating.
gem 'ratyrate'
#Biblioteca de integração em Ruby para Pagseguro
gem "pagseguro-oficial", "~> 2.5.0"

source 'https://rails-assets.org' do
  #Boostrap Notify
  gem 'rails-assets-bootstrap.growl'
  #Boostrap
  gem 'rails-assets-bootstrap', '3.3.7'
  #Bootbox JS
  gem 'rails-assets-bootbox'
  #Animate CSS
  gem 'rails-assets-animate-css'
  #Bootstrap Markdown
  gem 'rails-assets-bootstrap-markdown'
  #A markdown parser built for speed
  gem 'rails-assets-marked'
end

#Integration of RubyMoney - Money with Rails
gem 'money-rails', '~>1'
#Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
#Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
#Translations for the devise gem
gem 'devise-i18n'
#A gem to automate using jQuery with Rails
gem 'jquery-rails'
#jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  #Better error page for Rack apps
  gem 'better_errors'
  #Generate Entity-Relationship Diagrams for Rails applications
  gem 'rails-erd'
  #A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  #Markdown Lorem Ipsum generator
  gem 'doctor_ipsum'
  #O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
  gem 'lerolero_generator'
  #Catches mail and serves it through a dream.
  gem 'mailcatcher'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
