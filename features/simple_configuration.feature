Feature: Simple configuration

  In order to quickly get up-and-running using dax in my application
  As a ruby application developer
  I want to be able to configure dax in a simple manner

  Configuration of dax includes telling it what model class to use for managing
  silos and which to use for managing data files.

  Scenario: Configure dax to use ActiveRecord models

    Given a ruby application with ActiveRecord models
    When I configure dax to use an ActiveRecord class named "DaxSilo" for silos
    And I configure dax to use an ActiveRecord class named "DaxFile" for files
    Then "DaxSilo" should appear to be a dax model class for silos
    And "DaxFile" should appear to be a dax model class for files
    And dax should tell me that "DaxSilo" is the model class for silos
    And dax should tell me that "DaxFile" is the model class for files

