
-- 1. Get all customers and their addresses.

SELECT * FROM "customers" 
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

-- 2. Get all orders and their line items (orders, quantity and product).

SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

-- 3. Which warehouses have cheetos?

SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'cheetos';

-- 4. Which warehouses have diet pepsi?

SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT "customers"."first_name", COUNT("orders"."address_id") FROM "addresses"
JOIN "customers" ON "addresses"."customer_id" = "customers"."id"
JOIN "orders" ON "addresses"."id" = "orders"."address_id"
GROUP BY "customers"."first_name";
 
-- 6. How many customers do we have?

SELECT COUNT("customers"."id") from "customers";


-- 7. How many products do we carry?

SELECT COUNT("products"."id") FROM "products";

## Tasks

SELECT COUNT("warehouse_product")

8. What is the total available on-hand quantity of diet pepsi?

## Stretch
9. How much was the total cost for each order?
10. How much has each customer spent in total?
11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).