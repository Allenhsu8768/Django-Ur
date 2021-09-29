<template>
    <div class="main">
        <AddOrder :select_list="select_list"/>
    </div>
</template>

<script>
    import axios from 'axios'
    import AddOrder from './AddOrder'
    export default {
        name: 'Main',
        data() {
            return {
                select_list:[],
            }
        },
        components:{
            AddOrder,
        },
        mounted() {
            // 掛載完DOM 執行生命週期函數 mounted 請求商品數據
            axios.get('http://127.0.0.1:8000/api/Product_info/')
            .then(
                res=>{
                    this.select_list = res.data
                }
            )
        },
    };
</script>

<style lang="scss" scoped>
 .main{
     width: 100%;
     margin: 0px auto;
 }
</style>