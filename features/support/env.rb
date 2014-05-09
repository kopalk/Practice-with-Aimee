require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.run_server = false
Capybara.app_host = 'http://test.bbc.co.uk'
Capybara.default_driver = :selenium
