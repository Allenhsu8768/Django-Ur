<template>
    <div class="addorder">
        <!-- select product -->
        <select v-model="select_product_info.product_id" class="select-product">
            <option disabled value="">Select-Product</option>
            <option v-for="product in select_list" 
            :key="product.id" 
            :value="product.product_id">
            {{product.product_id}}</option>
        </select>
        <!-- amount 、 customer、isVip  -->
        <div class="product-amount">
            <button @click="increment">+</button>

            <input type="number" class="amount_input" 
            v-model.number="select_product_info.product_amount" 
            placeholder="請輸入數量" 
            onfocus="this.placeholder=''" 
            onblur="this.placeholder='請輸入數量'">

            <button @click="deincrement">-</button>

            <input type="text" 
            class="entercustomerid" 
            v-model="select_product_info.customer_id" 
            placeholder="請輸入用戶ID"
            onfocus="this.placeholder=''" 
            onblur="this.placeholder='請輸入用戶ID'"
            >
            <input type="checkbox" v-model="select_product_info.isVip" id='1' class="isvipcheck"><label for="1">是否為Vip用戶</label>
        </div>
        <button class="sendbtn"  @click="sendordermsg">新增訂單</button>
    </div>
    
</template>

<script>
    export default {
        name: 'Addorder',
        data() {
            return {
                select_product_info:{
                    product_id:'',
                    product_amount:'',
                    customer_id:'',
                    isVip:false,
                },
                
            }
        },
        // 接收父組件 main 請求的產品數據
        props:['select_list'],
        methods: {
            // 新增數量
            increment(){
                this.select_product_info.product_amount ++;
            },
            // 減少數量
            deincrement(){
                this.select_product_info.product_amount --;
                if(this.select_product_info.product_amount<0){
                    alert('數量不可輸入負數!!!')
                    this.select_product_info.product_amount = 0;
                }
            },
            sendordermsg(){
                console.log(this.select_product_info)
                this.select_product_info.product_id=''
                this.select_product_info.product_amount=''
                this.select_product_info.customer_id=''
                this.select_product_info.isVip = false
            }
        },
        // 監視數量，如果為負數修改為0
        watch:{
            'select_product_info.product_amount':{
                deep:true,
                handler(value){
                    if(value < 0 || !(value)){
                        alert('數量輸入有誤!')
                        this.select_product_info.product_amount=0
                    }
                }
            }
        }
    };
</script>

<style lang="scss" scoped>
    @import '../assets/scss/AddOrder'
</style>