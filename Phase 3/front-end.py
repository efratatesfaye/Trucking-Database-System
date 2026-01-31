import mysql.connector as mysql

def connect(password_str):
    db = mysql.connect(
        host="localhost",
        user="root",
        passwd=password_str,
        database="truckingcompany"
    )
    return db


#-----------------------------------------------
# Level 1
#-----------------------------------------------

def get_drivers_hired_after(db):
    cursor = db.cursor()
    hire_date = input("Enter a date (YYYY-MM-DD): ")
    query = "SELECT driver_id, first_name, last_name FROM driver WHERE hire_date > %s"
    cursor.execute(query, (hire_date,))
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None

def list_shipments_with_customers(db):
    cursor = db.cursor()
    cust_id = input("Enter a customer ID to view their shipments: ")
    query = ("SELECT s.shipment_id, s.origin, s.destination, c.name "
             "FROM shipment s JOIN customer c ON s.customer_id = c.customer_id "
             "WHERE c.customer_id = %s")
    cursor.execute(query, (cust_id,))
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None

def find_heavy_shipments(db):
    cursor = db.cursor()
    query = ("SELECT shipment_id, origin, destination, weight "
             "FROM shipment WHERE weight > (SELECT AVG(weight) FROM shipment)")
    cursor.execute(query)
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None

def count_shipments_by_status(db):
    cursor = db.cursor()
    query = "SELECT status, COUNT(*) AS shipment_count FROM shipment GROUP BY status"
    cursor.execute(query)
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None


#------------------------------------------------
# Level 2
#------------------------------------------------

def insert_customer(db):
    cursor = db.cursor()
    cust_id = input("Enter new customer ID: ")
    name = input("Enter customer name: ")
    email = input("Enter email: ")
    phone = input("Enter phone: ")
    address = input("Enter address: ")
    query = "INSERT INTO customer (customer_id, name, email, phone, address) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(query, (cust_id, name, email, phone, address))
    db.commit()
    print("Customer inserted successfully.")
    
    cursor.execute("SELECT * FROM customer WHERE customer_id = %s", (cust_id,))
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None

def delete_inventory_item(db):
    cursor = db.cursor()
    item_id = input("Enter inventory item ID to delete: ")
    query = "DELETE FROM inventory WHERE item_id = %s"
    cursor.execute(query, (item_id,))
    db.commit()
    print("Inventory item deleted successfully.")

    cursor.execute("SELECT * FROM inventory WHERE item_id = %s", (item_id,))
    records = cursor.fetchall()
    if not records:
        print(f"Item {item_id} no longer exists.")
    else:
        for record in records:
            print(record)
    cursor.close()

    return None

def update_customer_id(db):
    cursor = db.cursor()
    query = "UPDATE customer SET customer_id = 105 WHERE customer_id = 5"
    cursor.execute(query)
    db.commit()
    print("Customer ID updated. Shipments should cascade.")

    cursor.execute("SELECT shipment_id, customer_id FROM shipment WHERE customer_id = 105")
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None

def delete_customer(db):
    cursor = db.cursor()
    query = "DELETE FROM customer WHERE customer_id = 1"
    cursor.execute(query)
    db.commit()
    print("Customer 1 deleted. Shipments and payments should cascade.")

    cursor.execute("SELECT * FROM shipment WHERE customer_id = 1")
    records = cursor.fetchall()
    for record in records:
        print(record)
    cursor.close()

    return None


# -------------------------------
# Menu Program
# -------------------------------

def main():
    print("Connecting to the database...")
    password_str = input("Enter password: ")
    db = connect(password_str)

    while True:
        print("\n Trucking Company Menu: ")
        print("1. Retrieve drivers hired after a given date")
        print("2. List shipments with customer names")
        print("3. Find shipments heavier than average")
        print("4. Count shipments by status")
        print("5. Insert a new customer")
        print("6. Delete an inventory item")
        print("7. Update a customer_id and show cascade")
        print("8. Delete a customer and show cascade")
        print("9. Exit")

        choice = input("Select a query (1-9): ")

        if choice == "1":
            get_drivers_hired_after(db)
        elif choice == "2":
            list_shipments_with_customers(db)
        elif choice == "3":
            find_heavy_shipments(db)
        elif choice == "4":
            count_shipments_by_status(db)
        elif choice == "5":
            insert_customer(db)
        elif choice == "6":
            delete_inventory_item(db)
        elif choice == "7":
            update_customer_id(db)
        elif choice == "8":
            delete_customer(db)
        elif choice == "9":
            print("Exiting program. Goodbye!")
            db.close()
            break
        else:
            print("Invalid choice. Please select 1-9.")

    db.close()

if __name__ == "__main__":
    main()
