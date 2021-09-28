from django.contrib import admin
# Register your models here.

from .models import *

# 設置 admin
class ProductAdmin(admin.ModelAdmin):
    # 定義顯示字段
    list_display = ['id','stock_prc','price','shop_id','vip','product_id']
    # 查詢 商品 id 欄位
    search_fields = ['product_id']
    



# 註冊 admin 
admin.site.register(Product,ProductAdmin)



