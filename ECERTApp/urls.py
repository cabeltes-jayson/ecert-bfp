from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path("login/", views.user_login, name="login"),
    path("logout/", views.user_logout, name="logout"),
    path("dashboard/", views.dashboard, name="dashboard"),
    path('certapp/', views.certapp, name='certapp'),
    path('certojt/', views.certojt, name='certojt'),
    path('certcom/', views.certcom, name='certcom'),
]