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

#!/usr/bin/env python3
#!/usr/bin/env python3
"""
MySQLServer.py - Database Creation Script
Creates the alx_book_store database in MySQL server
"""

import mysql.connector
from mysql.connector import Error


def create_database():
    """
    Creates the alx_book_store database if it doesn't exist.
    Handles connection, creation, and cleanup operations.
    """
    connection = None
    cursor = None
    
    try:
        # Establish connection to MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='root',  # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Create database if it doesn't exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            
    except mysql.connector.Error as e:
        print(f"Error while connecting to MySQL: {e}")
        
    finally:
        # Ensure proper cleanup of resources
        if cursor:
            cursor.close()
        if connection and connection.is_connected():
            connection.close()


def main():
    """Main function to execute database creation"""
    create_database()


if __name__ == "__main__":
    main()