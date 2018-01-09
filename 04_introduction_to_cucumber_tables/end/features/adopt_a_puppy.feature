Feature: Adopting A Puppy

  As an animal lover
  I want to adopt a puppy
  So that I can have a great companion and give a puppy a better life

Scenario: Adopt One Puppy
  Given I am looking for a puppy to adopt
  When I adopt the first puppy
  And I complete the adoption
  And I enter the name "Doug Morgan"
  And I enter the address "Cleveland, OH 44113"
  And I enter the contact email "doug.morgan@alpenglow.com"
  And I enter "Check" as the payment type
  And I place my order
  Then I should see the message "Thank you for adopting a puppy!"

Scenario: Checking out with a cucumber table
  Given I am looking for a puppy to adopt
  And I adopt the first puppy
  And I complete the adoption
  When I checkout using:
    | name           | address            | email           | payment_method |
    | Your Name Here | 1151 N Marginal Rd | you@example.com | Credit card    |
  Then I should see the message "Thank you for adopting a puppy!"
