from django.shortcuts import render
from rest_framework.response import Response

# Create your views here.
# 引入 API 視圖函數
from rest_framework.views import APIView



# 引入各個應用的序列化類,及模型類
#  1. Product
from Product.serializers import ProductSerializers
from Product.models import *




# 訪問 api/Product_info/ 
class Product_views(APIView):
    def get(self,request):
        # 查找 Queryset
        Products = Product.objects.all()
        
        # 獲取 Queryset 設置序列化
        Product_Serializer = ProductSerializers(Products,many=True)
        return Response(Product_Serializer.data)
    
        
    