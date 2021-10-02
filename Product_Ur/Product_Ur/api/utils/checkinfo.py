#  設置 裝飾器函數判斷用戶的ID是否有權限購買 和商品庫存
from django.http import JsonResponse

# 引入模型類
from Order.models import *
from Product.models import *


def check_info(f):
    def check_(request,*args,**kwargs):
        # 獲取 product_id 和資訊
        id = request.request.data['product_id']
        isVip = request.request.data['isVip']
        amount = request.request.data['product_amount']
        
        # 1. 數量
        # 比對商品數量, product_id 唯一 查找單筆
        product_info = Product.objects.filter(product_id=id).first()
        
        if product_info.stock_pcs < amount:
            return JsonResponse({'status':404,'msg':'庫存數量不足'})
        
        # 2. vip 驗證
        #  如果 vip != True , 直接放行
        if product_info.vip:
            if not isVip:
                return JsonResponse({'status':403,'msg':'權限不足無法購買!'})
            
        # 放行到視圖函數處理訂單
        return f(request,*args,**kwargs)
    return check_






