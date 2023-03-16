ALTER TABLE `orders` ADD `status` varchar(100);
UPDATE orders SET status = 'OLD';
ALTER TABLE `orders` MODIFY COLUMN `status` varchar(100) NOT NULL;
