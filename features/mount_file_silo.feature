Feature: Mount file silo

  In order to access and manage my files through dax
  As a ruby application developer
  I want to mount a file silo

  The terminology "mount a file silo" is synonymous with "create a Dax::FileSilo
  model object" since that's exactly what "mounting" does. Likewise, a created
  Dax::FileSilo model object is also called a "mount point" by default.

  Scenario: Mount a direct, file-system silo

    A "direct, file-system silo" is one that simply exposes access to files
    stored in a directory hierarcy located on the local system's file system.
    The Dax::FileSilo instance is a Dax::FileSilo::DirectFileSystem sub-type.

    Given a local directory named "direct"
    When I mount it using a direct, file-system silo
    And I name the file silo "test"
    Then I can access a direct, file-system silo named "test"

