# Liquibase migrations

Run:
```
$: cd liquibase
$: mvn clean liquibase:update
```

Output:
```
Starting Liquibase at 17:59:34 (version 4.19.0 #6648 built at 2023-01-17 15:02+0000)
[INFO] Set default schema name to PUBLIC
[INFO] Parsing Liquibase Properties File liquibase.properties for changeLog parameters
[INFO] Executing on Database: jdbc:h2:mem:DATABASE
[INFO] Successfully acquired change log lock
[INFO] Creating database history table with name: DATABASECHANGELOG
[INFO] Reading from DATABASECHANGELOG
Running Changeset: db/migration/create_users.xml::create_table_users::Alex
[INFO] Table users created
[INFO] ChangeSet db/migration/create_users.xml::create_table_users::Alex ran successfully in 5ms
Running Changeset: db/migration/create_departments.xml::create_table_departaments::Alex
[INFO] Table departaments created
[INFO] ChangeSet db/migration/create_departments.xml::create_table_departaments::Alex ran successfully in 2ms
Running Changeset: db/migration/link_users_and_departments.xml::link_users_and_departments::Alex
[INFO] Columns departments_id(int) added to users
[INFO] ChangeSet db/migration/link_users_and_departments.xml::link_users_and_departments::Alex ran successfully in 6ms
[INFO] Successfully released change log lock
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  1.463 s
[INFO] Finished at: 2023-01-30T17:59:35+04:00
[INFO] ------------------------------------------------------------------------
```
