#!C:/Users/Anjana/Anaconda3/python.exe
from django.shortcuts import render
from functions_database import query_call

def index(request):
	return render(request, 'personal/home.html', )
	
def contact(request):
	return render(request, 'personal/basic.html', {'content': ['If you would like to contact me, email me at', 'atiha@memphis.edu']})
	
def submit(request):
	query_str = request.POST.get('query')
	table_data = query_call(query_str)
	return render(request, 'personal/home.html', {'search_string': table_data})
	
	