# Flyway migrations

## Task-2. Using flyway repair
### 1. Run migrations V1-V9 + R1-R5
```
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties
```
Table `flyway_schema_history`:
```
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Category   | Version | Description                                         | Type | Installed On        | State   | Undoable |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Versioned  | 1       | create table customers                              | SQL  | 2023-03-16 06:52:54 | Success | No       |
| Versioned  | 2       | create tables orders                                | SQL  | 2023-03-16 06:52:57 | Success | No       |
| Versioned  | 3       | add column address to table customers               | SQL  | 2023-03-16 06:52:59 | Success | No       |
| Versioned  | 4       | add column status with value to table orders        | SQL  | 2023-03-16 06:53:01 | Success | No       |
| Versioned  | 5       | create table products                               | SQL  | 2023-03-16 06:53:03 | Success | No       |
| Versioned  | 6       | add column description to table products            | SQL  | 2023-03-16 06:53:05 | Success | No       |
| Versioned  | 7       | rename column name to first name at table customers | SQL  | 2023-03-16 06:53:07 | Success | No       |
| Versioned  | 8       | add columnt last name to table customers            | SQL  | 2023-03-16 06:53:10 | Success | No       |
| Versioned  | 9       | add column order date to table products             | SQL  | 2023-03-16 06:53:12 | Success | No       |
| Repeatable |         | 1 insert data to table products                     | SQL  | 2023-03-16 06:55:42 | Success |          |
| Repeatable |         | 2 insert data to table customers                    | SQL  | 2023-03-16 06:55:44 | Success |          |
| Repeatable |         | 3 insert data to table orders                       | SQL  | 2023-03-16 06:55:46 | Success |          |
| Repeatable |         | 4 update price at table products                    | SQL  | 2023-03-16 06:55:48 | Success |          |
| Repeatable |         | 5 update status at table orders                     | SQL  | 2023-03-16 06:55:50 | Success |          |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
```

### 2. Create `R__6_incorrect_sql.sql`, it’s invalid sql, because status field is not null, run it - got error
```
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties

...

[ERROR] Failed to execute goal org.flywaydb:flyway-maven-plugin:9.12.0:migrate (default-cli) on project db-migration: org.flywaydb.core.internal.command.DbMigrate$FlywayMigrateException: Migration R__6_incorrect_sql.sql failed
[ERROR] ---------------------------------------
[ERROR] SQL State  : HY000
[ERROR] Error Code : 1364
[ERROR] Message    : Field 'status' doesn't have a default value
[ERROR] Location   : db/migration/R__6_incorrect_sql.sql (/Users/amazhukin/Projects/db-migrations/flyway/db/migration/R__6_incorrect_sql.sql)
[ERROR] Line       : 1
[ERROR] Statement  : INSERT INTO orders (customer_id, total_price)
[ERROR] VALUES (1, 999.90)
```
and new row at `flyway_schema_history`:
```
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Category   | Version | Description                                         | Type | Installed On        | State   | Undoable |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Versioned  | 1       | create table customers                              | SQL  | 2023-03-16 06:52:54 | Success | No       |
| Versioned  | 2       | create tables orders                                | SQL  | 2023-03-16 06:52:57 | Success | No       |
| Versioned  | 3       | add column address to table customers               | SQL  | 2023-03-16 06:52:59 | Success | No       |
| Versioned  | 4       | add column status with value to table orders        | SQL  | 2023-03-16 06:53:01 | Success | No       |
| Versioned  | 5       | create table products                               | SQL  | 2023-03-16 06:53:03 | Success | No       |
| Versioned  | 6       | add column description to table products            | SQL  | 2023-03-16 06:53:05 | Success | No       |
| Versioned  | 7       | rename column name to first name at table customers | SQL  | 2023-03-16 06:53:07 | Success | No       |
| Versioned  | 8       | add columnt last name to table customers            | SQL  | 2023-03-16 06:53:10 | Success | No       |
| Versioned  | 9       | add column order date to table products             | SQL  | 2023-03-16 06:53:12 | Success | No       |
| Repeatable |         | 1 insert data to table products                     | SQL  | 2023-03-16 06:55:42 | Success |          |
| Repeatable |         | 2 insert data to table customers                    | SQL  | 2023-03-16 06:55:44 | Success |          |
| Repeatable |         | 3 insert data to table orders                       | SQL  | 2023-03-16 06:55:46 | Success |          |
| Repeatable |         | 4 update price at table products                    | SQL  | 2023-03-16 06:55:48 | Success |          |
| Repeatable |         | 5 update status at table orders                     | SQL  | 2023-03-16 06:55:50 | Success |          |
| Repeatable |         | 6 incorrect sql                                     | SQL  |                     | Pending |          |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
```

