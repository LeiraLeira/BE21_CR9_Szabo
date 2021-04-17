SELECT supplier.supplier_first_name, supplier.supplier_last_name
FROM supplier
WHERE supplier_first_name LIKE "%E%";

SELECT supplier.supplier_first_name, supplier.supplier_last_name
FROM supplier
WHERE supplier_first_name = "Maxwell";

SELECT DISTINCT customer_address.customer_city
FROM customer_address
WHERE customer_city LIKE "%A%";

SELECT *
FROM customer_shipping_address
INNER JOIN customer ON customer_shipping_address_id = customer.fk_customer_shipping_address_id
WHERE customer.customer_id >1; 

SELECT *
FROM customer_shipping_address
INNER JOIN customer ON customer_shipping_address_id = customer.fk_customer_shipping_address_id
WHERE customer.customer_id <9; 

SELECT count(item.item_name)
FROM item
INNER JOIN order_sent_to_famazon ON item.item_id = order_sent_to_famazon.fk_item_id
WHERE order_sent_to_famazon_id >= 2; 

