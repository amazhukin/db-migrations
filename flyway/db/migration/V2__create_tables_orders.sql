CREATE TABLE IF NOT EXISTS `orders` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` int,
    `total_price` DECIMAL(10, 2)
);
