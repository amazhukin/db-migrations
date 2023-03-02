ALTER TABLE `customers` ADD `address` varchar(100);

ALTER TABLE `orders` ADD `status` varchar(100) NOT NULL DEFAULT 'OLD';

CREATE TABLE IF NOT EXISTS `products` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(100),
    `price` DECIMAL(10, 2)
);
