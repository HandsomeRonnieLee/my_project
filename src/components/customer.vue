<template>
  <div class="customer">
    <el-row class="my-account">
      <el-col :span="8" :offset="4">
        <div class="table">
          <div class="table-cell">
            <span>我的账户</span>
          </div>
        </div>
        
      </el-col>
      <el-col :span="8" :offset="16">
        <el-button name="recharge" type="primary">注销</el-button>
      </el-col>
    </el-row>
    <el-form ref="form" :model="form" label-position="left" label-width="80px">
      <el-form-item label="姓名" class="text-left">
        <label for="uname"><div name="uname">{{customerInfo.uname}}</div></label>
      </el-form-item>
      <el-form-item label="电话" class="text-left">
        <label for="telephone"><div name="telephone">{{customerInfo.telephone}}</div></label>
      </el-form-item>
      <el-form-item label="密码">
        <el-input type="password" v-model="form.pwd" placeholder="****" :disabled="true"></el-input>
      </el-form-item>
      <el-form-item label="修改密码" class="text-left">
        <el-button name="changeUpwd" type="primary">修改密码</el-button>
      </el-form-item>
      <el-form-item label="账户余额" class="text-left">
        <label for="balance" >
          <el-col :span="16">
            <div  name="balance" class="balance text-right">5000.00</div>
          </el-col>
          <span class="RMB">元</span>
        </label>
      </el-form-item>
      <el-form-item label="充值" class="text-left">
        <label for="recharge" >
          <el-button name="recharge" type="primary">充值</el-button>
        </label>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>


export default {

  name: 'customer',
  data() {
      return {
        form: {
          name: '',
          region: '',
          date1: '',
          date2: '',
          delivery: false,
          type: [],
          resource: '',
          desc: ''
        },
        customerInfo:{"uname":"lee","telephone":"132456789"}
      }
    },
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.my-account{
  position: relative;
}
.table-box{
  position: absolute;
  width: 50%;
  height: 100%;
}
.table{
  display: table;
    width: 100%;
    height: 100%;
    vertical-align: middle;
    text-align: center;
}
.table-cell{
  display: table-cell;
    vertical-align: middle;
    text-align: center;
    width: 100%;
}
.balance{
  border: 1px solid #eee;
  padding: 0rem 0.3rem;
}
.RMB{
  padding: 0.2rem;
}
.text-left{
  text-align: left;
}
.text-right{
  text-align: right;
}
</style>
