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

Scenario Outline: Adopting a puppy using a table
  Given I am looking for a puppy to adopt
  And I adopt the first puppy
  And I adopt another puppy
  And I adopt the second puppy
  And I complete the adoption
  And I checkout using "<payment_method>"
  Then I should see the message "Thank you for adopting a puppy!"
Examples:
    | payment_method |
    | Check          |
    | Credit card    |
