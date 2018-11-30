# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Volcano::Application.configure do
  config.action_mailer.delivery_method = :smtp
end