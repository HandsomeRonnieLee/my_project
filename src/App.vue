<template>
  <div id="app">
    <header-component></header-component>
    
    <router-view ></router-view>

    <footer-component></footer-component>
  </div>
</template>

<script>
import HeaderComponent from './components/header'
import FooterComponent from './components/footer'

export default {
components:{HeaderComponent,FooterComponent},
  name: 'app',
  data () {
    return {
      
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  margin-bottom: 60px;
}
</style>
