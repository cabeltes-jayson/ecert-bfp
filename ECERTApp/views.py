from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import User

def user_login(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            messages.success(request, f"Welcome back, {user.firstname}!")
            return redirect("dashboard")
        else:
            messages.error(request, "Invalid username or password")

    return render(request, 'auth/login.html', {'hide_sidebar': True})


def user_logout(request):
    logout(request)
    messages.success(request, "You have been logged out.")
    return redirect("home")

def home(request):
    return render(request, 'home.html', {'hide_sidebar': True})

def dashboard(request):
    return render(request, "dashboard.html")

def certapp(request):
    return render(request, 'certapp.html')

def certojt(request):
    return render(request, 'certojt.html')

def certcom(request):
    return render(request, 'certcom.html')