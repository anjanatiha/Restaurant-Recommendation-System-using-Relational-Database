from django.shortcuts import render

# Create your views here.
def index(request):
	return HttpResponse("<h2>Hey!</h2>")
