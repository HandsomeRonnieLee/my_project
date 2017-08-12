<template>
  <div class="order">
    <el-form ref="form" :model="form" label-position="left" label-width="80px">
      <el-form-item label="姓名">
        <el-input v-model="form.name" placeholder="请输入姓名"></el-input>
      </el-form-item>
      <el-form-item label="电话">
        <el-input v-model="form.phone" placeholder="请输入电话"></el-input>
      </el-form-item>
      <el-form-item label="密码">
        <el-input type="password" v-model="form.pwd" placeholder="请输入密码"></el-input>
      </el-form-item>
      <el-form-item label="提货地址">
        <el-input :disabled="true" type="textarea" v-model="form.addr" 
        placeholder="成都天府广场11号城市之心1楼11号大众4S店"></el-input>
      </el-form-item>
      <el-form-item label="定金" class="earnest">
        <label for="earnest">
          <span  name="earnest">5000</span><span>元</span>
          <span class="tips">定金为成交金额的5%</span>
        </label>
      </el-form-item>
      <el-form-item class="btns">
        <el-button type="primary" @click="onSubmit">确定</el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>


export default {

  name: 'order',
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
        }
      }
    },
    methods: {
      onSubmit() {
        console.log('submit!');
      }
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.earnest{
  text-align: left;
}
.tips{
  margin: 0;
  padding: 0;
  padding-left: 1rem;
  font-size: 0.5rem;
  color: red;
}
.btns{
  text-align: left;
  
}
</style>
