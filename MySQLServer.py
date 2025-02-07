# MySQLServer.py

import mysql.connector

try:
    # Attempt to connect to the MySQL server
    mydb = mysql.connector.connect(
        host="localhost",  # Your MySQL host
        user="your_mysql_user",  # Your MySQL username
        password="your_mysql_password"  # Your MySQL password
    )

    mycursor = mydb.cursor()

    # Check if the database exists (avoiding SELECT/SHOW) by attempting to use it.
    try:
        mycursor.execute("USE alx_book_store") # Try to use the database
    except mysql.connector.Error as err: # Catch if database doesn't exist
        if err.errno == 1049: # Error code for "database doesn't exist"
            mycursor.execute("CREATE DATABASE alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        else: # Some other error
            print(f"Error creating database: {err}")
    else:
        print("Database 'alx_book_store' already exists.") # No error when USE was successful
        
    mydb.close() # Close the connection
    

except mysql.connector.Error as err:
    print(f"Error connecting to MySQL: {err}")


  