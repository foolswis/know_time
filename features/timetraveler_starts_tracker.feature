Feature: time-traveler starts tracker

  As a time-traveler
  I want to to start the tracker
  So that I can record time

  Scenario: start tracker
    Given I am not yet recording time
    When I start the tracker
    Then I should see "Welcome to Know Time!"
    And I should see "Start recording? (y/n)"
