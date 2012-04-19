Feature: Mount silo

  In order to access and manage my files through dax
  As a ruby application developer
  I want to mount a silo

  Scenario: Mount a silo

    Given a local directory named "direct"
    When I mount the local directory using a silo, naming it "test"
    Then I can access a silo named "test"
    And it refers to the local directory

