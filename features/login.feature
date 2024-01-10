Feature: login feature

  Background:
    Given I am on "https://flip.ro/autentifica-te/" page

  @login
  Scenario Outline: Login with different wrong credentials
    When I enter an "<email>" address
    And I enter a "<password>"
    And I click Acceseaza cont button
    Then I should see an "<error>" message
    Examples:
      | email                 | password | error                                                        |
      | asd@asd.c             | asd      | Te rugăm să verifici că adresa de e-mail este corectă.       |
      | user@email.com        | qwerty   | Această adresă de email nu este asociată unui cont existent. |
      | marvitest31@gmail.com | qwerty   | Parola curentă nu corespunde cu cea pe care ai introdus-o.   |
      | marvitest31@gmail.com | qwert    | Parola trebuie sa aiba cel putin 6 caractere                 |

  @login
  Scenario Outline: Login with correct credentials
    When I enter an "<email>" address
    And I enter a "<password>"
    And I click Acceseaza cont button
    Then I should receive a "<success>" message
    Examples:
      | email                 | password | success                      |
      | marvitest31@gmail.com | Test123  | Te-ai autentificat cu succes |