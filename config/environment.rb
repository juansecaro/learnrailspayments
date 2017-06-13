# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => "587",
  :authentication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'], #heroku config:get SENDGRID_PASSWORD
  :domain => 'heroku.com',
  :enable_startstls_auto => true



}
