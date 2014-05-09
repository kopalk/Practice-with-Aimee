Given(/^I search for recipe "(.*?)"$/) do |search_term|
  fill_in 'blq-search-q', :with => search_term
  page.find('#blq-search-btn').click
end

When(/^I click on a recipe under Food category$/) do
  page.should have_css '#food-content'
  page.first('#food-content li a').click
end

Then(/^I am taken to a recipe page$/) do
  page.current_url.should include '/food/recipes'
end
