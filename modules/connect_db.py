import mysql.connector as mysqlpy

# ---------------------------------------------------------------------
# Accés à la bdd
#-----------------------------------------------------------------------------------
user = 'root'
password = 'example'
host = 'localhost'
port = '3307'
database = 'CHU_Caen'

bdd = mysqlpy.connect(user=user, password=password, host=host, port=port, database=database)
cursor = bdd.cursor()