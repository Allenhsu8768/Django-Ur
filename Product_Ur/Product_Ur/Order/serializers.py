from django.db.models import fields
from rest_framework.serializers import ModelSerializer
from .models import *

# 引入 Product.serializers 處理序列化關聯
from Product.serializers import ProductSerializers

# 設置 order 序列化列
class OrderModelSerializer(ModelSerializer):
    products = ProductSerializers(read_only=True)
    class Meta:
        model = Customer_Order
        fields = "__all__"
        
        
        
        
    