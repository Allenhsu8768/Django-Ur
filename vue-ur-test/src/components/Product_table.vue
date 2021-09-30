<template>
    <div class="Product_info_container">
        <h2>商品列表</h2>
        <table class="product_table">
            <thead>
                <tr>
                    <th>Product_ID</th>
                    <th>Stock_pcs</th>
                    <th>Price</th>
                    <th>Shop_ID</th>
                    <th>Vip</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="product in select_list" :key="product.id">
                    <th>{{product.product_id}}</th>
                    <th>{{product.stock_prc}}</th>
                    <th>{{product.price}}</th>
                    <th>{{product.shop_id}}</th>
                    <th>{{product.vip}}</th>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
export default {
    name: 'ProductTable',
    props:['select_list'],
};
</script>

<style lang="scss" scoped>
    @import '../assets/scss/Product_info.scss'
</style>