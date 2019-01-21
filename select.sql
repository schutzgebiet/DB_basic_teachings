USE bp_48;

SELECT*FROM `cars`;


SELECT max(t.price) from 
(SELECT sum(c.price) AS price
 FROM `customer` `cus` 
JOIN `customer_cars` `cc` 
JOIN cars c ON cc.cars_id = c.id 
WHERE `cus`.id = `cc`.`customer_id`
GROUP BY cus.id) as t;


SELECT*FROM customer cus JOIN customer_cars cc ON cus.id = cc.customer_id JOIN cars c ON cc.cars_id = c.id WHERE cus.id = cc.customer_id;
