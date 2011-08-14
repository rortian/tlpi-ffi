Feature: Processes
  As a linux process
  I want to be able to get process information

  Scenario: Getting my pid
    Given A process this is running in
    Then the brave programmer can determine the pid

  Scenario: Getting my parents pid
    Given A process this is running in
    Then the brave programmer can determine the ppid

