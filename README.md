# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


How to add otp
- add class register-01 to tag "body"
- add class "otp" class "fancybox"
- add id "#hiddenotp"

<!-- How to fix cross domain -->
1. Add gem to your Gemfile.
  `gem 'rack-cors', :require => 'rack/cors'`
2. Update your config/application.rb file by adding this:
  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*', :headers => :any, :methods => [:get, :post, :options]
    end
  end
3. Install
 `bundle install`