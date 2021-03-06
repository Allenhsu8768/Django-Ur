# Generated by Django 3.2.7 on 2021-10-01 11:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Product', '0002_rename_stock_prc_product_stock_pcs'),
        ('Order', '0002_alter_customer_order_shop_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer_order',
            name='products',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='products_info', to='Product.product', verbose_name='商品ID'),
        ),
    ]
