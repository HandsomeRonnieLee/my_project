<template>
  <div>
    <el-row type="flex" class="bg-blue footer" justify="space-around">
      <el-col :span="6">
        <el-button type="primary" title="主页" @click="goHome">
          <i class="el-icon-menu"></i><span class="footer-button">Home</span>
        </el-button>
      </el-col>
      <el-col :span="6">
        <el-button  type="primary" title="List" @click="goCollection">
          <i class="el-icon-star-on"></i><span class="footer-button">Collection</span>
        </el-button>
      </el-col>
      <el-col :span="6">
        <el-button  type="primary" title="Setting" @click="goSetting">
          <i class="el-icon-setting"></i><span class="footer-button">User</span>
        </el-button>
      </el-col>
      
    </el-row>
  </div>

</template>

<script>
export default {
  name: 'footer',
  data () {
    return {

    }
  },
  methods:{
    goHome:function(){
      this.$router.push({path:"/"})
    },
    goCollection:function(){
      this.$router.push({path:"/collection"})
    },
    goSetting:function(){
      this.$router.push({path:"/user"})
   }

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h2 {
  font-weight: normal;
}
.bg-blue{
background:#20A0FF;
}

.footer{
  position:fixed;
    bottom:0;
    left:0;
    height:60px;
    width:100%;
    line-height:60px;
}
.footer-button{
  display: block;
}

</style>
