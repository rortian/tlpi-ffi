Feature: Shared Libraries
  As a native OS user
  I want to be able dynamically load shared libraries

  Scenario: Opening a library with dlopen
    When I open a shared library
    Then  I should still be okay

  Scenario: Finding a function with dlsym
    When I open a fun shared library
    Then I should be able to find a fun function in it

  Scenario: Finding out more from dladdr
    When I open a really sweet library
    Then I should know scary amounts of stuff about it
