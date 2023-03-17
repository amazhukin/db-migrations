# Flyway migrations

## Task-3. Lgging
### Run:
```
$: mvn clean flyway:migrate -Dflyway.configFiles=myFlywayConfig.properties -Dlog4j.configurationFile=log4j2.xml
```
You will get

<details>
	<summary>Output</summary>

```
[INFO] Scanning for projects...
[INFO]
[INFO] ---------------< com.example.migration.db:db-migration >----------------
[INFO] Building db-migration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[WARNING] The artifact mysql:mysql-connector-java:jar:8.0.32 has been relocated to com.mysql:mysql-connector-j:jar:8.0.32
[INFO]
[INFO] --- maven-clean-plugin:3.1.0:clean (default-clean) @ db-migration ---
[INFO]
[INFO] --- flyway-maven-plugin:9.12.0:migrate (default-cli) @ db-migration ---
15:43:13.511 [main] INFO  org.flywaydb.core.internal.license.VersionPrinter - Flyway Community Edition 9.12.0 by Redgate
15:43:13.513 [main] INFO  org.flywaydb.core.internal.license.VersionPrinter - See what's new here: https://flywaydb.org/documentation/learnmore/releaseNotes#9.12.0
15:43:13.513 [main] INFO  org.flywaydb.core.internal.license.VersionPrinter -
15:43:13.517 [main] DEBUG org.flywaydb.core.internal.util.FeatureDetector - AWS SDK available: false
15:43:13.517 [main] DEBUG org.flywaydb.core.internal.util.FeatureDetector - Google Cloud Storage available: false
15:43:13.518 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Scanning for filesystem resources at 'db/migration'
15:43:13.518 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Scanning for resources in path: db/migration (db/migration)
15:43:13.520 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__1_insert_data_to_table_products.sql
15:43:13.520 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__2_insert_data_to_table_customers.sql
15:43:13.520 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__3_insert_data_to_table_orders.sql
15:43:13.520 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__4_update_price_at_table_products.sql
15:43:13.520 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__5_update_status_at_table_orders.sql
15:43:13.521 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql
15:43:13.521 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql
15:43:13.521 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U9__drop_column_order_date_at_table_products.sql
15:43:13.521 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V1__create_table_customers.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V2__create_tables_orders.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V3__add_column_address_to_table_customers.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V4__add_column_status_with_value_to_table_orders.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V5__create_table_products.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V6__add_column_description_to_table_products.sql
15:43:13.522 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V7__rename_column_name_to_first_name_at_table_customers.sql
15:43:13.523 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V8__add_columnt_last_name_to_table_customers.sql
15:43:13.523 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V9__add_column_order_date_to_table_products.sql
15:43:13.523 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/__R__6_correct_sql.sql
15:43:13.523 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/__R__6_incorrect_sql.sql
15:43:13.526 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Unable to load config file: /Users/amazhukin/flyway.conf
15:43:13.526 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Unable to load config file: /Users/amazhukin/Projects/db-migrations/flyway/flyway.conf
15:43:13.526 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Loading config file: /Users/amazhukin/Projects/db-migrations/flyway/myFlywayConfig.properties
15:43:13.526 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Scanning for classpath resources at 'classpath:db/callback' ...
15:43:13.526 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Determining location urls for classpath:db/callback using ClassLoader ClassRealm[plugin>org.flywaydb:flyway-maven-plugin:9.12.0, parent: jdk.internal.loader.ClassLoaders$AppClassLoader@277050dc] ...
15:43:13.527 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Unable to resolve location classpath:db/callback.
15:43:13.527 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__1_insert_data_to_table_products.sql
15:43:13.527 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__2_insert_data_to_table_customers.sql
15:43:13.527 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__3_insert_data_to_table_orders.sql
15:43:13.527 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__4_update_price_at_table_products.sql
15:43:13.528 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__5_update_status_at_table_orders.sql
15:43:13.528 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U7__revert_rename_column_name_to_first_name_at_table_customers.sql
15:43:13.528 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U8__drop_columnt_last_name_at_table_customers.sql
15:43:13.528 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U9__drop_column_order_date_at_table_products.sql
15:43:13.528 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V1__create_table_customers.sql
15:43:13.529 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V2__create_tables_orders.sql
15:43:13.529 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V3__add_column_address_to_table_customers.sql
15:43:13.529 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V4__add_column_status_with_value_to_table_orders.sql
15:43:13.529 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V5__create_table_products.sql
15:43:13.529 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V6__add_column_description_to_table_products.sql
15:43:13.530 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V7__rename_column_name_to_first_name_at_table_customers.sql
15:43:13.530 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V8__add_columnt_last_name_to_table_customers.sql
15:43:13.530 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V9__add_column_order_date_to_table_products.sql
15:43:13.530 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating __R__6_correct_sql.sql
15:43:13.530 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating __R__6_incorrect_sql.sql
15:43:13.530 [main] INFO  org.flywaydb.core.internal.resource.ResourceNameValidator - 5 SQL migrations were detected but not run because they did not follow the filename convention.
15:43:13.531 [main] INFO  org.flywaydb.core.internal.resource.ResourceNameValidator - If this is in error, set 'validateMigrationNaming' to true to fail fast and see a list of the invalid file names.
15:43:14.737 [main] INFO  org.flywaydb.core.internal.database.base.BaseDatabaseType - Database: jdbc:mysql://b1l1txrjhdyi48snv5yp-mysql.services.clever-cloud.com:3306/b1l1txrjhdyi48snv5yp (MySQL 8.0)
15:43:14.737 [main] DEBUG org.flywaydb.core.internal.database.base.BaseDatabaseType - Driver  : MySQL Connector/J mysql-connector-j-8.0.32 (Revision: fa4912a849140828e48162a2c396c8df0091bed7)
15:43:14.942 [main] DEBUG org.flywaydb.database.mysql.MySQLDatabase - Detected GTID consistency being enforced
15:43:14.943 [main] DEBUG org.flywaydb.core.FlywayExecutor - DDL Transactions Supported: false
15:43:14.945 [main] DEBUG org.flywaydb.core.internal.schemahistory.SchemaHistoryFactory - Schemas:
15:43:14.946 [main] DEBUG org.flywaydb.core.internal.schemahistory.SchemaHistoryFactory - Default schema: null
15:43:15.134 [main] DEBUG org.flywaydb.database.mysql.MySQLConnection - Disabled user variable reset as performance_schema.user_variables_by_threadcannot be queried (SQL State: 42000, Error Code: 1142)
15:43:15.678 [main] DEBUG org.flywaydb.core.internal.callback.SqlScriptCallbackFactory - Scanning for SQL callbacks ...
15:43:15.782 [main] DEBUG org.flywaydb.core.internal.command.DbValidate - Validating migrations ...
15:43:15.872 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__1_insert_data_to_table_products.sql (filename: R__1_insert_data_to_table_products.sql)
15:43:15.873 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__2_insert_data_to_table_customers.sql (filename: R__2_insert_data_to_table_customers.sql)
15:43:15.873 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__3_insert_data_to_table_orders.sql (filename: R__3_insert_data_to_table_orders.sql)
15:43:15.873 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__4_update_price_at_table_products.sql (filename: R__4_update_price_at_table_products.sql)
15:43:15.873 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__5_update_status_at_table_orders.sql (filename: R__5_update_status_at_table_orders.sql)
15:43:15.873 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql (filename: U7__revert_rename_column_name_to_first_name_at_table_customers.sql)
15:43:15.874 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql (filename: U8__drop_columnt_last_name_at_table_customers.sql)
15:43:15.874 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U9__drop_column_order_date_at_table_products.sql (filename: U9__drop_column_order_date_at_table_products.sql)
15:43:15.874 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_correct_sql.sql (filename: __R__6_correct_sql.sql)
15:43:15.874 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_incorrect_sql.sql (filename: __R__6_incorrect_sql.sql)
15:43:15.885 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql (filename: U7__revert_rename_column_name_to_first_name_at_table_customers.sql)
15:43:15.885 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql (filename: U8__drop_columnt_last_name_at_table_customers.sql)
15:43:15.886 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U9__drop_column_order_date_at_table_products.sql (filename: U9__drop_column_order_date_at_table_products.sql)
15:43:15.886 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V1__create_table_customers.sql (filename: V1__create_table_customers.sql)
15:43:15.886 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V2__create_tables_orders.sql (filename: V2__create_tables_orders.sql)
15:43:15.886 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V3__add_column_address_to_table_customers.sql (filename: V3__add_column_address_to_table_customers.sql)
15:43:15.887 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V4__add_column_status_with_value_to_table_orders.sql (filename: V4__add_column_status_with_value_to_table_orders.sql)
15:43:15.887 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V5__create_table_products.sql (filename: V5__create_table_products.sql)
15:43:15.887 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V6__add_column_description_to_table_products.sql (filename: V6__add_column_description_to_table_products.sql)
15:43:15.887 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V7__rename_column_name_to_first_name_at_table_customers.sql (filename: V7__rename_column_name_to_first_name_at_table_customers.sql)
15:43:15.888 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V8__add_columnt_last_name_to_table_customers.sql (filename: V8__add_columnt_last_name_to_table_customers.sql)
15:43:15.888 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V9__add_column_order_date_to_table_products.sql (filename: V9__add_column_order_date_to_table_products.sql)
15:43:15.888 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_correct_sql.sql (filename: __R__6_correct_sql.sql)
15:43:15.888 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_incorrect_sql.sql (filename: __R__6_incorrect_sql.sql)
15:43:16.383 [main] INFO  org.flywaydb.core.internal.command.DbValidate - Successfully validated 16 migrations (execution time 00:00.599s)
15:43:16.587 [main] DEBUG org.flywaydb.core.internal.command.DbSchemas - Skipping creation of existing schema: `b1l1txrjhdyi48snv5yp`
15:43:17.455 [main] INFO  org.flywaydb.core.internal.command.DbMigrate - Current version of schema `b1l1txrjhdyi48snv5yp`: 9
15:43:17.566 [main] INFO  org.flywaydb.core.internal.command.DbMigrate - Schema `b1l1txrjhdyi48snv5yp` is up to date. No migration necessary.
15:43:18.113 [main] DEBUG org.flywaydb.core.FlywayExecutor - Memory usage: 24 of 256M
15:43:18.114 [main] DEBUG org.flywaydb.core.internal.util.FeatureDetector - AWS SDK available: false
15:43:18.114 [main] DEBUG org.flywaydb.core.internal.util.FeatureDetector - Google Cloud Storage available: false
15:43:18.115 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Scanning for filesystem resources at 'db/migration'
15:43:18.115 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Scanning for resources in path: db/migration (db/migration)
15:43:18.116 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__1_insert_data_to_table_products.sql
15:43:18.116 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__2_insert_data_to_table_customers.sql
15:43:18.116 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__3_insert_data_to_table_orders.sql
15:43:18.116 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__4_update_price_at_table_products.sql
15:43:18.116 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/R__5_update_status_at_table_orders.sql
15:43:18.117 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql
15:43:18.117 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql
15:43:18.117 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/U9__drop_column_order_date_at_table_products.sql
15:43:18.117 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V1__create_table_customers.sql
15:43:18.117 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V2__create_tables_orders.sql
15:43:18.118 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V3__add_column_address_to_table_customers.sql
15:43:18.118 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V4__add_column_status_with_value_to_table_orders.sql
15:43:18.118 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V5__create_table_products.sql
15:43:18.118 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V6__add_column_description_to_table_products.sql
15:43:18.118 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V7__rename_column_name_to_first_name_at_table_customers.sql
15:43:18.119 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V8__add_columnt_last_name_to_table_customers.sql
15:43:18.119 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/V9__add_column_order_date_to_table_products.sql
15:43:18.119 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/__R__6_correct_sql.sql
15:43:18.119 [main] DEBUG org.flywaydb.core.internal.scanner.filesystem.FileSystemScanner - Found filesystem resource: db/migration/__R__6_incorrect_sql.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__1_insert_data_to_table_products.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__2_insert_data_to_table_customers.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__3_insert_data_to_table_orders.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__4_update_price_at_table_products.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating R__5_update_status_at_table_orders.sql
15:43:18.120 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U7__revert_rename_column_name_to_first_name_at_table_customers.sql
15:43:18.121 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U8__drop_columnt_last_name_at_table_customers.sql
15:43:18.121 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating U9__drop_column_order_date_at_table_products.sql
15:43:18.121 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V1__create_table_customers.sql
15:43:18.121 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V2__create_tables_orders.sql
15:43:18.121 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V3__add_column_address_to_table_customers.sql
15:43:18.122 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V4__add_column_status_with_value_to_table_orders.sql
15:43:18.122 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V5__create_table_products.sql
15:43:18.122 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V6__add_column_description_to_table_products.sql
15:43:18.122 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V7__rename_column_name_to_first_name_at_table_customers.sql
15:43:18.122 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V8__add_columnt_last_name_to_table_customers.sql
15:43:18.123 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating V9__add_column_order_date_to_table_products.sql
15:43:18.123 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating __R__6_correct_sql.sql
15:43:18.123 [main] DEBUG org.flywaydb.core.internal.resource.ResourceNameValidator - Validating __R__6_incorrect_sql.sql
15:43:18.123 [main] INFO  org.flywaydb.core.internal.resource.ResourceNameValidator - 5 SQL migrations were detected but not run because they did not follow the filename convention.
15:43:18.123 [main] INFO  org.flywaydb.core.internal.resource.ResourceNameValidator - If this is in error, set 'validateMigrationNaming' to true to fail fast and see a list of the invalid file names.
15:43:19.076 [main] DEBUG org.flywaydb.database.mysql.MySQLDatabase - Detected GTID consistency being enforced
15:43:19.077 [main] DEBUG org.flywaydb.core.FlywayExecutor - DDL Transactions Supported: false
15:43:19.077 [main] DEBUG org.flywaydb.core.internal.schemahistory.SchemaHistoryFactory - Schemas:
15:43:19.077 [main] DEBUG org.flywaydb.core.internal.schemahistory.SchemaHistoryFactory - Default schema: null
15:43:19.248 [main] DEBUG org.flywaydb.database.mysql.MySQLConnection - Disabled user variable reset as performance_schema.user_variables_by_threadcannot be queried (SQL State: 42000, Error Code: 1142)
15:43:19.752 [main] DEBUG org.flywaydb.core.internal.callback.SqlScriptCallbackFactory - Scanning for SQL callbacks ...
15:43:19.754 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__1_insert_data_to_table_products.sql (filename: R__1_insert_data_to_table_products.sql)
15:43:19.754 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__2_insert_data_to_table_customers.sql (filename: R__2_insert_data_to_table_customers.sql)
15:43:19.754 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__3_insert_data_to_table_orders.sql (filename: R__3_insert_data_to_table_orders.sql)
15:43:19.754 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__4_update_price_at_table_products.sql (filename: R__4_update_price_at_table_products.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/R__5_update_status_at_table_orders.sql (filename: R__5_update_status_at_table_orders.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql (filename: U7__revert_rename_column_name_to_first_name_at_table_customers.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql (filename: U8__drop_columnt_last_name_at_table_customers.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U9__drop_column_order_date_at_table_products.sql (filename: U9__drop_column_order_date_at_table_products.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_correct_sql.sql (filename: __R__6_correct_sql.sql)
15:43:19.755 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_incorrect_sql.sql (filename: __R__6_incorrect_sql.sql)
15:43:19.757 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U7__revert_rename_column_name_to_first_name_at_table_customers.sql (filename: U7__revert_rename_column_name_to_first_name_at_table_customers.sql)
15:43:19.757 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U8__drop_columnt_last_name_at_table_customers.sql (filename: U8__drop_columnt_last_name_at_table_customers.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/U9__drop_column_order_date_at_table_products.sql (filename: U9__drop_column_order_date_at_table_products.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V1__create_table_customers.sql (filename: V1__create_table_customers.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V2__create_tables_orders.sql (filename: V2__create_tables_orders.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V3__add_column_address_to_table_customers.sql (filename: V3__add_column_address_to_table_customers.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V4__add_column_status_with_value_to_table_orders.sql (filename: V4__add_column_status_with_value_to_table_orders.sql)
15:43:19.758 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V5__create_table_products.sql (filename: V5__create_table_products.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V6__add_column_description_to_table_products.sql (filename: V6__add_column_description_to_table_products.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V7__rename_column_name_to_first_name_at_table_customers.sql (filename: V7__rename_column_name_to_first_name_at_table_customers.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V8__add_columnt_last_name_to_table_customers.sql (filename: V8__add_columnt_last_name_to_table_customers.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/V9__add_column_order_date_to_table_products.sql (filename: V9__add_column_order_date_to_table_products.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_correct_sql.sql (filename: __R__6_correct_sql.sql)
15:43:19.759 [main] DEBUG org.flywaydb.core.internal.scanner.Scanner - Filtering out resource: db/migration/__R__6_incorrect_sql.sql (filename: __R__6_incorrect_sql.sql)
15:43:20.735 [main] DEBUG org.flywaydb.core.FlywayExecutor - Memory usage: 26 of 256M
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  8.445 s
[INFO] Finished at: 2023-03-17T15:43:20+04:00
[INFO] ------------------------------------------------------------------------
```
</details>

### And as result
created [file `application-20230317.log`](application-20230317.log)
