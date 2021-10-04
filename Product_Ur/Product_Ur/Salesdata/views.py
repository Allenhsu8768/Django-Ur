from apscheduler.util import datetime_to_utc_timestamp
from django.db.models.aggregates import Count, Sum
from django.db.models.fields import Field
from django.shortcuts import render
from django.db.models import F


# Create your views here.




# 引入模塊
from apscheduler.schedulers.background import BackgroundScheduler
from django_apscheduler.jobstores import DjangoJobStore, register_events, register_job


# 引入模型類 Order 的資料,查找訂單資料輸出
import csv
from Order.models import *
from datetime import datetime


# 實例化調度器
scheduler = BackgroundScheduler()
# 調度器默認使用 DjangoJobStore()
scheduler.add_jobstore(DjangoJobStore(),'default')

# 假設測試每一分鐘執行這個任務
@register_job(scheduler,'cron',id="create_csv_send_mail",hour=0,replace_existing=True)
def create_csv_send_mail():
    # 查找 sql 資料
    #  1. 館別總銷售金額  2.總銷售數量  3.館別訂單購買出現次數
    # 透過 F() 先將欄位進行運算操作
    order_msg = Customer_Order.objects.values('shop_id').annotate(total_price=Sum(F('price') * F('qty')),total_qty=Sum('qty'),total_count=Count('shop_id')).values(
        'shop_id','total_price','total_qty','total_count','price')
    
    # 將 Query_set 處理成數組 order_list 
    order_list = [i for i in order_msg]

    
    # 將 order_list 數據存入 csv 中 (存放在資寮夾內)
    # 處理檔案名稱 年月日
    now = datetime.now()
    filename = datetime.strftime(now,'%Y%m%d%S') + 'Order_data.csv'
    
    with open('../../Sales_data/' + filename,'w+',newline=(''),encoding=('utf-8-sig')) as f:
        # 將 title 寫入
        sales_data = ['館別類型','總銷售金額','總銷售數量','總訂單數量','商品單價']
        writer = csv.writer(f)
        writer.writerow(sales_data)
        for shop_id_info in order_list:
            # 將數據存入
            writer.writerow([
                shop_id_info['shop_id'],
                shop_id_info['total_price'],
                shop_id_info['total_qty'],
                shop_id_info['total_count'],
                shop_id_info['price']])
            
    print('已經將數據存入Sales_data 資料夾中!')
    

# 註冊定時任務開始
register_events(scheduler)
scheduler.start()





