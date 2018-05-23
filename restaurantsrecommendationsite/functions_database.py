#!C:/Users/Anjana/Anaconda3/python.exe

import MySQLdb
from contextlib import closing

db = MySQLdb.connect(host="localhost",  # your host 
                     user="root",       # username
                     passwd="123456",     # password
                     db="restaurant_recommendation")   # name of the database
  

def query_call(query_str):
	if ((query_str.lower()).startswith("delete")==1):
		print("deleting")
		with closing( db.cursor() ) as cur:
			cur.execute(query_str)
			db.commit()
			print("deleted")
		#db.close()
		return []
	elif((query_str.lower()).startswith("insert")==1):
		print("insert")
		with closing( db.cursor() ) as cur:
			cur.execute(query_str)
			db.commit()
			cur.close()
		#db.close()
		print("Sucess inserting data") 
		return []
	elif((query_str.lower()).startswith("update")==1):
		print("update")
		with closing( db.cursor() ) as cur:
			cur.execute(query_str)
			db.commit()
			cur.close()
		#db.close()
		print("Success updating data") 
		return []
	else:
		print("selecting")
		table_data = []
		with closing( db.cursor() ) as cur:
			cur.execute(query_str)
			#db.commit()
			for row in cur.fetchall() :
				row_data = []
				for element in row:
					element = str(element)
					row_data.append(element)
				table_data.append(row_data)
			cur.close()
		#db.close()
		print("Sucess selecting data") 
		return table_data

	
