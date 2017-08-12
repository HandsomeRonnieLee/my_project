<template>
  <div class="login">
    <el-row>
      <el-col :span="24">
        <p>登陆</p>
      </el-col>
    </el-row>
    <el-form ref="form" :rules="rule" :model="form" label-position="left" label-width="80px">
      <el-form-item label="手机号码" prop="telephone">
        <el-input v-model="form.telephone" placeholder="请输入手机号码"></el-input>
      </el-form-item>
      <el-form-item label="密码" prop="upwd">
        <el-input type="password" v-model="form.upwd" placeholder="请输入密码"></el-input>
      </el-form-item>
      <el-form-item label="验证码">
        <el-input type="text" v-model="form.check" placeholder="请确认验证码"></el-input>
        <div class="">ABCD</div>
      </el-form-item>
      <el-form-item class="text-left">
        <el-button type="primary" @click="onLogin">登陆</el-button>
        <el-button @click="goBack">取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>


export default {

  name: 'login',
  data() {
    var validatePassTel = (rule, value, callback) => {
        var reg=/(\+86|0086)?\s*1[34578]\d{9}/;
        if (value === '') {
          callback(new Error('请输入手机号码'));
        } else if (reg.test(value)==false) {
          callback(new Error('手机号码格式错误!'));
        } else {
          callback();
        }
      };
      var validatePassUpwd = (rule, value, callback) => {
        var reg=/^\w{6,18}$/;
        if (value === '') {
          callback(new Error('请输入密码'));
        } else if (reg.test(value)==false) {
          callback(new Error('密码格式错误'));
        } else {
          callback();
        }
      };
      return {
        form: {
          telephone: '',
          upwd:''
         
        },
        rule:{
          telephone:[{
            validator: validatePassTel, trigger: 'blur'
          }],
          upwd:[{
            validator: validatePassUpwd, trigger: 'blur'
          }]
         
        }
      }
    },
    methods:{
      onLogin:function(){
        var telephone= this.form.telephone;
        var upwd = this.form.upwd;
        this.$http.post('/api/user/loginOn',{
        telephone:telephone,upwd:upwd},{}).then((response)=>{
          if(response.bodyText.code>0){
            this.$router.push({path:'/customer'});
          }else{
            return false;
          }
        })
      },
      goBack:function(){
        this.$router.push({path:"/user"});
      }
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.text-left{
  text-align: left;
}
.text-right{
  text-align: right;
}
</style>
