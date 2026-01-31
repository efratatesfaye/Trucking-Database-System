Trucking Company Database
Database Systems Final Project 
Created by: Efrata Tesfaye


1. Description of Data
This database is designed for a trucking company, and contains tables for customers, drivers, inventories, maintenance records, payments, routes, shipments, and trucks. The designated columns of these tables were generated manually, and were populated with fake entries with the help of Microsoft Copilot prompts to simulate realistic business. Below are the names of the tables, how many rows of data the tables have, and their column names:
- customer: 50 rows — customer_id, name, email, phone, address
- driver: 20 rows — driver_id, first_name, last_name, license_number, hire_date 
- inventory: 20 rows — item_id, description, quantity, weight, hazmat_flag, value, shipment_id
- maintenance_record: 50 rows — record_id, truck_id, service_date, description, cost
- payment: 100 rows — payment_id, shipment_id, amount, payment_date, method
- route: 40 rows — route_id, origin_city, destination_city, mileage, estimated_hours
- shipment: 150 rows — shipment_id, origin, destination, weight, delivery_date, status, customer_id, truck_id, route_id
- truck: 30 rows — truck_id, license_plate, capacity, model, year, driver_id


2. Expected Grade
I expect to receive a high A grade based on the grading criteria:

Phase 1: Tables are populated with 460 data rows in total (across all tables). The smallest tables has at least 20 rows of data.  I have at least 8 tables in my database.  All tables relate in some way.

Phase 2: All 8 queries are implemented with proper comments, demonstrating joins, subqueries, grouping, inserts, deletes, and cascades.

Phase 3: Python front‑end (front-end.py) connects to the database, runs all queries, and includes a menu program initiated by main().

README: Clearly explains the data source, grading expectation, and challenges faced.


3. Challenges Faced

Laptop Performance Issues: One of the biggest challenges I faced was the performance of my laptop when working with MySQL. The program often ran slowly, which made even simple tasks like starting the server or executing a query take longer than expected. At times the Workbench would freeze or lag, forcing me to restart and repeat steps I had already done.

Foreign Key Constraints: Initially, deleting a customer failed due foreign key DELETE rules being set to 'restrict'. I resolved this by altering the payment table’s foreign key to use ON DELETE CASCADE and ON UPDATE CASCADE, ensuring shipments and payments cascade correctly.

