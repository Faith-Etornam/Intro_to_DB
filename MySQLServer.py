import mysql.connector


try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="1234"
    )

    cursor = mydb.cursor()

    sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"

    cursor.execute(sql)

    print("Database 'alx_book_store' created successfully!")

    cursor.close()
    mydb.close()

except Exception as e:
    print(f"Error: {e}")
    print("Could not connect to database")





# for row in result:
#     print(row[1])

