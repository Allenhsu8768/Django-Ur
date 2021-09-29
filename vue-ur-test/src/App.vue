<template>
  <div id="app">
    <!-- 頭部 header -->
    <Header/>
    <!-- 主體 main -->
    <Main/>
  </div>
</template>

<script>
  import Header from './components/Header'
  import Main from './components/Main'



  export default {
    name: 'App',
    components:{
      Header,
      Main,
    }
  }
</script>

<style lang="scss">
  @import './assets/scss/App.scss'
</style>
