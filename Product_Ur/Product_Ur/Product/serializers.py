# 引入序列化模塊
from django.db.models import fields
from rest_framework.serializers import ModelSerializer
from .models import *


# 建立序列化類
class ProductSerializers(ModelSerializer):
    class Meta:
        
        #設置model = Product 表
        model = Product
        # 序列化所有商品欄位
        fields = "__all__"




