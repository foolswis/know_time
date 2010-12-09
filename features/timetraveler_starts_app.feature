Feature: time-traveler starts the application

  As a time-traveler
  I want to to start the application
  So that I can record time

  Scenario: start application
    Given the application is not running
    When I start the application
    Then I should see "Welcome to Know Time!"
    And I should see "Start recording? (y/n)"
