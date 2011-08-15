Feature: Time
  I want to be able to ask my OS,
  "What time is it?"

  Scenario: Getting the time with gettimeofday
    When I call gettimeofday
    Then I should know what time it is

  Scenario: Getting the time with time
    When I call time
    Then I should know the time

  Scenario: Getting a human readable string with ctime
    Given I have a pointer to a time returned by time
    Then I should have a string to look at when I call ctime
