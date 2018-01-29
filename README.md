archon_migration
============

The Archon to ArchivesSpace migration tool enables migration of data from an Archon instance to an ArchivesSpace instance. It is the most comprehensive and efficient option for people who have not previously migrated and want to migrate all of their Archon data to ArchivesSpace.

More instructions and a data mapping are available at on the ArchivesSpace migration tools and data mapping page at http://archivesspace.org/using-archivesspace/migration-tools-and-data-mapping/.

We recommend migrating to the latest version of ArchivesSpace when possible. Archon users who are ready to move to the latest version of ArchivesSpace should use version 2.0 of the tool. Archon users who wish to move into a pre-1.5.0 version of ArchivesSpace due to the container management changes should use version 1.0.1 of the tool.

## Running the Archon migration tool

1. Read the guidelines for migrating Archon data and prepare your data as needed (http://archivesspace.org/wp-content/uploads/2017/12/Archon-to-ArchivesSpace-Migration-Tool-Instructions.pdf).
2. Install ArchivesSpace and ensure that ArchivesSpace is running.
3. Get the latest JAR file release (https://github.com/archivesspace/archon-migration/releases/latest).
4. Double-click the JAR file to open up the migration tool interface.
5. Change the default information in the migration tool user interface as needed.
6. Press the "Copy To Archives Space" button to start the migration process.
7. Assess the migration using the migration report and clean up data as needed.

## Notes For Developers

To build this tool, use the IDE of your choice to build a standalone jar executable. Most of development work will probably take place on the following classes.

* ASpaceCopyUtil - This class essentially controls the migration process and interacts with the UI (dbCopyFrame) as well as the classes listed below.
* ASpaceMapper - Converts Archon JSON records to the ArchivesSpace JSON model.
* ASpaceClient - Saves records to ASpace through http post.
* ASpaceEnumUtil - Converts an Archon enum ID to the corresponding ASpace enum. Usually called by ASpaceMapper.
