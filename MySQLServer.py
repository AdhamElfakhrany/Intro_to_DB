import mysql.connector

try:
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='Salma.MySQL.21',
        database='alx_book_store'
    )
    cursor = connection.cursor()
    create_db = "CREATE DATABASE IF NOT EXISTS alx_book_store;"
    cursor.execute(create_db)

except mysql.connector.Error as err:
    print(f"Something went wrong: {err}")  

finally:
    if connection.is_connected():
        print("Database 'alx_book_store' created successfully!")
        cursor.close()
        connection.close()
    else:
        print("Connection is not established")
