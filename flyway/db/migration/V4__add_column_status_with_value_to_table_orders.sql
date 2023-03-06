ALTER TABLE `orders` ADD `status` varchar(100);
UPDATE orders SET status = 'OLD';
