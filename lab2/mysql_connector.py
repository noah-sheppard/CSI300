import mysql.connector
import pandas

import warnings
warnings.filterwarnings('ignore')

conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Ns993547!",
    database = "movies"
    )

if conn.is_connected():
    print("Connection Established")
