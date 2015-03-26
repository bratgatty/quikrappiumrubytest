
Feature: Login


  @invalid_login
  Scenario: To verify that the user gets an alert when user taps on sign in button without entering email id and password.

    Given I am on the application login page
    When I tap on Sign In button without entering email id and password
    Then I should see the text "-Please enter valid email address-Please enter password"
    When I tap on OK button the alert message should get dismissed




  @valid_login
  Scenario: To verify user can log into the app on entering valid email id and password.

    Given I am on the application login page
    When i enter valid username as "bratgatty@gmail.com"
    And i enter valid password as "admin123"
    And i click on signin button
    Then I must see the logout button