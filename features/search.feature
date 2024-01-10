Feature: search feature

  Background:
    Given I am on "https://flip.ro/magazin/" page

  @search
  Scenario: Search Samsung products
    When I enter "Samsung" on the search bar
    And I click on the search button
    Then I should see "Samsung" as filter
    And I should have a list of "Samsung" products

  @search
  Scenario: Search Apple products
    When I enter "Apple" on the search bar
    And I click on the search button
    Then I should see "Apple" as filter
    And I should have a list of "Apple" products

  @search
  Scenario: Search Xiaomi products
    When I enter "Xiaomi" on the search bar
    And I click on the search button
    Then I should see "Xiaomi" as filter
    And I should have a list of "Xiaomi" products

  @search
  Scenario: Search Huawei products
    When I enter "Huawei" on the search bar
    And I click on the search button
    Then I should see "Huawei" as filter
    And I should have a list of "Huawei" products