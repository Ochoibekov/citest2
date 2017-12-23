require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'selenium-cucumber'
require 'selenium/webdriver'

Selenium::WebDriver::Chrome.driver_path = "./chromedriver"

Capybara.register_driver :chrome do |app|
	chrome_options = {
    browser: :chrome,
    options: ::Selenium::WebDriver::Chrome::Options.new()
  }
  chrome_options[:options].args << 'headless'
  Capybara::Selenium::Driver.new(app, chrome_options)
end

Capybara.javascript_driver = :chrome

Capybara.default_driver = Capybara.javascript_driver
Capybara.app_host = 'http://localhost:9292/'
