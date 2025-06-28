# 1. Let's Build Your Database: Your Gateway to Data Adventure!
# mandatory
# Write a simple python script that creates the database alx_book_store in your MySQL server.

# Name of python script should be MySQLServer.py
# If the database alx_book_store already exists, your script should not fail
# You are not allowed to use the SELECT or SHOW statements
# NOTE :

# Required to print message such as Database 'alx_book_store' created successfully! when database is successfully created.

# Print error message to handle errors when failing to connect to the DB.

# handle open and close of the DB in your script.

# Repo:

# GitHub repository: Intro_to_DB
# File: MySQLServer.py

import mysql.connector
from mysql.connector import Error
def create_database():
    try:
        # Establish a connection to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='your_username',  # replace with your MySQL username
            password='your_password'  # replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create the database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"Error: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")
def main():
    create_database()

if __name__ == "__main__":
    main()  
# If this script is run directly, it will execute the main function
# If imported, the main function will not run automatically
# This allows the script to be used as a module in other scripts without executing the main function