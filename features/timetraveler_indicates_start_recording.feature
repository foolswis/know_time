Feature: time-traveler indicates start recording

  As a time-traveler
  I want to mark the start of timing
  So that I can later mark the end of timing when I'm done

  Scenario: recording not yet started
    Given I am not yet recording time
    When I indicate to mark the start of recording
    Then the status should be "recording"
    And the time I started the started recording stored.
