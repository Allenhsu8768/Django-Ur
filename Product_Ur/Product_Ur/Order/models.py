
from django.db import models

# Create your models here.
# 引入 Product.model 做外部關聯
# 引入
from Product.models import Product

# 訂單
class Customer_Order(models.Model):
    # 產品 ID
    products = models.ForeignKey(Product,verbose_name='商品ID',on_delete=models.CASCADE,related_name='products_info')
    
    # 顧客 ID
    customers = models.CharField(max_length=20,verbose_name='顧客ID')
    
    # 購買數量
    qty = models.IntegerField(verbose_name='購買數量')
    
    # 商品單價
    price = models.IntegerField(verbose_name='商品單價')
    
    # 商品隸屬館別
    shop_id = models.CharField(max_length=10,verbose_name='商品隸屬館別',default='')
    
    class Meta:
        db_table = 'Customer_Order'
        verbose_name = '訂單表'
        verbose_name_plural = verbose_name
        
    
    def __str__(self) -> str:
        return str(self.id)
    
    
    