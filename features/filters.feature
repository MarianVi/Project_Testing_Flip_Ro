Feature: filters feature

  Background:
    Given I am on "https://flip.ro/magazin/" page

  @filters1
  Scenario Outline: Verify category filter
    When I enter "<brand>" on the search bar
    And I click on the search button
    And I click on the "<filter>" checkbox
    Then I should have a list of "<model>" products
    Examples:
      | brand | filter    | model  |
      | Apple | Tablete   | iPad   |
      | Apple | Telefoane | iPhone |

  @filters2
  Scenario Outline: Verify price filter
    When I enter "<brand>" on the search bar
    And I click on the search button
    And I click on the "<range>" radio button
    Then I should have a list of products between "<range>" price
    Examples:
      | brand | range       |
      | Apple | 500-1.000   |
      | Apple | 1.000-1.500 |
      | Apple | 1.500-2.000 |
      | Apple | 2.000-3.000 |
      | Apple | 3.000-4.000 |

  @filters3
  Scenario Outline: Verify product condition filter
    When I enter "<brand>" on the search bar
    And I click on the search button
    And I click on the "<condition>" checkbox
    Then I should have a list of products described as "<condition>"
    Examples:
      | brand   | condition  |
      | Apple   | Ca nou     |
      | Apple   | Excelent   |
      | Apple   | Foarte bun |
      | Apple   | Bun        |
      | Samsung | Ca nou     |