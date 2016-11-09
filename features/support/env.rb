require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'


# Capybara.configure do |config|
#   config.default_driver = ENV['DRIVER'].to_sym
# end


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.use_default_driver

Capybara.javascript_driver = Capybara.default_driver
Capybara.current_driver = Capybara.default_driver
