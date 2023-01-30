# Flyway migrations

Run:
```
$: cd flyway
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties
```

Output:
```
[INFO] --- flyway-maven-plugin:9.12.0:migrate (default-cli) @ db-migration ---
[INFO] Flyway Community Edition 9.12.0 by Redgate
[INFO] See what's new here: https://flywaydb.org/documentation/learnmore/releaseNotes#9.12.0
[INFO]
[INFO] Database: jdbc:h2:mem:DATABASE (H2 2.1)
[INFO] Creating schema "app-db" ...
[INFO] Creating Schema History table "app-db"."flyway_schema_history" ...
[INFO] Current version of schema "app-db": null
[INFO] Migrating schema "app-db" to version "1.0.0 - init"
[INFO] Migrating schema "app-db" to version "2.0.0 - add department"
[INFO] Migrating schema "app-db" to version "2.1.0 - link users and departments"
[INFO] Successfully applied 3 migrations to schema "app-db", now at version v2.1.0 (execution time 00:00.033s)
```
