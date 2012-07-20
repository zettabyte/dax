Feature: Read file

  In order to get access to my file's data using dax
  As a ruby application developer
  I want to read data from my file

  Background:
    Given dax is configured with ActiveRecord models
    And a simple silo named "test" has mounted a local directory named "direct"

  Scenario: Read entire contents of file

    Given a file named "small-ascii-unix.txt", located in "subdir-a" in silo "test"
    When I read the entire contents of the file
    Then I should have a data buffer containing the following text in unix format
      """
      Line 1: file is "subdir-a/small-ascii-unix.txt"
      Line 2: another line of ASCII text
      Line 3: UNIX <LF> seperate lines
      """

