Feature: Time
  I want to be able to ask my OS,
  "What time is it?"

  Scenario: Getting the time with gettimeofday
    When I call to gettimeofday
    Then I should know what time it is
