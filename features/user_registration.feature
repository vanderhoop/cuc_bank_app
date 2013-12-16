Feature: User Registration
  As a unregistered user
  I want to sign up
  So that I can have a bank account

  Scenario: A user signs up
    Given an unregistered user named "Judy"
    When Judy signs up for the site
    Then she should have an account
    And it should say "Thanks for signing up"

  Scenario: A user signs up for the site without a name
    Given an unregistered user
    When they sign up for the site without a name
    Then they should not have an account
    And it should give an error that says You f'd up, nameless fellow
