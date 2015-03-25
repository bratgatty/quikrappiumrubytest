
Feature: Login


  @login
  Scenario: To verify that the user gets an alert when domain is not selected for the first time

    Given I am  on the application login page
    When i enter valid username as "bratgatty@gmail.com"
    And i enter valid password as "admin123"
    And i click on signin button
    Then i must see the text "You have signed in"