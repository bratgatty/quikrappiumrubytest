
Feature: Search


  @search_suggestion
  Scenario: To verify user can select an item from the suggestion and view the results

    Given I am  on the home screen
    When I tap on the search icon
    Then I should see the search text field
    When I enter a search string as "car"
    Then I should see suggestions related to car
    When I select a suggestion
    Then I should see search results
