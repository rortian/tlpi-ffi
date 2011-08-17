Feature: Shared Libraries
  As a native OS user
  I want to be able dynamically load shared libraries

  Scenario: Opening a library with dlopen
    When I open a shared library
    Then  I should still be okay
