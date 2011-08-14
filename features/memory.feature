Feature: Memory Stuff
  I want to be able to allocate and deallocate memory

  Scenario: malloc!!!
    When I call malloc
    Then I get a pointer
