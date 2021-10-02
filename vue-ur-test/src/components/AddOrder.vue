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
            <button @click="select_product_info.product_amount++">+</button>

            <input type="number" class="amount_input" 
            v-model.number="select_product_info.product_amount" 
            placeholder="數量" 
            onfocus="this.placeholder=''" 
            onblur="this.placeholder='數量'">

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
        <div v-if="error_list.length > 0" class="error_contrainer">
            <p v-for="error,index in error_list" :key="index">
                {{index+1}}.{{error}}
            </p>
        </div>
    </div>
    
</template>

<script>
    import axios from 'axios'
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
                error_list:[],
            }
        },
        // 接收父組件 main 請求的產品數據
        props:['select_list'],
        methods: {
            // 減少數量
            deincrement(){
                this.select_product_info.product_amount --;
                if(this.select_product_info.product_amount<0){
                    alert('數量不可輸入負數!!!')
                    this.select_product_info.product_amount = 0;
                }
            },
            //驗證表單資訊
            checkorder(){
                this.error_list = []
                // 
                if(!(this.select_product_info.product_id)){
                    this.error_list.push('請選擇商品ID。')
                }
                if(!(this.select_product_info.product_amount)){
                    this.error_list.push('請輸入商品數量。')
                }
                if(!(this.select_product_info.customer_id)){
                    this.error_list.push('請輸入用戶ID。')
                }
                return this.error_list.length <= 0
            },
            // 發送axios 請求後端驗證資訊回傳
            sendordermsg(){
                // 如果輸入資料驗證成功
                if(this.checkorder()){
                    axios.post('http://127.0.0.1:8000/api/Addorder/',this.select_product_info)
                    .then(
                        res =>
                            {
                                // 如果新增訂單成功,調用 main 組件設置綁定事件
                                if(res.data.status===200){
                                    this.$bus.$emit('update_select_list',
                                        {
                                            'product_id':this.select_product_info.product_id,
                                            'product_amount':this.select_product_info.product_amount,
                                        }                                    
                                    );

                                    // // 將用戶輸入的數據清空
                                    this.select_product_info.product_id = ''
                                    this.select_product_info.product_amount = ''
                                    this.select_product_info.customer_id = ''
                                    this.select_product_info.isVip = false
                                }
                                alert(res.data.msg)
                            }
                        )
                }
            }
        },
        // 監視數量，如果為負數修改為0
        watch:{
            'select_product_info.product_amount':{
                deep:true,
                handler(value){
                    if(value < 0){
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