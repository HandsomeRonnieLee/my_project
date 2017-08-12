<template>
  <div class="evaluate">
    <el-row class="title">
      <el-col :span="12">
        <div class="eval-title">
          用户评价
        </div>
      </el-col>
      <el-col :span="12">
        <div class="eval-more">更多> </div>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <ul v-for="item in valuation" :key="item.uname">
          <li>
            <el-row type="flex" justify="start" >
              <el-col :span="12" class="text-left">
                <b class="customer">{{item.uname}}</b>
              </el-col>
              <el-col :span="12" class="text-right">
                  <span class="save">省</span><span class="save-count">{{item.save}}</span>
              </el-col>
            </el-row>
            <el-row type="flex" justify="center">
              <el-col :span="24">
                <p class="cus-val">{{item.evaluate}}</p>
              </el-col>
            </el-row>
            <el-row class="cus-val-date">
              <el-col :span="12" class="text-left">
                <span>{{item.evalDate}}</span>
              </el-col>
              <el-col :span="12" class="text-right">
                <b>赞</b><span>{{item.agree}}</span>
              </el-col>
            </el-row>
            <el-row>
              <el-col :span="24">
                <hr class="cut-off">
              </el-col>
            </el-row>
          </li>
        </ul>
      </el-col>
    </el-row>
    <el-row class="evaluate-all">
      <el-col :span="24">
        全部评价（{{evaluateAll}}）
      </el-col>
    </el-row>
  </div>
</template>

<script>


export default {

  name: 'evaluate',
  data () {
    return {
      valuation: [{"uname":"石先生","save":"2.20万",
      "evaluate":"好平台，值得推荐，热情洋溢，对工作热情积极认证。",
      "evalDate":"2017-7-7","agree":"8"},{"uname":"lee先生","save":"2.30万",
      "evaluate":"好平台，值得推荐，热情洋溢，对工作热情积极认证。",
      "evalDate":"2017-7-7","agree":"7"},{"uname":"Mike先生","save":"2.40万",
      "evaluate":"好平台，值得推荐，热情洋溢，对工作热情积极认证。",
      "evalDate":"2017-7-7","agree":"5"},{"uname":"Micheal先生","save":"2.50万",
      "evaluate":"好平台，值得推荐，热情洋溢，对工作热情积极认证。",
      "evalDate":"2017-7-7","agree":"3"},{"uname":"Jason先生","save":"2.70万",
      "evaluate":"好平台，值得推荐，热情洋溢，对工作热情积极认证。",
      "evalDate":"2017-7-7","agree":"1"}],
      evaluateAll:101
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.title{
  margin-bottom: 1rem;
}
.eval-title{
  text-align: left;
  font-size: 1rem;
  font-weight: bold;
}
.eval-more{
  text-align: right;
}
ul{
  list-style: none;
  padding: 0;
  margin: 0;
}
li{
  padding-top: 0rem;
}
.text-left{
  text-align: left;
}
.text-right{
  text-align: right;
}
.save{
  border: 1px solid orangered;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  padding: 0.2rem;
  font-size: 0.6rem;
  box-sizing: border-box;
  color: orangered;
}
.save-count{
  border: 1px solid orangered;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
  box-sizing: border-box;
  background: orangered;
  font-size: 0.6rem;
  color: white;
  padding: 0.2rem;
}
.cus-val{
  padding-top: 0.3rem;
  padding-bottom: 0.3rem;
  text-align: left;
  font-size: 0.8rem;
}
.cus-val-date{
  font-size: 0.8rem;
}
.customer{
  font-size: 0.8rem;
}
.cut-off{
  margin-top:1rem;
  margin-bottom: 1rem; 
}
.evaluate-all{
  background:lightblue;
  border-radius: 5px;
  padding: 0.3rem
}
</style>
