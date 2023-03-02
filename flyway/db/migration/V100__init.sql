CREATE TABLE IF NOT EXISTS `customers` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(20),
    `email` varchar(50)
);

CREATE TABLE IF NOT EXISTS `orders` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` int,
    `total_price` DECIMAL(10, 2)
);
