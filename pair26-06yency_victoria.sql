SELECT unit_price
FROM products;

SELECT max(unit_price) as `highesPrices`, min(unit_price)`lowesPrices`
FROM products;

-- segundo
SELECT count(product_id) , avg(unit_price)
FROM products;

-- tercero
SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country ='UK';
	
-- cuarto
SELECT avg(unit_price)
FROM products;

SELECT product_name,unit_price
FROM products
WHERE unit_price > 28.86
ORDER BY unit_price desc;

-- quinto
SELECT product_name
FROM products
WHERE discontinued = 1;

-- sexto
SELECT product_name, product_id
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC LIMIT 10;


