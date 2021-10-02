"""Product_Ur URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include

# 引入視圖類
# Product
from .views import Product_views

# Order
from .views import AddOrder_view,Orderinfo_view,Deleteorder_view,Top_view



urlpatterns = [
    # api Product_info 
    path('Product_info/',Product_views.as_view(),name='Product_info'),
    # api addOrder
    path('Addorder/',AddOrder_view.as_view(),name='AddOrder'),
    #api Orderinfo
    path('Orderinfo/',Orderinfo_view.as_view(),name="order_info"),
    #api Deleteinfo
    path('Deleteinfo/',Deleteorder_view.as_view(),name='delete_order'),
    #api Top_info
    path('Topinfo/',Top_view.as_view(),name='Top_view'),
    
]

