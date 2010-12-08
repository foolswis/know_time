Feature: time-traveler indicates start recording

  As a time-traveler
  I want to start recording
  So that I can record time

  Scenario: recording not yet started
    Given I am not yet recording time
    When I start the tracker
    Then the status should be "recording"
    And the time I started the tracker recorded.
