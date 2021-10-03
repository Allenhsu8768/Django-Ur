<template>
    <div class="Order_info">
        <h2>商品訂單</h2>
        <table class="order_table">
            <thead>
                <tr>
                    <th>Order_ID</th>
                    <th>Product ID</th>
                    <th>Qty</th>
                    <th>Price</th>
                    <th>Shop_ID</th>
                    <th>Customer_ID</th>
                    <th>Delete Order</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="order in order_list" :key="order.id">
                    <th>{{order.id}}</th>
                    <th>{{order.products.product_id}}</th>
                    <th>{{order.qty}}</th>
                    <th>{{order.price}}</th>
                    <th>{{order.shop_id}}</th>
                    <th>{{order.customers}}</th>
                    <th>
                        <button class="deletebtn_pc" @click="delete_order(order)">Delete</button>
                        <button class="deletebtn_mobile" @click="delete_order(order)">
                            <span></span>
                        </button>
                    </th>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    import axios from 'axios'
    import 'animate.css'

    axios.defaults.xsrfHeaderName = 'X-CSRFToken'
    axios.defaults.xsrfCookieName = 'csrftoken'

    export default {
        name: 'OrderInfo',
        props:['order_list'],
        methods: {
            delete_order(Order){
                axios.post('http://127.0.0.1:8000/api/Deleteinfo/',Order)
                .then(
                    res=>{
                        alert(res.data.msg)
                    }
                )
                this.$bus.$emit('delete_order_list',Order)
            }
        },
    };
</script>

<style lang="scss" scoped>
    @import '../assets/scss/Orderinfo.scss'
</style>