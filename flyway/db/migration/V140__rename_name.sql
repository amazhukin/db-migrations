ALTER TABLE `customers` RENAME COLUMN `name` to `first_name`;
ALTER TABLE `customers` ADD `last_name` varchar(100) AFTER `first_name`;
