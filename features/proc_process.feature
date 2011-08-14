Feature: The proc process information
  As a linux process
  I want to be able to understand some of the info
  in the procfs

  Scenario: Getting my info
    Given A linux process
    When I look at /proc/self/status
    Then I should have some info about myself

