<template>
    <div class="main">
        <AddOrder :select_list="select_list"/>
        <Product_table :select_list="select_list"/>
        <Order_info :order_list="order_list"/>
        <Top :top_list="top_list"/>
    </div>
</template>

<script>
    import axios from 'axios'
    import AddOrder from './AddOrder'
    import Product_table from './Product_table'
    import Order_info from './Order_info'
    import Top from './Top'

    export default {
        name: 'Main',
        data() {
            return {
                select_list:[],
                order_list:[],
                top_list:[],
            }
        },
        components:{
            AddOrder,
            Product_table,
            Order_info,
            Top,
        },
        mounted() {
            // 掛載完DOM 執行生命週期函數 mounted 請求商品數據
            // 透過 axios 發送多個請求
            axios.all([
                axios.get('http://127.0.0.1:8000/api/Product_info/'),
                axios.get('http://127.0.0.1:8000/api/Orderinfo/'),
                axios.get('http://127.0.0.1:8000/api/Topinfo/'),
            ])
            .then(axios.spread((SelectResp,OrderResp,TopResp)=>{
                this.select_list = SelectResp.data
                this.order_list = OrderResp.data
                this.top_list = TopResp.data
            }))
            // 設置全局事件總線去讓 AddOrder 點擊後修改數組 select_list 數量及新增訂單資訊
            this.$bus.$on('update_select_list',this.update_select_list)
            // 設置全局事件總線 讓 Order_info 點擊刪除訂單刪除
            this.$bus.$on('delete_order_list',this.delete_order_lits)
        },
        methods: {
            update_select_list({product_id,product_amount}){
                this.select_list.forEach(item=>{
                    if(item.product_id===product_id){
                        item.stock_pcs -= product_amount
                    }
                    // 新增數據重新請求(訂單數據，和 Top 數據)
                    axios.all([
                        axios.get('http://127.0.0.1:8000/api/Orderinfo/'),
                        axios.get('http://127.0.0.1:8000/api/Topinfo/'),
                    ]).then(axios.spread((OrderResp,TopResp)=>{
                        this.order_list = OrderResp.data
                        this.top_list = TopResp.data
                    }))
                })
                // 重新發送請求獲取訂單數據
                // 獲取 訂單數據
                axios.get('http://127.0.0.1:8000/api/Orderinfo/')
                .then(
                    res=>{
                        this.order_list = res.data
                    }
                )
            },
            delete_order_lits({id,products,qty}){
                // 篩選 item.id != id(子組件的id)
                this.order_list = this.order_list.filter(item=> item.id != id)
                // 修改 select 數量
                this.select_list.forEach(item=>{
                    if(item.product_id===products.product_id){
                        if(item.stock_pcs===0){
                            setTimeout(() => {
                                alert(`商品:${products.product_id}又有庫存囉!!!`)
                            },1000);
                        }
                        item.stock_pcs += qty
                    }
                    // 重新請求 Top 的排序數據
                    axios.get('http://127.0.0.1:8000/api/Topinfo/')
                    .then(
                        res=>{
                            this.top_list = res.data
                        }
                    )
                })
            }
        },
    };
</script>

<style lang="scss" scoped>
 .main{
     width: 100%;
     margin: 0px auto;
 }
</style>