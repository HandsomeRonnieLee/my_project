<template>
  <div class="userStart">
    <el-form ref="form"  label-width="120px" class="top">
      <el-form-item label="已有账号">
        <el-button type="success" @click="goLogin">登陆</el-button>
      </el-form-item>
      <el-form-item label="没有账号">
        <el-button type="primary" @click="goRegister">注册</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>


export default {

  name: 'userStart',
  data () {
    return {
      
    }
  },
  methods:{
    goLogin:function(){
      this.$router.push({path:"/login"});
    },
    goRegister:function(){
      this.$router.push({path:"/register"});
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.top{
  margin-top: 200px;
}
.text-center{
  line-height: 100%;
}
</style>
