Feature: Processes
  As a linux process
  I want to be able to get process information

  Scenario: Getting my pid
    Given A process this is running in
    Then the brave programmer can determine the pid

  Scenario: Getting my parents pid
    Given A process this is running in
    Then the brave programmer can determine the ppid

  Scenario: Getting an enviroment variable with getenv
    When I ask for an enviroment variable "SHELL" via getenv
    Then it should be the same as "SHELL" from the ENV hash

  Scenario: Using the environ hash
    When I get the environ pointer
    Then I have a pointer that I can get all the environ strings
    And that should contain the same information as the ENV hash

