from django.shortcuts import render

def home(request):
    return render(request, 'home.html')

def login(request):
    return render(request, 'login.html')

def signup(request):
    return render(request, 'signup.html')

def dashboard(request):
    return render(request, 'dashboard.html')

def certapp(request):
    return render(request, 'certapp.html')

def certojt(request):
    return render(request, 'certojt.html')

def print(request):
    return render(request, 'print.html')