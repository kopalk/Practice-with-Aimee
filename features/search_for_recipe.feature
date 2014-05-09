Feature: Searching for a food recipe

Scenario: Search for a recipe
  Given I am on the bbc food page
  And I search for recipe "chicken dumpling"
  When I click on a recipe under Food category
  Then I am taken to a recipe page
