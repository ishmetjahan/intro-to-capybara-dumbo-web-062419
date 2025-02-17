# Write your code here!
require 'sinatra'
require_relative './app'
run Application 

# Configure RSpec
RSpec.configure do |config|
    # Mixin the Capybara functionality into Rspec
    config.include Capybara::DSL
    config.order = 'default'
  end
   
  # Define the application we're testing
  def app
    # Load the application defined in config.ru
    Rack::Builder.parse_file('config.ru').first
  end
   
  # Configure Capybara to test against the application above.
  Capybara.app = app
