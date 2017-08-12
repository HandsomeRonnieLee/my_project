<template>
  <div class="register">
    <el-row>
      <el-col :span="24">
        <p>注册</p>
      </el-col>
    </el-row>
    <el-form ref="form" :model="form" :rules="rule" label-position="left" label-width="80px">
      <el-form-item label="姓名" prop="uname">
        <el-input v-model="form.uname" placeholder="请输入姓名"></el-input>
      </el-form-item>
      <el-form-item label="身份证" prop="idCard">
        <el-input v-model="form.idCard" placeholder="请输入身份证"></el-input>
      </el-form-item>
      <el-form-item label="手机号码" prop="telephone">
        <el-input v-model="form.telephone" placeholder="请输入手机号码"></el-input>
      </el-form-item> 
      <el-form-item label="密码" prop="upwd">
        <el-input type="password" v-model="form.upwd" placeholder="请输入6-18位密码"></el-input>
      </el-form-item>
      <el-form-item label="确认密码" prop="sureupwd">
        <el-input type="password" v-model="form.sureupwd" placeholder="请确认密码"></el-input>
      </el-form-item>      
      <el-form-item    label="绑定邮箱" prop="email">
        <el-input type="email" v-model="form.email" placeholder="请输入邮箱"></el-input>
      </el-form-item>
      <el-form-item class="text-left">
        <el-button type="primary" @click="addUser('form')">确定</el-button>
        <el-button @click="goBack">取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>


export default {

  name: 'register',
  data() {
    var validatePassName = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请输入用户名'));
        } else {
          if (this.form.name !== '') {
            
          }
          callback();
        }
      };
      var validatePassId = (rule, value, callback) => {
          var reg=/^\d{15}(\d\d[0-9Xx])?$/;
        if (value === '') {
          callback(new Error('请输入身份证'));
        } else if (reg.test(value)==false) {
          callback(new Error('身份证格式不正确!'));
        } else {
          callback();
        }
      };
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
      var validatePassSupwd = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请再次输入密码'));
        } else if (value !== this.form.upwd) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      var validatePassEmail = (rule, value, callback) => {
        var reg=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/; 
        if (value === '') {
          callback(new Error('请输入邮箱'));
        } else if (reg.test(value)==false) {
          callback(new Error('邮箱格式不正确'));
        } else {
          callback();
        }
      };
      return {
        form: {
          uname: '',
          idCard: '',
          telephone: '',
          upwd: '',
          sureupwd:'',
          email: '' 
        },
        rule: {
          uname: [
            { validator: validatePassName, trigger: 'blur' }
          ],
          idCard: [
            { validator: validatePassId, trigger: 'blur' }
          ],
          telephone: [
            { validator: validatePassTel, trigger: 'blur' }
          ],
          upwd: [
            { validator: validatePassUpwd, trigger: 'blur' }
          ],
          sureupwd: [
            { validator: validatePassSupwd, trigger: 'blur' }
          ],
          email: [
            { validator: validatePassEmail, trigger: 'blur' }
          ]
        }
      }
    },
    methods:{
      addUser:function(form){
        
          this.$refs[form].validate((valid)=>{
            if(valid){
              var uname=this.form.uname;
              var idCard = this.form.idCard;
              var telephone= this.form.telephone;
              var upwd = this.form.upwd;
              var email = this.form.email;
              
              this.$http.post('/api/user/addUser',{uname:uname,idCard:idCard,
                telephone:telephone,upwd:upwd,email:email  
              },{}).then((response)=>{
                this.$alert('注册成功', '提示', {
                confirmButtonText: '确定'
                });
              })
            }else{
              return false;
            }
          });
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

</style>
