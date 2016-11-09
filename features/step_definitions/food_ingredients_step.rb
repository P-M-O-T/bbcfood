Given(/^I am on food ingredients page$/) do
  binding.pry
  food_ingredients = FoodIngredientsPage.new
  food_ingredients.load
end

When(/^I search recipe finder without text$/) do
  food_ingredients = FoodIngredientsPage.new
  food_ingredients.search_submit.click
end

Then(/^I should see warning message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

require 'watir-webdriver'
require 'cucumber'
require 'capybara/cucumber'
require 'rspec'


Given(/^I am on the "([^"]*)" page$/) do |arg|
  @browser = Watir::Browser.new :ff
  @browser.goto "https://accounts.ft.com/login"
end

When(/^I fill in "([^"]*)" field with "([^"]*)"$/) do |field_name, value|
  case field_name
    when "email address"
      @browser.text_field(:name => 'email').set(value)
    when "my password"
      @browser.text_field(:name => 'password').set(value)
    else
      puts "invalid field name"
  end
end

And(/^I click "([^"]*)" button$/) do |button|
  @browser.element(:css => '#submit-btn').click
end

Then(/^I should be logged in successfully$/) do
  Capybara.default_max_wait_time = 5
  expect(@browser.url) == 'http://www.ft.com'
end

And(/^I should see My Account$/) do
  page.should have_content('class', :text => 'o-header__nav-link')