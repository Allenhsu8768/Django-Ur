from django.contrib import admin

# Register your models here.
from .models import *



class OrderAdmin(admin.ModelAdmin):
    list_display = ['products','qty','price','shop_id']
    search_fields = ['product']
    
    


admin.site.register(Customer_Order,OrderAdmin)


