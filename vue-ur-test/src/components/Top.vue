<template>
    <div class="Top_contaniner">
        <transition
        appear
        name="animate__animated animate__bounce"
        enter-active-class="animate__flash"
        leave-active-class="animate__backOutDown">
            <h2>Top3</h2>
        
        </transition>

        <table class="Top_table">
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Product_ID</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="item,index in top_list" :key="item.id">
                    <th v-if="index===0"><span class="Top1"></span></th>
                    <th v-else-if="index===1"><span class="Top2"></span></th>
                    <th v-else><span class="Top3"></span></th>
                    <th>{{item.product_id}}</th>
                    <th>{{item.price}}</th>

                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
export default {
    name: 'Top',
    props:['top_list'],
};
</script>

<style lang="scss" scoped>
    @import '../assets/scss/Top.scss'
</style>