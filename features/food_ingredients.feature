Feature: Food Ingredients

  As a user
  I want to search recipe finder
  So I can veiw recipes

 Scenario: Quick recipe finder
  Given I am on food ingredients page
  When I search recipe finder without text
  Then I should see warning message
