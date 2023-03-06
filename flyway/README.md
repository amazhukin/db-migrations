# Flyway migrations

## Task-1.
1. Create tables:
	customers with columns id, name, and email.
	orders with columns id, customer_id, and total_price.
2. Modify the customers table by adding a new column named address.
3. Modify the orders table by adding a new column named status not null and update existing records with ‘OLD’ status.
4. Add a new table called products with columns id, name, and price.
5. Create a repeatable migration script that adds 2 sample products to the products table.
6. Modify the products table by adding a new column named description.
7. Create a repeatable migration script that adds a new customer to the customers table.
8. Modify the customers table by renaming the name column to first_name.
9. Add a new column named last_name to the customers table.
10. Create a repeatable migration script that adds 3 sample orders to the orders table.
11. Modify the orders table by adding a new column named order_date.
12. Create a repeatable migration script that updates the price of all products by adding a 10% discount.
13. Create a repeatable migration script that updates the status of all orders with a total_price less than 50 to ‘pending’.

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
