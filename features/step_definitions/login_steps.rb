Given(/^I am on the application login page$/) do
  @@homepage_obj.navigate_to_login_screen
end

When(/^i enter valid username as "(.*?)"$/) do |arg1|
	@@login_obj.enter_user_name(arg1)

end

When(/^i enter valid password as "(.*?)"$/) do |arg1|
  @@login_obj.enter_password(arg1)
end

When(/^i click on signin button$/) do
	@@login_obj.tap_login_btn
end

Then (/^I must see the logout button$/) do
  @@login_obj.assert_logout_btn
end


When(/^I tap on Sign In button without entering email id and password$/) do
  @@login_obj.tap_login_btn
end

Then(/^I should see the text "([^"]*)"$/) do |popup|
  # get the message shown on the alert popup
  popup_text = @@login_obj.get_login_popup_msg

  #compare the expected and actual pop up messages shown
  popup_text.delete!("\n").should be == "#{popup}"
end

When(/^I tap on OK button the alert message should get dismissed$/) do
  @@login_obj.tap_ok_btn

end