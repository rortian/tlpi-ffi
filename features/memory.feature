Feature: Memory Stuff
  I want to be able to allocate and deallocate memory

  Scenario: malloc!!!
    When I call malloc
    Then I get a pointer

  Scenario: malloc and then free
    When I call malloc
    Then I get a pointer
    And I can call free on it