### 3. Need to repair migration state, so run `flyway:repair`
```
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties

...

[INFO] Successfully repaired schema history table `b1l1txrjhdyi48snv5yp`.`flyway_schema_history` (execution time 00:03.707s).
[INFO] Manual cleanup of the remaining effects of the failed migration may still be required.
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```
Table `flyway_schema_history`:
```
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Category   | Version | Description                                         | Type | Installed On        | State   | Undoable |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Versioned  | 1       | create table customers                              | SQL  | 2023-03-16 06:52:54 | Success | No       |
| Versioned  | 2       | create tables orders                                | SQL  | 2023-03-16 06:52:57 | Success | No       |
| Versioned  | 3       | add column address to table customers               | SQL  | 2023-03-16 06:52:59 | Success | No       |
| Versioned  | 4       | add column status with value to table orders        | SQL  | 2023-03-16 06:53:01 | Success | No       |
| Versioned  | 5       | create table products                               | SQL  | 2023-03-16 06:53:03 | Success | No       |
| Versioned  | 6       | add column description to table products            | SQL  | 2023-03-16 06:53:05 | Success | No       |
| Versioned  | 7       | rename column name to first name at table customers | SQL  | 2023-03-16 06:53:07 | Success | No       |
| Versioned  | 8       | add columnt last name to table customers            | SQL  | 2023-03-16 06:53:10 | Success | No       |
| Versioned  | 9       | add column order date to table products             | SQL  | 2023-03-16 06:53:12 | Success | No       |
| Repeatable |         | 1 insert data to table products                     | SQL  | 2023-03-16 06:55:42 | Success |          |
| Repeatable |         | 2 insert data to table customers                    | SQL  | 2023-03-16 06:55:44 | Success |          |
| Repeatable |         | 3 insert data to table orders                       | SQL  | 2023-03-16 06:55:46 | Success |          |
| Repeatable |         | 4 update price at table products                    | SQL  | 2023-03-16 06:55:48 | Success |          |
| Repeatable |         | 5 update status at table orders                     | SQL  | 2023-03-16 06:55:50 | Success |          |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
```

### 4. Update `R__6_incorrect_sql.sql`, rename to `R__6_correct_sql.sql` (pushed this file as __R__6_correct_sql.sql) and run migration again:

```
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties

...

[INFO] Migrating schema `b1l1txrjhdyi48snv5yp` with repeatable migration "6 correct sql"
[INFO] Successfully applied 1 migration to schema `b1l1txrjhdyi48snv5yp` (execution time 00:03.134s)
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```

Table `flyway_schema_history`:
```
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Category   | Version | Description                                         | Type | Installed On        | State   | Undoable |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
| Versioned  | 1       | create table customers                              | SQL  | 2023-03-16 06:52:54 | Success | No       |
| Versioned  | 2       | create tables orders                                | SQL  | 2023-03-16 06:52:57 | Success | No       |
| Versioned  | 3       | add column address to table customers               | SQL  | 2023-03-16 06:52:59 | Success | No       |
| Versioned  | 4       | add column status with value to table orders        | SQL  | 2023-03-16 06:53:01 | Success | No       |
| Versioned  | 5       | create table products                               | SQL  | 2023-03-16 06:53:03 | Success | No       |
| Versioned  | 6       | add column description to table products            | SQL  | 2023-03-16 06:53:05 | Success | No       |
| Versioned  | 7       | rename column name to first name at table customers | SQL  | 2023-03-16 06:53:07 | Success | No       |
| Versioned  | 8       | add columnt last name to table customers            | SQL  | 2023-03-16 06:53:10 | Success | No       |
| Versioned  | 9       | add column order date to table products             | SQL  | 2023-03-16 06:53:12 | Success | No       |
| Repeatable |         | 1 insert data to table products                     | SQL  | 2023-03-16 06:55:42 | Success |          |
| Repeatable |         | 2 insert data to table customers                    | SQL  | 2023-03-16 06:55:44 | Success |          |
| Repeatable |         | 3 insert data to table orders                       | SQL  | 2023-03-16 06:55:46 | Success |          |
| Repeatable |         | 4 update price at table products                    | SQL  | 2023-03-16 06:55:48 | Success |          |
| Repeatable |         | 5 update status at table orders                     | SQL  | 2023-03-16 06:55:50 | Success |          |
| Repeatable |         | 6 correct sql                                       | SQL  | 2023-03-16 07:12:51 | Missing |          |
+------------+---------+-----------------------------------------------------+------+---------------------+---------+----------+
```
