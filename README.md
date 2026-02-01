# Trucking Database System

## Overview
The goal of this project is to:
- generate a complete, artificial trucking company database
- construct SQL queries that update, delete, insert and select data/records, and 
- create a Python front-end to interact with the database. 

## Project Phases

### **Phase 1: Schema**
- Built a relational database for a trucking company with 8 tables of data (customers, drivers, inventory, maintenance records, payments, routes, shipments, and trucks) **generated using [Mockaroo]**.
- Populated with **400+ rows of data**. Tables are fully interrelated.
- Applied `ON UPDATE` and `ON DELETE` constraints to tables with foreign keys.
- EER diagram forward-engineered in MySQL Workbench.

### **Phase 2: SQL Queries**
- 8 queries with comments explaining purpose and functionality, as well as demonstrating sample outputs.
- Includes read-only queries (basic SELECT, joins, subqueries, and aggregates) and modification queries (inserts, deletes, and update) 
- Includes foreign key constraint demonstration.

### Phase 3: Python Front-End
- `front-end.py` runs all SQL queries through functions that accept user input for dynamic query parameters.
- Allows users to select and run queries interactively.

## Project Structure

Trucking-Database-System/
   Phase 1/
      database/ # Raw data
            customer.csv
            driver.csv
            inventory.csv
            maintenance_record.csv
            payment.csv
            route.csv
            shipment.csv
            truck.csv
      truckingCompanyDataDump.sql # Database dump
      truckingCompanyEERDiagram.mwb # Database schema EER diagram
   Phase 2/
      my_queries.sql # SQL queries and comments
   Phase 3/
      front-end.py # Python front-end 
   README.md # Documentation

## How To Run

1. Open MySQL Workbench and import the database dump from **phase 1**.
2. Ensure the required Python MySQL connector is installed before running:
```bash
pip install mysql-connector-python
```
3. Use the queries file in **phase 2** or The python interractive menu in **phase 3** to run desired queries.

### Author
Efrata G. Tesfaye
