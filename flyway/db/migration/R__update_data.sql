
UPDATE products SET price = ROUND(price*0.9, 2);
UPDATE orders SET status = 'PENDING' WHERE total_price < 50;
