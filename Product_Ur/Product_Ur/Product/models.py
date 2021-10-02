from django.db import models

# Create your models here.


# 產品表
class Product(models.Model):
    stock_pcs = models.IntegerField(verbose_name='商品庫存量')
    price = models.IntegerField(verbose_name='商品價格')
    shop_id = models.CharField(max_length=10,verbose_name='商品隸屬館別')
    vip = models.BooleanField(verbose_name='商品購買權限')
    product_id = models.IntegerField(verbose_name='商品ID編號')

    class Meta:
        db_table = 'Product'
        verbose_name = '產品表'
        verbose_name_plural = verbose_name
        
    
    def __str__(self):
        return str(self.product_id)
    
    




