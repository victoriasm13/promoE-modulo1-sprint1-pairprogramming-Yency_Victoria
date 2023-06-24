SELECT `product_name`, `unit_price`
	FROM `products`
    ORDER BY `product_id`LIMIT 10;
    
 -- segundo ejer   
SELECT `product_name`, `unit_price`
	FROM `products`
    ORDER BY `product_id` DESC LIMIT 10;
    
-- tercer ejer--
SELECT DISTINCT `order_id`
	FROM `orders`

    
-- cuarto ejer--
SELECT DISTINCT `order_id`
	FROM `orders` LIMIT 2;
    
-- quinto ejer-- 
SELECT `unit_price`* `quantity` as Importe_total, order_id
	FROM `order_details` ORDER BY  Importe_total DESC LIMIT 3;
    
-- sexto ejer--
SELECT `unit_price`* `quantity` as Importe_total, order_id
	FROM `order_details` 
    ORDER BY  Importe_total DESC 
    LIMIT 6
    OFFSET 4;
    
-- septimo ejer--
SELECT category_name as nombredecategoria
 FROM categories;
 
 -- octavo ejer--
 SELECT date_add(shipped_date , INTERVAL 5 day) as fecharetrasada
 FROM orders
 order by shipped_date desc;
 
 -- noveno ejer--
 SELECT product_name, unit_price
 FROM products
 WHERE unit_price
 BETWEEN 15 AND 50;
 
 -- decimo ejer--
 SELECT product_name, unit_price
 FROM products
 WHERE unit_price IN (18,19,20);
 
 


    

