require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.run_server = false
Capybara.app_host = 'http://www.test.bbc.co.uk'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome
