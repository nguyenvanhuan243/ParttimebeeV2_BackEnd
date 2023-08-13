source 'https://rubygems.org'
ruby "2.6.8"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'rotp'
gem 'rails-assets-sweetalert2'
gem 'sweet-alert2-rails'
gem "select2-rails"
gem 'phonelib'
gem 'open_uri_redirections'
gem 'cancancan', '~> 1.10'
gem 'faker'
gem 'paperclip'
gem 'gemoji'
gem 'koala'
gem 'rubocop', '~> 0.39.0'
gem 'will_paginate', '~> 3.1'
gem 'rack-cors', :require => 'rack/cors'
gem 'omniauth-facebook'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'apipie-rails'
gem 'figaro'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'dotenv-rails', require: 'dotenv/rails-now'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec'
  gem 'rspec-rails'
end
