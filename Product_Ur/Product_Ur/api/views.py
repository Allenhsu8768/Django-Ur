from django.db.models.aggregates import Count
from django.shortcuts import render
from rest_framework import serializers
from rest_framework.response import Response
from django.http import JsonResponse


from django.views.decorators.csrf import csrf_exempt

# Create your views here.
# 引入 API 視圖函數
from rest_framework.views import APIView



# 引入各個應用的序列化類,及模型類
#  1. Product
from Product.serializers import ProductSerializers
from Product.models import *

#  2.Order
from Order.serializers import OrderModelSerializer
from Order.models import * 
from .utils.checkinfo import check_info



# api/Product_info/
# 獲取 Product_info 資料 
class Product_views(APIView):
    def get(self,request):
        # 查找 Queryset
        Products = Product.objects.all()
        
        # 獲取 Queryset 設置序列化
        Product_Serializer = ProductSerializers(Products,many=True)
        return Response(Product_Serializer.data)
    

# api/Order_info
# 1. 查找 order資料
class Orderinfo_view(APIView):
    def get(self,request):
        # 查找訂單資訊
        Orders = Customer_Order.objects.all()
        Orders_Serializer = OrderModelSerializer(Orders,many=True)
        return Response(Orders_Serializer.data)
        

# api/add_Order
# 2. 新增order 資料
class AddOrder_view(APIView):
    
    #   設置 裝飾器函數，去判斷用戶是否為 vip，和商品數量
    @check_info
    def post(self,request,*args,**kwargs):
        
        
        # 獲取新增 order 資料
        order_info = {**self.request.data}
        print(order_info['product_id'])
        
        # 查找資訊
        product_info = Product.objects.filter(product_id=order_info['product_id']).first()
        
        
        # 建立對象，新增數據
        addOrderinfo = Customer_Order(
                products = product_info,
                customers = order_info['customer_id'],
                qty = order_info['product_amount'],
                price = product_info.price,
                shop_id = product_info.shop_id,
        )
        # 新增數據
        addOrderinfo.save()
        
        
        # 將購買的數量做修改
        product_info.stock_pcs = product_info.stock_pcs - order_info['product_amount']
        product_info.save()
        

        return JsonResponse({'status':200,'msg':'訂單新增成功!'})

# api/delete_Order
# 3.刪除 order 資料
class Deleteorder_view(APIView):
    def post(self,request):
        # 獲取要刪除的訂單資訊
        delete_info = {**self.request.data}
        
        # 建立對象查找訂單資訊
        order_info = Customer_Order.objects.filter(id=delete_info['id'],customers=delete_info['customers'])
        
        if order_info:
            order_info.delete()
            # 將數量加回去定單中
            product = Product.objects.filter(product_id=delete_info['products']['product_id']).first()
            product.stock_pcs += delete_info['qty']
            product.save()
        else:
            return JsonResponse({'status':404,'msg':'沒有查詢到此%s訂單訊息!' % delete_info['id']})
        return JsonResponse({'status':200,'msg':'訂單%d,已刪除!' %  delete_info['id']})
    
    
#api/Top
# 1. 查找 Top3 的資料(可以根據前端設置參數的 Top 多少定義要怎麼排序,多少筆)
class Top_view(APIView):
    def get(self,reqeust):
        # 根據 模型類中 Customer_Order 中關聯的 products 透過 annotate 去做計算的次數返回 
        # 透過 Product 關連計算出現的次數排序 (Top)
        Top_info = Product.objects.all().annotate(order_products=Count('products_info')).order_by('-order_products')[:3]
        Top_serializers = ProductSerializers(Top_info,many=True)
        return Response(Top_serializers.data)