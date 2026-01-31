-- (1) Retrieve all drivers hired after January 1, 2020.
-- (2) Works: Returns rows from driver table where hire_date is greater than 2020-01-01.
-- (3) Sample return: driver_id=4, first_name='Isabella', last_name='Davis'.

SELECT driver_id, first_name, last_name
FROM driver
WHERE hire_date > '2020-01-01';

-- (1) List shipments with their customer names.
-- (2) Works: Joins shipment and customer tables on customer_id.
-- (3) Sample return: shipment_id=2, origin='Des Moines', destination='Kansas City', name='Bob Smith'.

SELECT s.shipment_id, s.origin, s.destination, c.name
FROM shipment s
JOIN customer c ON s.customer_id = c.customer_id;

-- (1) Find shipments heavier than the average shipment weight.
-- (2) Works: Uses a subquery to calculate average weight.
-- (3) Sample return: shipment_id=3, origin='Sioux City', destination='Denver', weight=5000 (above average).

SELECT shipment_id, origin, destination, weight
FROM shipment
WHERE weight > (SELECT AVG(weight) FROM shipment);

-- (1) Count shipments per status (pending, in_transit, delivered, cancelled).
-- (2) Works: Groups by status and counts rows.
-- (3) Sample return: pending=7, in_transit=6, delivered=6, cancelled=1.

SELECT status, COUNT(*) AS shipment_count
FROM shipment
GROUP BY status;

-- (1) Insert a new customer record
-- (2) Works: Adds a row into the customer table with unique customer_id = 51
-- (3) Sample return: SELECT * FROM customer WHERE customer_id = 51;

INSERT INTO customer (customer_id, name, email, phone, address)
VALUES (51, 'Efrata Tesfaye', 'efrata.tesfaye@example.com', '555-9876', '789 Pine Street, Cedar Falls, IA');

-- (1) Delete inventory item with item_id=20.
-- (2) Works: Removes row from inventory. ON DELETE CASCADE ensures if shipment is deleted, inventory goes too.
-- (3) Sample return: SELECT * FROM inventory WHERE item_id=20; returns empty set.

DELETE FROM inventory WHERE item_id = 20;

-- (1) Update a customer_id in customer table and show shipments update automatically.
-- (2) Works: shipment.customer_id updates because of ON UPDATE CASCADE.
-- (3) Sample return: SELECT shipment_id, customer_id FROM shipment WHERE customer_id=105; shows updated rows.

UPDATE customer SET customer_id = 105 WHERE customer_id = 5;
SELECT shipment_id, customer_id FROM shipment WHERE customer_id = 105;


-- (1) Delete a customer record and show shipments and payments cascade automatically.
-- (2) Works: shipments tied to this customer are deleted because of ON DELETE CASCADE,
--            and payments tied to those shipments are also deleted after altering the foreign key.
-- (3) Sample return: SELECT * FROM shipment WHERE customer_id = 1; returns empty set,
DELETE FROM customer WHERE customer_id = 1;
SELECT * FROM shipment WHERE customer_id = 1;


