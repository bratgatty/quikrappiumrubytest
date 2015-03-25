Given(/^I am  on the home screen$/) do
  @@common_obj.assert_search_icon_exists
end

When(/^I tap on the search icon$/) do
  @@homepage_obj.tap_search_icon
end

Then(/^I should see the search text field$/) do
  @@search_obj.assert_search_field_exists
end

When(/^I enter a search string as "(.*?)"$/) do |arg1|
  @@search_obj.enter_search_text(arg1)

end

Then(/^I should see suggestions related to car$/) do

  @@search_obj.validate_suggestions

end

When(/^I select a suggestion$/) do
  @@search_obj.select_suggestion

end

Then(/^I should see search results$/) do
  @@search_obj.wait_for_results_to_load
  @@search_obj.validate_search_results

end