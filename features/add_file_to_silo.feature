Feature: Add file to silo

  In order to save my data using the abstract dax interface
  As a ruby application developer
  I want to add a file to a silo

  Scenario: Create a file in a silo from a data buffer

    Given a silo named "test"
    And a data buffer containing
      """
      Some file contents
      """
    When I create a silo file named "file.txt" with a location "location"
    Then I can read a file named "file.txt" from "location"
    And it will contain
     """
     Some file contents
     """

