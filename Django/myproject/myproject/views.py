from django.http import HttpResponse

def hello(request):
    return HttpResponse("Hello Django")

def bye(request):
    return HttpResponse("Byee...")

# home, name, address, education