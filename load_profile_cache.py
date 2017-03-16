import sys
import datetime
import mysql.connector

cnx = mysql.connector.connect(user='root', database='users')
cursor = cnx.cursor()

query = ("select * from basic")

cursor.execute(query)


#Close connections
cursor.close()
cnx.close()
