Feature: The clone call
  As a linux programmer
  I want to be able to call the crazy flexible clone system  call

  Scenario: Calling clone
    Given A process this is running in
    When I call clone
    Then Fundamental things should change
