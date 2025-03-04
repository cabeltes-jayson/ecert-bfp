from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('login/', views.login, name='login'),
    path('signup/', views.signup, name='signup'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('certapp/', views.certapp, name='certapp'),
    path('certojt/', views.certojt, name='certojt'),
    path('print/', views.print, name='print'),
]